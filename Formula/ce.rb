class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.91.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.2/ce-osx-arm64.tar.gz"
      sha256 "52eb339cfeb96ec81f5bffd186d4c9f7353bc9f572bd5356791492925f3c190c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.2/ce-osx-x64.tar.gz"
      sha256 "0d78f8197b83c6110884a6cddc0842a0452e2cee282851ce72890e0243490ae8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.2/ce-linux-arm64.tar.gz"
      sha256 "7d67dbc15d02bbf8dec1aefb34e5c184a3abab1cd849b6d6ce042470c7d7984d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.2/ce-linux-x64.tar.gz"
      sha256 "0d15b7124b197e5dc10e1b1fbdb2fe1e580cdf51f65d9a6a1c9b4be6323f6e05"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
