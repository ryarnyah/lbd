# MCTargetDesc/CMakeLists.txt
add_llvm_library(LLVMCpu0Desc
  Cpu0MCAsmInfo.cpp
  Cpu0MCTargetDesc.cpp
  )

add_dependencies(LLVMCpu0Desc Cpu0CommonTableGen)
