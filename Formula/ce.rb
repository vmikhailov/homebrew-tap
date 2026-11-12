class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.83.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.83.0/ce-osx-arm64.tar.gz"
      sha256 "e5897f048d50dd1efdf6007c3ae147933913acd415fcf88a0a936d3997c611f1"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.83.0/ce-osx-x64.tar.gz"
      sha256 "4c27a041d85c8af79a8303f9aade5e57ecff47c52870245a6e391fc444ce4a2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.83.0/ce-linux-arm64.tar.gz"
      sha256 "ceffac1da2ba2d2df4cb5f876b3595cebfb29418691ab635b39b74d0fd90e664"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.83.0/ce-linux-x64.tar.gz"
      sha256 "3e1b5eb8f9412a75d8d4aa365dbb2c5b7c4189fac97d7765aa2e02350592b818"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
