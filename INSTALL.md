# Installing Telepromptr

Download the latest packages from the [Releases page](https://github.com/eL-iam123/telepromptr-downloads/releases/latest).

## Enabling automatic releases

The private source repository publishes tagged installers to this public repository.

1. Open GitHub **Settings → Developer settings → Personal access tokens → Fine-grained tokens**.
2. Create a token named `Telepromptr public releases`.
3. Set **Resource owner** to `eL-iam123`, choose **Only select repositories**, and select `telepromptr-downloads`.
4. Under **Repository permissions**, set **Contents** to **Read and write**. No other permissions are needed.
5. Copy the token immediately; GitHub will not show it again.
6. Open [source repository secrets](https://github.com/eL-iam123/telepromptr-app/settings/secrets/actions), choose **New repository secret**, set the name to `PUBLIC_RELEASE_TOKEN`, and paste the token.

To publish, update the version in `src-tauri/tauri.conf.json`, then create and push a tag:

```bash
git tag v0.1.0
git push origin v0.1.0
```

The workflow builds Linux and Windows installers and attaches them to a release in this repository.

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
