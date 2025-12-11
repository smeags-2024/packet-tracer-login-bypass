# Packet Tracer Login Bypass (All Versions)

A Windows batch script that bypasses the Cisco Packet Tracer login screen by blocking outbound network traffic through Windows Firewall rules. This tool automatically detects and supports multiple versions of Packet Tracer (7.x to 8.x).

## 🚀 Features

- **Multi-Version Support**: Automatically detects Packet Tracer versions 7.2.0 through 9.2
- **Administrator Check**: Automatically requests elevated privileges when needed
- **Simple Interface**: Easy-to-use menu system
- **Reversible**: Can enable and disable the bypass as needed
- **Safe**: Uses Windows built-in firewall rules (no system modification)

## 📋 Prerequisites

- Windows operating system
- Administrator privileges
- Cisco Packet Tracer installed (versions 7.2.0 - 9.2 supported)

## 🔧 Installation

1. **Download**: Clone this repository or download the `login.bat` file
   ```bash
   git clone https://github.com/smeags-2024/packet-tracer-login-bypass.git
   ```

2. **Navigate to directory**:
   ```bash
   cd packet-tracer-login-bypass
   ```

## 💻 Usage

1. **Run the Script**:
   - Right-click on `login.bat` and select "Run as administrator"
   - Or run from command prompt with admin privileges:
     ```cmd
     login.bat
     ```

2. **Choose an Option**:
   ```
   ___ Packet Tracer Login bypass ___
   Found Packet Tracer at: C:\Program Files\Cisco Packet Tracer X.X.X\bin\PacketTracer.exe
   
   Choose an option :
   1. Enable login bypass.
   2. Remove login bypass.
   Your choice : 
   ```

3. **Options**:
   - **Option 1**: Creates a firewall rule to block Packet Tracer's outbound connections
   - **Option 2**: Removes the previously created firewall rule

## 🎯 How It Works

The script works by:
1. Automatically detecting your Packet Tracer installation path
2. Creating a Windows Firewall rule that blocks outbound traffic for `PacketTracer.exe`
3. This prevents the application from connecting to Cisco's authentication servers
4. Packet Tracer falls back to offline mode, bypassing the login requirement

## 🔍 Supported Versions

The script automatically detects these Packet Tracer versions:
- 9.2, 9.1, 9.0
- 8.2.2, 8.2.1, 8.2.0
- 8.1.1, 8.1.0
- 8.0.1, 8.0.0  
- 7.3.1, 7.3.0
- 7.2.2, 7.2.1, 7.2.0

## ⚠️ Important Notes

- **Educational Use**: This tool is intended for educational environments where login bypass is acceptable
- **Firewall Rules**: The script modifies Windows Firewall rules - ensure you understand the implications
- **Reversible**: All changes can be undone using option 2 in the script
- **No System Files**: This script doesn't modify Packet Tracer files or system files

## 🛡️ Security Considerations

- Always run scripts from trusted sources
- Review the code before execution
- The script only creates/removes firewall rules
- No persistent system changes are made

## 🐛 Troubleshooting

**Script doesn't find Packet Tracer:**
- Ensure Packet Tracer is installed in the default location
- Check if your version is in the supported list
- Verify the installation path matches the script's search paths

**Firewall rule creation fails:**
- Ensure you're running as Administrator
- Check Windows Firewall service is running
- Verify no conflicting firewall rules exist

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚖️ Disclaimer

This software is provided for educational purposes only. Use it at your own risk and in compliance with your organization's policies and applicable laws. The author is not responsible for any misuse or consequences resulting from the use of this script.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📞 Support

If you encounter any issues or have questions, please open an issue on GitHub.

---

**Note**: This is an improved version that supports multiple Packet Tracer versions automatically.
