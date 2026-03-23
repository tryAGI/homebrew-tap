# tryAGI Homebrew Tap

Homebrew formulae for [tryAGI](https://github.com/tryAGI) tools.

## Install

```bash
brew tap tryAGI/tap
```

## Available Formulae

| Formula | Description | Install |
|---------|-------------|---------|
| [ttok](https://github.com/tryAGI/Tiktoken) | The fastest CLI for counting, encoding, decoding, and exploring BPE tokens | `brew install tryAGI/tap/ttok` |

## Usage

```bash
# Count tokens
echo "Hello world" | ttok
# 3

# Count tokens in files
ttok src/ --include "*.cs"

# See all options
ttok --help
```
