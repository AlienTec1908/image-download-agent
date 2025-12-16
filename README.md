<p align="center"># 🚀 The PowerShell Workhorse - Silent Image Downloader

<p align="center">
  <img src="cover.png" alt="agent-image-ripper cover" width="50%" style="height: 20rem;">
</p>

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Platform: Windows](https://img.shields.io/badge/Platform-Windows-blue.svg)](https://www.microsoft.com/windows)
[![PowerShell](https://img.shields.io/badge/PowerShell-Required-blue.svg)](https://docs.microsoft.com/powershell/)
[![GitHub stars](https://img.shields.io/github/stars/AlienTec1908/image-download-agent?style=social)](https://github.com/AlienTec1908/image-download-agent/stargazers)

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

---

### ✨ Key Features

| Feature | Description |
|---------|-------------|
| 🤖 Fully Automated | Just copy a URL. The agent detects it, downloads the images, renames them, and stores them automatically. |
| 📋 Clipboard Monitoring | Runs silently in the background, waiting for new gallery links. |
| 🪶 Lightweight & Simple | Pure PowerShell, minimal dependencies, and very fast. |
| 🛡️ Battle-Tested | Refined over **5+ years** of daily use. |
| ⏱️ Continuous | Runs continuously until manually stopped. |

---

### 🎯 Usage

1. **Adjust the paths** inside the script (see configuration below).  
2. **Run the script** in a PowerShell terminal. It will start monitoring in the background.  
3. **Copy the URL** of an image gallery to your clipboard.  
4. **Let it work.** Images are automatically downloaded, uniquely renamed, and moved to your target directory.

<p align="center">
  <img src="demo.gif" alt="agent demo" width="60%">
</p>
*GIF placeholder: shows agent detecting a URL and downloading images automatically.*

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



