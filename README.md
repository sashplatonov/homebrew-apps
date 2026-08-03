# Sashplatonov Homebrew Apps

<a id="top"></a>

This repository is a personal Homebrew tap for macOS applications and command-line tools.
It can contain both GUI applications (`Casks/`) and command-line packages (`Formula/`).

## Table of contents

- [📦 Available packages](#-available-packages)
- [🚀 Install a package](#-install-a-package)
- [🔄 Update or remove a package](#-update-or-remove-a-package)
- [🧰 Use with Homebrew Bundle](#-use-with-homebrew-bundle)
- [➕ Add a package](#-add-a-package)
- [✅ Validate changes](#-validate-changes)
- [📚 Further documentation](#-further-documentation)

## 📦 Available packages

| Package | Type | Description | macOS requirement |
| --- | --- | --- | --- |
| [`countpane`](https://github.com/sashplatonov/countpane) | Cask | Native macOS countdown manager with always-on-top desktop widgets | macOS Sequoia or newer |

New applications and tools should be added to the table when their Cask or formula is published.

[↑ Back to top](#top)

## 🚀 Install a package

Tap this repository once:

```sh
brew tap sashplatonov/apps
```

Install a graphical application with `--cask`:

```sh
brew install --cask countpane
```

Install a command-line package without `--cask`:

```sh
brew install <formula-name>
```

Alternatively, address a package directly without adding the tap first:

```sh
brew install --cask sashplatonov/apps/<cask-name>
brew install sashplatonov/apps/<formula-name>
```

Replace the placeholders with the package name shown in [Available packages](#-available-packages).

[↑ Back to top](#top)

## 🔄 Update or remove a package

Refresh Homebrew and upgrade an installed package:

```sh
brew update
brew upgrade --cask countpane       # GUI application
brew upgrade <formula-name>         # command-line package
```

Remove a package when it is no longer needed:

```sh
brew uninstall --cask countpane
brew uninstall <formula-name>
```

For a Cask, remove application data and preferences as well with:

```sh
brew uninstall --cask --zap countpane
```

The `--zap` option is package-specific: review the Cask before using it if you need to preserve local data.

[↑ Back to top](#top)

## 🧰 Use with Homebrew Bundle

Add the tap and the packages you want to a `Brewfile`:

```ruby
tap "sashplatonov/apps"

cask "countpane"
# brew "<formula-name>"
```

Install everything declared in the file:

```sh
brew bundle --file=Brewfile
```

[↑ Back to top](#top)

## ➕ Add a package

- Add GUI applications as Ruby Casks under [`Casks/`](Casks/).
- Add command-line packages as Ruby formulae under [`Formula/`](Formula/).
- Keep the package name, version, checksum, download URL, homepage, and platform requirements aligned with the upstream release.
- Update the package table above with a user-facing description and supported macOS version.
- Document any package-specific uninstall or migration behavior in the package definition or its upstream project.

Use the existing [`Casks/countpane.rb`](Casks/countpane.rb) as the reference for a macOS application Cask.

[↑ Back to top](#top)

## ✅ Validate changes

Run the relevant Homebrew checks from the repository root:

```sh
brew audit --cask Casks/countpane.rb
brew style Casks/countpane.rb
```

For a formula, use the corresponding `--formula` audit and the file under `Formula/`:

```sh
brew audit --formula Formula/<formula-name>.rb
brew style Formula/<formula-name>.rb
```

Before opening a pull request, verify that the package installs, launches or executes correctly, and that its version and checksum match the upstream release.

[↑ Back to top](#top)

## 📚 Further documentation

- [Homebrew Documentation](https://docs.brew.sh/)
- [Cask Cookbook](https://docs.brew.sh/Cask-Cookbook)
- [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- `brew help`, `man brew`, and `brew commands`

[↑ Back to top](#top)
