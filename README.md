## 🧩 Chrome Extension Backup Script

This script copies all installed Chrome (or Chromium-based) extensions from your system to a backup directory — preserving only the **latest version** of each extension.

---

### 📁 What it does

* Scans your `~/.config/{chrome-name}/Default/Extensions` directory
* Finds each extension's **latest version**
* Copies only the latest version of each extension to a folder on your desktop:
  `~/Desktop/chrome_extensions_backup`

---

### 🔧 How to use

1. Replace `{chrome-name}` with your browser name (e.g., `google-chrome`, `BraveSoftware/Brave-Browser`, or `chromium`):

   ```bash
   SRC_DIR="$HOME/.config/google-chrome/Default/Extensions"
   ```

2. Save the script as `backup_extensions.sh`

3. Make it executable:

   ```bash
   chmod +x backup_extensions.sh
   ```

4. Run it:

   ```bash
   ./backup_extensions.sh
   ```

---

### 📝 Notes

* This **does not backup extension data**, only the code (manifest + assets).
* Great for inspection, local packaging, or moving to another Chromium-based browser via *developer mode*.
* You can load each extension manually in the new browser:

  > `chrome://extensions` → Enable *Developer mode* → *Load unpacked* → Select the folder.

---

### 📦 Output Example

After execution, the destination folder might look like this:

```
~/Desktop/chrome_extensions_backup/
├── aaaaaaaabbbbbbbbcccccc/
├── ddddddddeeeeeeeeffffff/
└── ...
```

---

### 🔐 Privacy Tip

Some extensions may store user data in:

* `Local Extension Settings/`
* `Extension State/`
* `IndexedDB/`

This script **does not** copy those. If you need full extension state backup, consider combining it with a config-level transfer script.
