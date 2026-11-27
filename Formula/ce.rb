class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.108.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.1/ce-osx-arm64.tar.gz"
      sha256 "f5c162962d87d7635964fc9ab2142e728259af7da2ee76d4270595083e22e161"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.1/ce-osx-x64.tar.gz"
      sha256 "deea32783b6188e1e9b76fd01527d10e2ff84cb4f5beee7a015a0fc99d891a16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.1/ce-linux-arm64.tar.gz"
      sha256 "746f9d8da63033a4e9ec8ff5f22b0035ef2e4c98956687639e1a0bea6099a668"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.108.1/ce-linux-x64.tar.gz"
      sha256 "10a6d7a439c2c44f3b4b01039763022f1e10789bc33a01c7134adbeb9d1a2513"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
