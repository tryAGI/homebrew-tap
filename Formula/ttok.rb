class Ttok < Formula
  desc "The fastest CLI tool for counting, encoding, decoding, and exploring BPE tokens"
  homepage "https://github.com/tryAGI/Tiktoken"
  version "3.1.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tryAGI/Tiktoken/releases/download/v3.1.0-rc.1/ttok-osx-arm64.tar.gz"
      sha256 "82c2a9a4d3744969976f03a41f42690d1698acb0ac344a0511d105d2f33a9eb6"
    else
      url "https://github.com/tryAGI/Tiktoken/releases/download/v3.1.0-rc.1/ttok-osx-x64.tar.gz"
      sha256 "8b6680db89a84d9423a337c12db16e100d87d7694f99007ac94ca32acd5ccc2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tryAGI/Tiktoken/releases/download/v3.1.0-rc.1/ttok-linux-arm64.tar.gz"
      sha256 "0ba33c6f36ec62c84611bd8ba68046734f739cae5c504fd6a4ba969b3de7ff15"
    else
      url "https://github.com/tryAGI/Tiktoken/releases/download/v3.1.0-rc.1/ttok-linux-x64.tar.gz"
      sha256 "629497302cd14d07740c10b3fabe4040bfe5ee441fe2632124809fb5f52bc0f3"
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
