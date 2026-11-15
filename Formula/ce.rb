class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.0/ce-osx-arm64.tar.gz"
      sha256 "5179c44edab241d3f5935dd9101313ab507199f38eac59d126dd699a06409268"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.0/ce-osx-x64.tar.gz"
      sha256 "b2a9fc76f4a6ce4d69eae371f12e92519e45c66421b7c15aaaa3255a30110195"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.0/ce-linux-arm64.tar.gz"
      sha256 "e738b5073568cc53d3610f83f4a5f2d8b1d1f4361724a514ba469026c2b9d2d9"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.0/ce-linux-x64.tar.gz"
      sha256 "e65097ce468ec7800740963c9dcec4c78ac11dde32647da83b5e4f0772896652"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
