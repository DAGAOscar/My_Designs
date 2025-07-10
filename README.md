# Digital Design Projects Collection

This repository contains a collection of digital design projects implemented in VHDL and Verilog. Each project is organized in its own directory and includes source code, testbenches, and project configuration files. These projects are suitable for FPGA/ASIC design, simulation, and educational purposes.

## Project Structure

- **ALU/**: Arithmetic Logic Unit (ALU) design and testbenches
- **UART/**: Universal Asynchronous Receiver/Transmitter (UART) implementation with testbenches
- **ProjektSteroPWM/**: PWM controller and related VHDL modules
- **Tuto_prescaler_Debouncer/**: Prescaler and debouncer circuits
- **tutorialsOscarr/**: Various VHDL/Verilog tutorials and example designs
- **fd/**, **Alu.v/**, **tuto4_final/**, **tuto4_zadanie_4 (1)/**, **TutoVHDL_1120_1/**, **TutoVHDL_1120_12222/**: Additional projects and exercises

Each main project folder typically contains:
- `src/` — Source code (VHDL/Verilog)
- `TestBench/` or testbench files — Testbenches for simulation
- `compile/`, `log/`, `synthesis/` — Build, log, and synthesis outputs
- Project files (`.adf`, `.aws`, `.wsp`, `.wsw`, etc.) for design tools

## How to Use

1. **Clone the repository:**
   ```powershell
   git clone https://github.com/your-username/your-repo-name.git
   ```
2. **Open in your preferred HDL IDE** (e.g., Xilinx Vivado, ModelSim, Quartus, etc.)
3. **Navigate to the desired project folder** and import the project files or source code as needed.
4. **Simulate or synthesize** the design using your toolchain.

## Adding to GitHub

1. Initialize a git repository (if not already done):
   ```powershell
   git init
   ```
2. Add all files:
   ```powershell
   git add .
   ```
3. Commit your changes:
   ```powershell
   git commit -m "Initial commit of digital design projects"
   ```
4. Add your remote and push:
   ```powershell
   git remote add origin https://github.com/your-username/your-repo-name.git
   git push -u origin master
   ```

## Notes
- Some folders may contain tool-specific files and logs.
- For each project, refer to the `src/` and `TestBench/` folders for the main design and testbench files.
- Update this README with more details for each project as needed.

---

**Author:** _Your Name_

**License:** _Specify your license here (e.g., MIT, Apache 2.0, etc.)_
