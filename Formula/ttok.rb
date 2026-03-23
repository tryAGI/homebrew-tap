class Ttok < Formula
  desc "The fastest CLI tool for counting, encoding, decoding, and exploring BPE tokens"
  homepage "https://github.com/tryAGI/Tiktoken"
  license "MIT"

  # This formula is auto-updated by CI on each tagged release.
  # See: https://github.com/tryAGI/Tiktoken/.github/workflows/native-cli.yml

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tryAGI/Tiktoken/releases/latest/download/ttok-osx-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/tryAGI/Tiktoken/releases/latest/download/ttok-osx-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tryAGI/Tiktoken/releases/latest/download/ttok-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/tryAGI/Tiktoken/releases/latest/download/ttok-linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "ttok"
  end

  test do
    output = pipe_output("#{bin}/ttok", "Hello world")
    assert_match "3", output.strip
  end
end
