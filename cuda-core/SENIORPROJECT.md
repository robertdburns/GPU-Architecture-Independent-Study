# 32 CUDA Core SM Based on Nvidia Fermi Architecture

- 32x Cuda Cores
	- Tag (Warp ID, dest reg, etc)
	- Pipelined INT ALU
		- FMA (fused Multiple Add) Instruction
		- Multiply
		- Divide
	- Pipeline Floating Point ALU
		- IEEE 754-2008 floating-point standard
		- Pipeline
- Instruction Cache
- Warp Scheduler (Lab 1 - Round Robin)
	- 32-bit Warp Scheduler Mask
- Dispatch Unit
- 16x Load Store Units
- 4x Special Function Units
- Shared L1 Cache
- GDSII full flow (STA, Macros, etc)


https://www.nvidia.com/content/PDF/fermi_white_papers/NVIDIA_Fermi_Compute_Architecture_Whitepaper.pdf 