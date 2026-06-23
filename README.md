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
<img width="1920" height="1080" alt="Screenshot from 2026-05-21 15-05-43" src="https://github.com/user-attachments/assets/fd47b2b0-80de-468a-8837-9f18f477a77f" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-21 15-13-31" src="https://github.com/user-attachments/assets/5d930a8c-4477-4f3e-a08d-e628c069befe" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-21 15-13-47" src="https://github.com/user-attachments/assets/da824889-dd35-4363-8d4d-99dc1f7b7610" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-21 15-14-17" src="https://github.com/user-attachments/assets/ee01ae84-2fcf-4d6d-8671-30fc670b00af" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-21 15-14-43" src="https://github.com/user-attachments/assets/441b692c-ea26-4109-9070-dddfbc66adc0" />



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
  
 <img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-00-33" src="https://github.com/user-attachments/assets/b27a41df-559e-41fd-80bd-9d1eac1a627e" />
 <img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-00-59" src="https://github.com/user-attachments/assets/bfecf5fc-bbe1-4b65-8544-fd425e325741" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-01-15" src="https://github.com/user-attachments/assets/6d8caad4-74da-4734-bc83-2e14c195f2cc" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-01-47" src="https://github.com/user-attachments/assets/691e162c-cb2c-488f-be88-5cb515adf467" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-12-40" src="https://github.com/user-attachments/assets/f112449f-c3a5-4dae-8a2b-2f1f48aaf7b8" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-12-57" src="https://github.com/user-attachments/assets/c7c2ebe5-a804-4a3f-b5dc-b91ff12b0900" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-13-15" src="https://github.com/user-attachments/assets/e654ec09-0d49-4a45-93ab-9ef7396d511a" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 10-13-45" src="https://github.com/user-attachments/assets/27224c13-5b2f-4193-8d4d-7ed00b958a8b" />




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


<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-08-25" src="https://github.com/user-attachments/assets/cb1c2fc2-af87-4b75-ac67-55596e8bee7d" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-09-57" src="https://github.com/user-attachments/assets/8ef16d4a-a000-45f6-b1c9-c8833837bddd" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-12-49" src="https://github.com/user-attachments/assets/347e4d0a-4dc9-411c-b6dd-e5ff014383f9" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-14-50" src="https://github.com/user-attachments/assets/2a8d1ef0-5eb2-4c29-8f5c-67ea678da290" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-15-21" src="https://github.com/user-attachments/assets/484961ff-88fb-40bd-8b49-a9180e167f73" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-16-09" src="https://github.com/user-attachments/assets/ababfaf4-81a7-4ad3-9a49-925d8fb415af" />
<img width="1920" height="1080" alt="Screenshot from 2026-05-22 11-18-44" src="https://github.com/user-attachments/assets/4765953b-bd73-43d2-8107-a8e47ba68bd0" />


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
