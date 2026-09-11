# Installing Telepromptr

Download the latest packages from the [Releases page](https://github.com/eL-iam123/telepromptr-downloads/releases/latest).

The release workflow publishes Linux and Windows installers from the private source repository. Repository maintainers must add a GitHub fine-grained token with `Contents: Read and write` access to `eL-iam123/telepromptr-downloads` as the `PUBLIC_RELEASE_TOKEN` secret in `eL-iam123/telepromptr-app`.

## Linux

### AppImage

Download the `.AppImage`, make it executable, and run it:

```bash
chmod +x Telepromptr_*.AppImage
./Telepromptr_*.AppImage
```

### Debian or Ubuntu

Download the `.deb` package and install it:

```bash
sudo apt install ./Telepromptr_*.deb
```

## Windows

- Use the `.exe` installer for the standard guided installation.
- Use the `.msi` package for managed or enterprise deployment.

Windows may show a SmartScreen warning for unsigned builds. Only download installers from the official Releases page.

## First run

Telepromptr works offline after installation. Scripts are ordinary Markdown files and can be opened from the Home screen or dropped onto the application.
