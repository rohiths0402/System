# Systems

**Author:** Rohith S — rohiths0402@outlook.com  
**Location:** Pollachi, India

This repository is a curated collection of systems programming, storage, and backend projects implemented in **C** (and supporting scripts). It demonstrates practical work in OS internals, memory management, file I/O, concurrency, IPC, storage engine primitives (WAL, page & buffer management), and performance analysis. The portfolio complements my resume and highlights projects I can present in interviews. :contentReference[oaicite:0]{index=0}

---

## Quick links
- 🔧 **Run / Build instructions:** See each folder's `README.md` for details.  
- 📂 **Main folders:** `storage-engine/`, `memory-management/`, `data-structures/`, `concurrency-ipc/`, `file-io/`, `profiling/`, `algorithms-prep/`  
- 📬 **Contact:** rohiths0402@outlook.com

---

## What you’ll find here (high level)

### Storage & Database Internals
Implementations and experiments around durability and correctness:
- Write-Ahead Logging (WAL)
- Buffer & Page Manager
- Crash recovery (mmap + fsync)
- Simple storage-layer prototypes

### Memory Management
- Memory pools and custom allocators
- Small virtual-memory experiments and allocation strategies

### Data Structures
- Bloom filter, hash table, skip list, AVL and binary trees
- Focus on C implementations and tests

### Concurrency & IPC
- POSIX threading examples
- Synchronization primitives (mutexes, spinlocks, RW locks)
- Shared memory, message queues, pipes, and sockets examples

### File I/O & Profiling
- Low-level file operations (open/read/write/lseek/mmap)
- File-cache prototypes
- Profiling experiments using perf / tracing (notes & sample outputs)

### Algorithm Practice
- LeetCode / practice problems (kept separate from portfolio code)

---

## How to use this repository (quick demo)
1. Clone the repo:
   ```bash
git clone git@github.com:rohiths0402@outlook.com/system.git
