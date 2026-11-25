class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.101.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.1/ce-osx-arm64.tar.gz"
      sha256 "95e22d19ab63980c66b5c1a48a391c5270ee5b724d33e251e47e05ed0b4acf23"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.1/ce-osx-x64.tar.gz"
      sha256 "39b4d2c991c9b188f1cc5e7a668a07e1f5d962cdcf936e90116ed364601f582e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.1/ce-linux-arm64.tar.gz"
      sha256 "541356b939453aa4d9ba9fe2fd35b1e6183b9e93fb24f0a117f6847d34927741"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.101.1/ce-linux-x64.tar.gz"
      sha256 "db2d569f5010b4d6bfb3798ecedba14c153f4e2b9c2bb1582f29b64c2e6418dc"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
