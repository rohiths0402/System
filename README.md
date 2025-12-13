# System — OS Internals, IPC & Systems Programming in C

A collection of **systems-level programs written in C**, created as part of my **hands-on learning and practice of operating system internals**.  
This repository focuses on understanding **how software interacts with the OS kernel** through real implementations rather than theory alone.

The work here covers **process management, memory, file systems, IPC, concurrency, storage concepts, and profiling tools**, aligned with real-world systems and database internals.

---

## 📌 Project Overview

This repository contains **practice programs and experiments** developed while learning **systems programming and OS internals**.  
The goal is to build a strong foundation in:

- Kernel–user space interaction
- Low-level resource management
- Concurrency and synchronization
- Storage and crash consistency concepts

Each topic is explored through **small, focused C programs**.

---

## 📚 Topics Covered

### 🔹 C & Memory Fundamentals
- Pointers and Structs  
- Dynamic Memory Allocation  
- Stack vs Heap  
- Memory Pools and Slab Allocators  
- Valgrind and AddressSanitizer  

---

### 🔹 Data Structures
- Linked Lists and Hash Tables  
- Trees (Basics)  
- Red-Black Trees and AVL Trees  
- B-Trees and B+ Trees  
- Skip Lists and Bloom Filters  
- Expression Trees  

---

### 🔹 File I/O & Storage
- Low-level File Handling (`open()`, `read()`, `write()`, `lseek()`)  
- Memory-Mapped Files (`mmap()`)  
- Direct I/O and Asynchronous I/O (AIO)  
- Write-Ahead Logging (WAL) and `fsync()`  
- Crash Recovery Simulation (WAL + mmap + fsync + AIO)  
- Buffer Pool and Page Replacement Policies  

---

### 🔹 Concurrency & Multithreading
- POSIX Threads (`pthreads`)  
- Mutexes, Spinlocks, and Read-Write Locks  
- Atomic Operations and Memory Barriers  
- Futexes and Condition Variables  

---

### 🔹 Transactions & Consistency
- Transaction Management  
- Two-Phase Locking (2PL)  
- MVCC (Multi-Version Concurrency Control)  
- Deadlock Detection  

---

### 🔹 Inter-Process Communication (IPC)
- Shared Memory (`shmget()`, `shmat()`)  
- Message Queues (`msgget()`, `msgsnd()`, `msgrcv()`)  
- Named Pipes (FIFOs)  
- Unix Domain Sockets  

---

### 🔹 Networking & I/O Models
- BSD Sockets API  
- Non-blocking I/O  
- gRPC and Custom Protocols  

---

### 🔹 Process Management
- `fork()` vs `pthread_create()`  
- `exec()` Family and Process Replacement  
- Signals and Event Handling (`sigaction()`, `kill()`)  
- Timers (`setitimer()`, `clock_gettime()`)  

---

### 🔹 Tooling & Profiling
- System Profiling Tools (`perf`, `strace`, `ltrace`)  
- Advanced Tracing (DTrace / eBPF)  

---

### 🔹 Compilers & Linking
- Static and Dynamic Libraries  
- Flex/Bison – Simple Lexer and Parser  

---

### 🔹 Kernel-Level Programming
- Kernel Module Programming (`init`, `exit`)  

---

## 🛠️ Tech Stack

- **Language:** C  
- **Platform:** Linux  
- **APIs:** POSIX system calls, pthreads  
- **Tools:** GCC, Make, perf, strace, Valgrind  

---

## 🚀 Build & Run

Each program can be compiled individually:

```bash
gcc program_name.c -o program_name
./program_name
```
*(Replace `program_name.c` with the actual source file.)*

---

## 📈 What I Learned

- How user programs interact with the Linux kernel  
- Practical differences between processes and threads  
- How IPC mechanisms work internally  
- Why synchronization is critical in concurrent systems  
- How storage systems ensure durability and recovery  
- How profiling tools help analyze system behavior  

---

## 🔮 Possible Improvements

- Add deeper kernel tracing using eBPF  
- Performance benchmarking for IPC mechanisms  
- More realistic storage engine simulations  
- Improved error handling and robustness  
- Modularization with reusable libraries  

---

## 👤 Author

**Rohith S**  
Systems Engineer | OS Internals & Infrastructure  
GitHub: https://github.com/rohiths0402

gcc program_name.c -o program_name
./program_name
