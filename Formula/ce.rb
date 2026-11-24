class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.100.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.100.0/ce-osx-arm64.tar.gz"
      sha256 "a4b33975b7320bb822b495f867d27a68eeeff1c25f5bbd3255370a2cbec6767e"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.100.0/ce-osx-x64.tar.gz"
      sha256 "4a2b8565c7d56f6cf4e50b8cc8bbc9a789ada6946ec33b795148adbca3fa0b7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.100.0/ce-linux-arm64.tar.gz"
      sha256 "a68562e26bfeaba82935ba43f61b8399cca5bbf7940caaa88c701636eada1a07"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.100.0/ce-linux-x64.tar.gz"
      sha256 "d74d5a6d1eb2d1caf8a6d98358e0b73c6dc18bbb829bcfda9094416ef6938189"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
