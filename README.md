# focusX 🍅

A beautiful, feature-rich Pomodoro Timer for the terminal, optimized for Arch Linux users.

```
   ___                    _  __
  / __/___  ____  __  ___| |/ /
 / _// _ \/ __/ / / / __/   /
/_/  \___/\__/  \_,_/\__/_/|_|

🍅 Pomodoro Timer - Stay Focused, Stay Productive
```

## ✨ Features

- **Beautiful Terminal Interface** - Colorful output with ASCII art banners
- **Smart Notifications** - Desktop notifications, text-to-speech, and visual alerts
- **Quick Commands** - Short aliases for instant productivity
- **Flexible Configuration** - Easy to customize session lengths
- **Enhanced UX** - Motivational messages and next-action suggestions
- **Bash Completion** - Tab completion for commands
- **Dependency Checking** - Automatic validation of required tools

## 🚀 Quick Start

### Installation

1. **Install dependencies using pacman:**
   ```bash
   # Install Go if not already installed
   sudo pacman -S go
   
   # Install the timer dependency
   go install github.com/caarlos0/timer@latest
   ```
   Make sure `$(go env GOPATH)/bin` is in your PATH:
   ```bash
   echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc
   source ~/.bashrc
   ```

2. **Clone and source the script:**
   ```bash
   git clone https://github.com/Justine01231/focusX.git
   cd focusX
   chmod +x focusX.sh
   source focusX.sh
   ```

3. **Add to your shell profile for persistent access:**
   ```bash
   echo 'source ~/focusX/focusX.sh' >> ~/.bashrc
   source ~/.bashrc
   
   # For zsh users:
   echo 'source ~/focusX/focusX.sh' >> ~/.zshrc
   source ~/.zshrc
   ```

### Basic Usage

```bash
# Start a work session (45 minutes)
wo

# Start a break session (10 minutes)
br

# Start a long break (30 minutes)
lb

# Show help and banner
focusX

# Show configuration
pstatus
```

## 📋 Commands Reference

### Quick Commands
| Command | Description | Duration |
|---------|-------------|----------|
| `wo` | Work session | 45 minutes |
| `br` | Break session | 10 minutes |
| `lb` | Long break | 30 minutes |
| `qwo` | Quick work start (with confirmation) | 45 minutes |

### Advanced Commands
| Command | Description |
|---------|-------------|
| `focusX` | Show banner and help |
| `pstatus` | Display current configuration |
| `pomodoro [type]` | Manual session start |
| `qbr` | Quick break start with confirmation |
| `qlb` | Quick long break start with confirmation |

## ⚙️ Configuration

Default session lengths:
- **Work**: 45 minutes
- **Break**: 10 minutes
- **Long Break**: 30 minutes

To customize these values, edit the `pomo_options` array in the script:

```bash
declare -A pomo_options
pomo_options=(
    ["work"]=25        # Change work session to 25 minutes
    ["break"]=5        # Change break to 5 minutes
    ["longbreak"]=15   # Change long break to 15 minutes
)
```

## 📦 Dependencies

### Required
- **go** - For installing the timer utility
  ```bash
  sudo pacman -S go
  ```

- **timer** - The core timing functionality
  ```bash
  go install github.com/caarlos0/timer@latest
  ```

### Optional (for enhanced experience)
- **lolcat** - Rainbow colored output
  ```bash
  sudo pacman -S lolcat
  ```

- **libnotify** - Desktop notifications
  ```bash
  sudo pacman -S libnotify
  ```

- **speech-dispatcher** - Text-to-speech notifications
  ```bash
  sudo pacman -S speech-dispatcher
  ```
  ---

  ### 🪟 Windows Installation (Git Bash)

1. ✅ Install [Go](https://go.dev/dl/)
2. ✅ Install [Git for Windows](https://git-scm.com/downloads)
3. ✅ Run this PowerShell command:

```powershell
irm https://raw.githubusercontent.com/Justine01231/focusX/main/install.ps1 | iex
```

4. ✅ Open **Git Bash** and run:

```bash
wo
```

---


## 🎨 Screenshots

### Work Session
```
🍅 Starting work session (45 minutes)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💪 Focus time! Deep work mode activated!
🎯 Eliminate distractions and get in the zone

⏱️  Started: 14:30:00
⏰ Will end: 15:15:00
⏲️  Duration: 45 minutes
```
