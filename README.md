# Rekall_miniProject
Memory forensics project using Rekall to analyze RAM dumps. Includes setup, usage, and memory acquisition via DumpIt and FTK Imager.

# Rekall Memory Forensics Tool – Assignment 4

## 🛡️ Overview
This project explores the installation, configuration, and usage of **Rekall**, a powerful open-source memory forensics tool. We also briefly discuss how to acquire memory dumps using tools like **DumpIt** and **FTK Imager**, and analyze them using Rekall for investigative purposes.

---

## 🔧 Step 1: Environment Setup

### ✅ Requirements:
- Python 3.6 to 3.8 (Rekall is not compatible with Python 3.9+)
- pip (Python package manager)
- Virtual environment (optional but recommended)

### 📥 Installation Steps:
1. Create and activate a virtual environment:
    ```bash
    python3 -m venv rekall-env
    source rekall-env/bin/activate
    ```

2. Upgrade pip:
    ```bash
    pip install --upgrade pip
    ```

3. Install Rekall:
    ```bash
    pip install rekall
    ```

4. Verify installation:
    ```bash
    rekall
    ```

---

## 🧪 Step 2: Acquiring a Memory Dump

### 🔹 Option 1: Using DumpIt (for Windows)
**DumpIt** is a lightweight tool that collects RAM dumps from a live system.

#### Usage:
- Run `DumpIt.exe` as Administrator.
- It will create a `.raw` memory dump file in the same directory.

Download link: https://www.comae.com/

### 🔹 Option 2: Using FTK Imager
FTK Imager is a GUI-based tool that can also capture memory.

#### Usage:
1. Launch FTK Imager.
2. Go to `File > Capture Memory`.
3. Choose the output path and optionally include the pagefile.
4. Click **Capture Memory**.

Download link: https://accessdata.com/product-download/ftk-imager-version-4-7-1

---

## 🧠 Step 3: Sample Memory Image (for Testing)

If you're not using a live system, you can use a sample image:

```bash
wget https://github.com/volatilityfoundation/sample-images/raw/master/Win7SP1x64.raw -O memory.img
```

---

## 🔍 Step 4: Analyze Memory Image Using Rekall

To start analyzing:
```bash
rekall -f memory.img
```

### Common Rekall Plugins:
- `pslist`: List running processes
- `modules`: Show kernel modules
- `malfind`: Detect suspicious code injections
- `netstat`: Show network connections
- `handles`: View open handles

Example:
```bash
rekall -f memory.img --profile=Win7SP1x64 pslist
```

---

## 🧾 Step 5: Documentation of Findings

### ✔️ Setup Steps:
- Installed Rekall in a Python 3.6 environment
- Downloaded and used a sample memory image
- Tested with `rekall -f memory.img`

### ✔️ Configuration:
- Ensured correct Python version (3.6–3.8)
- Used `memory.img` as default test input

### ✔️ Use Case:
**Scenario:** A machine is suspected of malware infection. We use Rekall to analyze a memory dump captured using DumpIt or FTK Imager.

**Action:** Load the memory image and apply plugins like `pslist`, `malfind`, `modules`, and `netstat` to identify anomalies.

### ✔️ Issues Encountered:
- Rekall is incompatible with Python 3.10+
- Memory image format must be supported (raw or similar)
- DumpIt only works on Windows
- FTK Imager requires GUI and admin privileges

---

## 📁 Project Structure

```
rekall-project/
├── README.md
├── analyze_sample.sh
└── demo/
    └── screenshot.png (placeholder or actual screenshot)
```

---

## 🖼️ Demo

Include a screenshot of your Rekall terminal output in the `demo/` folder.

---

## 🙌 Credits

- **Rekall** by Google: https://github.com/google/rekall
- **DumpIt** by Comae Technologies: https://www.comae.com/
- **FTK Imager** by AccessData: https://accessdata.com/product-download/ftk-imager-version-4-7-1
- **Sample Memory Images**: https://github.com/volatilityfoundation/sample-images

---

## 📜 License

This project is created for educational purposes as part of Assignment 4 – Open Source Cybersecurity Tool Demonstration.

