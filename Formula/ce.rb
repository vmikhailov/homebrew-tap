class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.105.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.4/ce-osx-arm64.tar.gz"
      sha256 "ace5e8286fc14035da46f7d5a60c4d0bb9dc9d87eee68b0a5e67d76698db0108"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.4/ce-osx-x64.tar.gz"
      sha256 "032b76443c546fb2c707e532947848b6bc7c86cb86fbff767bf2ca9ca5c95562"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.4/ce-linux-arm64.tar.gz"
      sha256 "af82f8441067776580a84fa33b560ebdcec760967944deb09fd848c1a9062b51"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.4/ce-linux-x64.tar.gz"
      sha256 "85c9d6e282c489eea356d8595e02a94542bcdeb4baca818b49c7d795848c5bf1"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
