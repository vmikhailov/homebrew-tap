class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.6/ce-osx-arm64.tar.gz"
      sha256 "0052e5156330a69245d40572c5b6d81c0291c739d046142ce8b320875b268d1b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.6/ce-osx-x64.tar.gz"
      sha256 "c1ceda05db0592b1b1268d0d3e56073fc94a99002dd05ce16e63e16f17bbdc4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.6/ce-linux-arm64.tar.gz"
      sha256 "93ac7eb5fa2d23a6e90b492d0eddc17956abccf1ddaf3a8880799078cbe9639d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.6/ce-linux-x64.tar.gz"
      sha256 "9d29371b5c95967ec5302851b928d7f1230ad896b111b37f3e96abf1dd57c6dd"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
