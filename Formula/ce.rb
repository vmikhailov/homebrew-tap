class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.80.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.0/ce-osx-arm64.tar.gz"
      sha256 "00b79c71e76048830818b7ddf8a37a54fcb1013d628bee2f5222021059325f39"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.0/ce-osx-x64.tar.gz"
      sha256 "2ea4e165fa0c645d307b512ea3e408dad9b65a6a16fb2f59b3daa1e0161bd823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.0/ce-linux-arm64.tar.gz"
      sha256 "baf8d136c25e57f168b379a21c899704e6a11d86fdfe1760d38c3f16939fd122"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.0/ce-linux-x64.tar.gz"
      sha256 "59b7231fc54a2919ff11e13e74e6a91bf88c37a81f885eb473f76075c41d2f40"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
