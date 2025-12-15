# 🚀 The PowerShell Workhorse - Silent Image Downloader

<p align="center">
  <img src="cover.png" alt="agent-image-ripper cover" width="50%" style="height: 30rem;">
</p>

A battle-tested PowerShell agent that automatically downloads image galleries from your clipboard. Set it, forget it, and let it work.

---

## 🗿 Image Download Agent  
**Start once. Copy a URL. Everything else happens automatically.**

This tool exists to **take work off your plate**, not to demand attention.  
Launch the agent a single time — it then runs quietly in the background and does exactly what it’s meant to do.

📋 **Copy a link**  
🤖 **The agent detects the URL automatically**  
🖼️ **Images are downloaded and stored cleanly**

No interface. No constant configuration. No clicking around.  
It adapts to your workflow instead of interrupting it.

✨ **Why you’ll like it**
- Runs silently in the background  
- Saves time on repetitive tasks  
- Minimalistic, focused, and reliable  
- Perfect for research, documentation, archiving, or content workflows  

This tool doesn’t try to explain itself, enforce a workflow, or sell you anything.  
It simply does its job — **quietly, efficiently, and consistently**.

🧠 Built for people who prefer working over clicking.  
🛠️ A tool, not a toy.

---

### 🎯 Usage

1. **Adjust the paths** inside the script (see configuration below).
2. **Run the script** in a PowerShell terminal. It will start monitoring in the background.
3. **Copy the URL** of an image gallery to your clipboard.
4. **Let it work.** Images are automatically downloaded, uniquely renamed, and moved to your target directory.

---

### 🔧 Configuration

Before running the script for the first time, define your download and destination folders.  
Open the script file and edit the following lines at the top:

```powershell
$meinName    = $env:Username
$Ablageort   = "C:\Users\$meinName\Desktop\YourFinalImageFolder"
$verzeichnis = "C:\Users\$meinName\Desktop\YourDownloadTempFolder"
```

**Pro tip:** Using the `$env:Username` variable keeps the script portable and works across different Windows users.  
It’s recommended to keep this variable and only adjust the folder names (`YourFinalImageFolder`, `YourDownloadTempFolder`).

### 📜 Disclaimer

This tool is intended for personal use to streamline workflows.  
Please respect the copyright and terms of service of the websites you interact with.  
The author assumes no responsibility for misuse.



