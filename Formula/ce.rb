class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.109.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.109.0/ce-osx-arm64.tar.gz"
      sha256 "1815d57e8f3a6e1f3a2509cd6226a7054bf90a0960229909f63707158b3e904d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.109.0/ce-osx-x64.tar.gz"
      sha256 "3f13c465ef859405233bddf7e5cc84a60b16fb1347a350cfcbf0d03f781d807a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.109.0/ce-linux-arm64.tar.gz"
      sha256 "0acf544bc23484317850c179db69a8bdde31b80f6a35429ac3bee5395c8ed934"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.109.0/ce-linux-x64.tar.gz"
      sha256 "bfed2933ba976162f0190e3a7b790d5ff628f51b3ba255f5e92c6b182f5c9d21"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
