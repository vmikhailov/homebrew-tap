class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.96.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.96.0/ce-osx-arm64.tar.gz"
      sha256 "c389e333a49db7d9139fff32c75b56364423534f7ead9ab40aa2cddad182810d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.96.0/ce-osx-x64.tar.gz"
      sha256 "345d324a42ec96fe5da5392423ca106300dd05f2be1f897e4168b1f8299e9f7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.96.0/ce-linux-arm64.tar.gz"
      sha256 "5d7452f3976fee43875cf5c3b63786d87aa5f4b092e36dfde0a5a92182470e10"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.96.0/ce-linux-x64.tar.gz"
      sha256 "e79978db1d563ccf1f7b381bc166a31c067e1737d4de4d74f84849e565a03175"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
