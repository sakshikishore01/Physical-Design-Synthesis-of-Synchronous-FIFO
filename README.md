# Physical-Design-Synthesis-of-Synchronous-FIFO

## Project Overview

Designed and verified a **500 MHz Synchronous FIFO** using **Verilog HDL**, **Cadence Xcelium**, and **SimVision** for waveform-based debugging of pointer and flag logic.
Performed RTL synthesis using **Cadence Genus** with custom **SDC timing constraints**, resolving scan-cell mapping issues during synthesis.
Executed the complete **physical design flow** in **Cadence Innovus**, including floorplanning, power planning, placement, clock-tree synthesis, routing, and timing closure using **OCV** and **CPPR** analysis.

---

## Project Description

This repository demonstrates the complete **RTL-to-GDSII implementation flow** of a high-speed **Synchronous FIFO memory core** using a **90nm Process Design Kit (PDK)**. The design targets a clock frequency of **500 MHz (2.0 ns clock period)** and was implemented using the **Cadence digital design toolchain** on a **Red Hat Enterprise Linux (RHEL)** environment.

The FIFO architecture performs both **read** and **write** operations synchronously using a single clock domain.

---

## Key Features

### FIFO Architecture

* Synchronous single-clock FIFO design
* Independent read and write pointer management
* Full and empty flag generation logic
* Overflow and underflow protection mechanisms
* Cycle-accurate data transfer verification

### Pointer & Control Logic

* Gray-coded pointer tracking
* Boundary condition detection
* Safe memory indexing
* Hardware protection against invalid read/write operations

---

## Toolchain & Technology Stack

| Stage                 | Tool                              |
| --------------------- | --------------------------------- |
| Front-End Simulation  | Cadence Xcelium                   |
| Waveform Debugging    | Cadence SimVision                 |
| RTL Synthesis         | Cadence Genus                     |
| Physical Design       | Cadence Innovus                   |
| Technology Node       | 90nm PDK                          |
| Constraint Format     | Synopsys Design Constraints (SDC) |
| Operating Environment | RHEL Linux                        |

---

# Design Flow

## 1. Functional Verification

### Tools Used

* Cadence Xcelium
* Cadence SimVision

### Verification Tasks

* Developed a stress-test testbench for FIFO operations
* Verified pointer increment/decrement behavior
* Validated full and empty flag assertions
* Performed waveform debugging using SimVision
* Confirmed cycle-accurate data transfer with zero data corruption

---

## 2. RTL Synthesis

### Tool Used

* Cadence Genus

### Synthesis Tasks

* Synthesized behavioral Verilog RTL into gate-level netlist
* Integrated 90nm standard-cell timing libraries
* Applied custom SDC constraints:

  * 500 MHz clock definition
  * Input/output delays
  * Pin-load capacitance constraints
  * Clock uncertainty margins
* Debugged and resolved scan-cell mapping anomalies
* Generated clean structural netlist output

---

## 3. Physical Design Implementation

### Tool Used

* Cadence Innovus

### Physical Design Stages

#### Floorplanning

* Defined core and die dimensions
* Configured I/O pin placement
* Created placement blockages and utilization targets

#### Power Planning

* Implemented power rings and power stripes
* Built dual-layer power grid for stable voltage distribution

#### Placement & CTS

* Standard-cell placement optimization
* Clock Tree Synthesis (CTS)
* Setup and hold timing optimization

#### Routing

* Multi-layer detailed routing
* Congestion reduction and DRC-aware routing

#### Timing Closure

* Enabled:

  * On-Chip Variation (OCV)
  * Common Path Pessimism Removal (CPPR)
* Resolved timing initialization issues
* Achieved timing closure at 500 MHz target frequency

---

# Final Deliverables

## Generated Outputs

* `sync_fifo_final.v`
  Final post-route gate-level netlist including CTS buffers and routed interconnect updates

* `post_route.sdc`
  Updated timing constraints after physical implementation

* Physical Layout Database
  Ready for downstream STA and physical verification flows

---

# Skills Demonstrated

* Verilog RTL Design
* Digital Functional Verification
* Timing-Constrained Synthesis
* SDC Constraint Development
* Physical Design Flow
* Floorplanning & Power Planning
* Placement & Routing
* Clock Tree Synthesis (CTS)
* Timing Closure using OCV & CPPR
* Cadence Toolchain Proficiency
