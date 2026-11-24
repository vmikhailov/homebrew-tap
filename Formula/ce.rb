class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.99.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.99.0/ce-osx-arm64.tar.gz"
      sha256 "b627097ff299ef6a529ff8884f462dd7c18aa670228ed6c90a27353de599e6db"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.99.0/ce-osx-x64.tar.gz"
      sha256 "b68e9ad819660c774548526530e08234684b6757126bbe852723f436fc90de85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.99.0/ce-linux-arm64.tar.gz"
      sha256 "293d6ecf37ef2be25c9200354bff8454a3a4806512bbd2c2afddca3dd202b6fd"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.99.0/ce-linux-x64.tar.gz"
      sha256 "011e04b03244c6b1022cb458fdf0810c823378eaf512880e29b36ee3543b002a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
