# 🚀 The PowerShell Workhorse - Silent Image Downloader

![agent-image-ripper-cover](cover.png)

A battle-tested PowerShell agent that automatically downloads image galleries from your clipboard. Set it, forget it, and let it work.

---

### ✨ Core Features

*   **🤖 Fully Automated:** Just copy a URL. The agent detects it, grabs the images, renames them, and files them away. No clicks needed.
*   **📋 Clipboard Monitoring:** Runs silently in the background, waiting for you to copy a new 	gallery link.
*   **🪶 Simple & Lightweight:** No complex dependencies. A pure PowerShell script that's fast and easy on your system.
*   **🛡️ Insanely Robust:** This isn't a theoretical project. This tool has been battle-tested and refined over **five years of daily use**.

### 🗿 A Piece of Living Software History

You might notice that this script uses classic commands like `findstr` instead of more modern alternatives. **This is not an oversight; it's a feature.**

The core of this tool was written over five years ago. It was built to be a simple, pragmatic solution that just works. It has survived countless website changes, security updates, and even major PowerShell version jumps without needing a single modification to its core logic.

It's the ultimate proof of the philosophy: **"If it ain't broke, don't fix it."**

This script is a testament to the power of a simple, robust solution in a world of over-engineered software. It's a tool, not a toy.

### 🎯 How to Use

1.  **Configure the paths** inside the script (see section below).
2.  **Run the script** in a PowerShell terminal. It will start monitoring in the background.
3.  **Copy a URL** of an image gallery to your clipboard.
4.  **Watch the magic happen.** The images will be downloaded, uniquely renamed, and moved to your target directory automatically.

### 🔧 Configuration

Before you run the script for the first time, you need to set your download and storage folders. Open the script file and edit these lines at the top:

```powershell
$meinName    = $env:Username
$Ablageort   = "C:\Users\$meinName\Desktop\YourFinalImageFolder"
$verzeichnis = "C:\Users\$meinName\Desktop\YourDownloadTempFolder"

```
  

**Pro-Tip:** Using the `$env:Username` variable makes the script portable and works for any user. It's highly recommended to keep it this way and just adjust the folder names (`YourFinalImageFolder`, `YourDownloadTempFolder`).

### 📜 Disclaimer

This tool is designed for personal use to streamline workflows. Please respect the copyright and terms of service of the websites you are downloading from. The author is not responsible for any misuse of this tool.

---
---

# 🚀 Das Arbeitstier - Silent Image Downloader

Ein kampferprobter PowerShell-Agent, der automatisch Bildergalerien aus deiner Zwischenablage herunterlädt. Einmal starten, vergessen und einfach arbeiten lassen.

---

### ✨ Kern-Features

*   **🤖 Vollautomatisiert:** Kopiere einfach eine URL. Der Agent erkennt sie, schnappt sich die Bilder, benennt sie um und legt sie ab. Keine Klicks nötig.
*   **📋 Überwachung der Zwischenablage:** Läuft still im Hintergrund und wartet darauf, dass du einen neuen Galerie-Link kopierst.
*   **🪶 Simpel & Leichtgewichtig:** Keine komplexen Abhängigkeiten. Ein reines PowerShell-Skript, das schnell und schonend für dein System ist.
*   **🛡️ Extrem Robust:** Dies ist kein theoretisches Projekt. Dieses Tool wurde über **fünf Jahre im täglichen Einsatz** kampferprobt und verfeinert.

### 🗿 Ein Stück lebende Software-Geschichte

Dir wird vielleicht auffallen, dass dieses Skript klassische Befehle wie `findstr` anstelle von moderneren Alternativen verwendet. **Das ist kein Versehen, das ist ein Feature.**

Der Kern dieses Tools wurde vor über fünf Jahren geschrieben. Es wurde als einfache, pragmatische Lösung gebaut, die einfach funktioniert. Es hat unzählige Website-Änderungen, Sicherheitsupdates und sogar große PowerShell-Versionssprünge überlebt, ohne dass eine einzige Änderung an seiner Kernlogik notwendig war.

Es ist der ultimative Beweis für die Philosophie: **"Wenn es nicht kaputt ist, repariere es nicht."**

Dieses Skript ist ein Denkmal für die Stärke einer einfachen, robusten Lösung in einer Welt von über-entwickelter Software. Es ist ein Werkzeug, kein Spielzeug.

### 🎯 Anwendung

1.  **Passe die Pfade** im Skript an (siehe Abschnitt unten).
2.  **Starte das Skript** in einem PowerShell-Terminal. Es beginnt im Hintergrund mit der Überwachung.
3.  **Kopiere die URL** einer Bildergalerie in die Zwischenablage.
4.  **Die Magie beginnt.** Die Bilder werden automatisch heruntergeladen, einzigartig umbenannt und in deinen Zielordner verschoben.

### 🔧 Konfiguration
Bevor du das Skript zum ersten Mal startest, musst du deine Download- und Zielordner festlegen. Öffne die Skript-Datei und bearbeite diese Zeilen am Anfang:
code Powershell

    
$meinName    = $env:Username
$Ablageort   = "C:\Users\$meinName\Desktop\DeinFinalerBilderOrdner"
$verzeichnis = "C:\Users\$meinName\Desktop\DeinDownloadTempOrdner"

  
**Profi-Tipp:** Die Verwendung der `$env:Username`-Variable macht das Skript portabel und es funktioniert für jeden Windows-Benutzer. Es wird dringend empfohlen, dies beizubehalten und nur die Ordnernamen (`DeinFinalerBilderOrdner`, `DeinDownloadTempOrdner`) anzupassen.

### 📜 Haftungsausschluss

Dieses Tool ist für den persönlichen Gebrauch und zur Vereinfachung von Arbeitsabläufen konzipiert. Bitte respektiere das Urheberrecht und die Nutzungsbedingungen der jeweiligen Websites. Der Autor ist nicht für eine missbräuchliche Verwendung dieses Tools verantwortlich.
