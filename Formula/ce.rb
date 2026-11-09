class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.75.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.2/ce-osx-arm64.tar.gz"
      sha256 "99d4cc4e80d12b64b0ebcaf08712052a422a16c915b1f1f92f5d5eb290e8b81b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.2/ce-osx-x64.tar.gz"
      sha256 "f643cf5e3babfe6bfa052ecd75214023a62f851cfc61a55ca6aa1df9bd13776b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.2/ce-linux-arm64.tar.gz"
      sha256 "c52f608ac4fae581683e1679f85ba24c896f922222d745534edb2f1dc159c1ff"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.2/ce-linux-x64.tar.gz"
      sha256 "836ac02ff8941e0bd266580ee6b0a6a95234c181c29b8b3e61beecd9bead5538"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
