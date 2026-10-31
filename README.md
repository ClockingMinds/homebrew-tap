# ClockingCloud Homebrew Tap

Official Homebrew tap for the [ClockingCloud](https://www.clockingcloud.com) command-line interface, maintained by [ClockingMinds](https://www.clockingminds.com).

ClockingCloud provides GPU compute and model inference management from your terminal.

> **Release status:** The public tap is being prepared. The `clockingcloud` formula and downloadable v0.1.0 release archives have not yet been published. Installation commands below will work only after the first release is available.

## Installation

On macOS with [Homebrew](https://brew.sh/) installed:

```sh
brew tap clockingminds/clockingcloud
brew trust --formula clockingminds/clockingcloud/clockingcloud
brew install clockingcloud
clockingcloud version
```

Homebrew may require you to trust the third-party formula before installing it. Review this repository's formula before trusting it; prefer **formula-level** trust instead of trusting the entire tap.

After installing, authenticate with:

```sh
clockingcloud login
```

You can also use a developer API key for noninteractive commands, according to the [CLI documentation](https://www.clockingcloud.com/docs/cli).

## Updating

```sh
brew update
brew upgrade clockingcloud
```

## Uninstalling

```sh
brew uninstall clockingcloud
brew untrust --formula clockingminds/clockingcloud/clockingcloud
brew untap clockingminds/clockingcloud
```

Uninstallation removes the Homebrew-managed CLI. Review and remove locally stored credentials separately if appropriate; uninstalling the binary does not necessarily revoke server-side sessions or developer API keys.

## Troubleshooting

If `clockingcloud version` shows an unexpected build, another executable may appear earlier in your shell's `PATH`:

```sh
type -a clockingcloud
brew list --versions clockingcloud
brew --prefix clockingcloud
```

Run the Homebrew-managed executable directly with:

```sh
"$(brew --prefix clockingcloud)/bin/clockingcloud" version
```

For installation problems, check [Homebrew tap trust](https://docs.brew.sh/Tap-Trust) and [Homebrew troubleshooting](https://docs.brew.sh/Troubleshooting).

For ClockingCloud API and command usage, see the [CLI guide](https://www.clockingcloud.com/docs/cli) and [API reference](https://www.clockingcloud.com/docs/api).

## Repository structure

The installable formula will be published at `Formula/clockingcloud.rb`. Release archives will be published with SHA-256 checksums and referenced by the formula. The CLI source remains in a separate repository.

## Security and support

Do not put API keys in issues, screenshots, or terminal output. Security disclosures can be sent to **security@clockingcloud.com**.

ClockingCloud is developed by ClockingMinds Labs, a DBA of NewRosetta Inc.
