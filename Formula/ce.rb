class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.106.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.4/ce-osx-arm64.tar.gz"
      sha256 "dcded0d702002b89dc6cabab45d9d6083416affde15399e8781221ee792097e7"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.4/ce-osx-x64.tar.gz"
      sha256 "4a0a556dab2196d01f0e6424585b8f4ca45b91faf3ef66c6619a9324e10a940f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.4/ce-linux-arm64.tar.gz"
      sha256 "c9308efb96b5885df980578914fd466c7335b2d0ac3d1ec87e53d1b40aa6bc0a"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.4/ce-linux-x64.tar.gz"
      sha256 "e34766f9ce70d4e920319d9dea57d8d8be79210668dcf498b27950e8670499e9"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
