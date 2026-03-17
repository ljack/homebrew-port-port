# homebrew-port-port

Homebrew tap for [PortPort](https://github.com/ljack/port-port) — port monitoring tools for macOS.

## Install

```sh
brew tap ljack/port-port
```

### CLI tools (port-port-cli + port-port-mcp)

```sh
brew install port-port
```

### Menu bar app

```sh
brew install --cask port-port-app
```

The app will be installed to `/Applications/PortPort.app`. On first launch, a welcome window guides you to find the icon in your menu bar.

## What's included

| Package | Type | Description |
|---------|------|-------------|
| `port-port` | Formula | **port-port-cli** (interactive CLI + TUI) and **port-port-mcp** (MCP server for Claude Code) |
| `port-port-app` | Cask | **PortPort.app** — menu bar app with port list, event log, and notifications |

## Upgrade

```sh
brew upgrade port-port
brew upgrade --cask port-port-app
```
