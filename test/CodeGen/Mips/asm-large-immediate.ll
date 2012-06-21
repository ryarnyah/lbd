; RUNx: llc -march=mipsel < %s | grep 68719476738

; RUN: llc -march=mipsel < %s | FileCheck %s
define void @test() {
entry:
; CHECK: /* result: 68719476738 */
        tail call void asm sideeffect "/* result: ${0:c} */", "i,~{dirflag},~{fpsr},~{flags}"( i64 68719476738 )
        ret void
}
