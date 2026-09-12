# Installing and using Telepromptr

Telepromptr is an offline-first desktop teleprompter for Markdown scripts. Download the latest installer from the [Releases page](https://github.com/eL-iam123/telepromptr-downloads/releases/latest).

## Choose your platform

### Linux AppImage

1. Download the `.AppImage` file from the latest release.
2. Make it executable:

```bash
chmod +x Telepromptr_*.AppImage
```

3. Start the app:

```bash
./Telepromptr_*.AppImage
```

### Debian or Ubuntu

Download the `.deb` package and install it with:

```bash
sudo apt install ./Telepromptr_*.deb
```

### Arch Linux

The Arch package uses the latest x86_64 AppImage. Install the AppImage dependency first:

```bash
sudo pacman -S fuse2
```

Then download this repository and build the package:

```bash
git clone https://github.com/eL-iam123/telepromptr-downloads.git
cd telepromptr-downloads/packaging
makepkg -si
```

### Linux curl installer

To install the latest Linux AppImage into `~/.local/bin`:

```bash
curl -fsSL https://raw.githubusercontent.com/eL-iam123/telepromptr-downloads/main/install.sh | bash
```

If `telepromptr` is not found afterwards, add `~/.local/bin` to your PATH and open a new terminal.

### Windows

- Use the `.exe` installer for a guided installation.
- Use the `.msi` package for managed or enterprise installation.

Windows may display a SmartScreen warning for unsigned builds. Only download installers from the official Releases page.

## First run

Telepromptr works offline and does not require an account. Your scripts remain on your computer unless you choose to share them.

1. Open Telepromptr.
2. Choose **New script** to start from a blank Markdown document, or choose **Open script** to load an existing `.md` file.
3. Use the Home categories to find drafts and imported scripts.
4. Drop a Markdown file onto Home to import it.

## Writing scripts

Telepromptr uses Markdown as its source format. Use headings to organize sections and keep the file portable. Save with **Ctrl+S** on Windows/Linux or **Cmd+S** on macOS.

Supported author cues include timestamps, pauses, pace changes, direction notes, sections, and metadata. Add cues from the author toolbar or the editor context menu, then edit their values before inserting them.

## Presenting

1. Open a script and select **Run**.
2. Adjust WPM and playback speed in the editor toolbar for that script.
3. Use the playback controls to start, pause, seek, or stop.
4. Use the display settings to adjust text size, contrast, and presentation appearance.

Playback preferences can be adjusted per script, so different presentations can use different timings.

## Troubleshooting

- **The app will not open on Linux:** make the AppImage executable and install `fuse2`.
- **A file will not open:** Telepromptr accepts Markdown files with a `.md` extension.
- **The Windows installer is blocked:** confirm that the installer came from the official Releases page and choose **More info → Run anyway** if you trust the download.
- **The curl command is not found:** add `~/.local/bin` to your PATH.

For help, open an issue in the [support tracker](https://github.com/eL-iam123/telepromptr-downloads/issues).
