class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.105.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.0/ce-osx-arm64.tar.gz"
      sha256 "389692498e096aebc50a9adb8aa1b2381dfe48adb215fbc8d02eb1ccc5c85fdf"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.0/ce-osx-x64.tar.gz"
      sha256 "514f5ff2d971af067c44b7d01780b191e834659b13315efa39c1c48387fb22ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.0/ce-linux-arm64.tar.gz"
      sha256 "ff53e755ee78d6d43fed7ec319bb3bec29ef977a6d1e1638e8827f3393e6ccba"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.105.0/ce-linux-x64.tar.gz"
      sha256 "231c6ab15f523b7e6d8fa08a6f245f2bc0b316726a980c3e0687bdb93a507169"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
