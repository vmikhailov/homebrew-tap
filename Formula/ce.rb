class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.104.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.0/ce-osx-arm64.tar.gz"
      sha256 "d01b61092d953f3f2e9ee796938405f1578c9a056a859f7d75836cae5a5ab61b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.0/ce-osx-x64.tar.gz"
      sha256 "88bb686c50f923d14e01ad897493d1bc903d7c7c7e7dafda9d448b62ce086d0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.0/ce-linux-arm64.tar.gz"
      sha256 "03ccbf9c7df21a6abc0f0d567c9634a38bd47c05bdc9b9b92ba1a3bafe6f9add"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.0/ce-linux-x64.tar.gz"
      sha256 "bf0ad61915149055c06dba5af300fc910fcdf56f672cfb3eb760e9bf37b40b5c"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
