class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.14/ce-osx-arm64.tar.gz"
      sha256 "499ff8f6a6cc63ca1dfae07ba6a92293f88fed75215b731530674a494c5356e6"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.14/ce-osx-x64.tar.gz"
      sha256 "48da5d781e69881faae2369a7769b71741198cdd6c023b65c8cbb23f8ff675a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.14/ce-linux-arm64.tar.gz"
      sha256 "6138485028cedb1dcebfcf5b5ad631d4575cae2300938ec2faaf427edb066bd0"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.14/ce-linux-x64.tar.gz"
      sha256 "abf9556553684fe38abb1aa6f07b75b0528aeee830c9ebfe86fb5f9b63248101"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
