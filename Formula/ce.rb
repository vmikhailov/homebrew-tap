class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.1/ce-osx-arm64.tar.gz"
      sha256 "b8516ea8e148662af2ab6a18b4dc859690dc6928aa21d555ef2c53e7a0ee1145"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.1/ce-osx-x64.tar.gz"
      sha256 "e0cc141ed1a0101bcc8c7fde20e4c2a2a9f2ab7396db0e5a244e4bef903f6346"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.1/ce-linux-arm64.tar.gz"
      sha256 "f2c6e12b6a1a8fc0635ecaf1a358c87e906c9cacb99aa0fd20c96f2582fd4c40"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.1/ce-linux-x64.tar.gz"
      sha256 "a3992e867a371685c5b27897ae064c76f14a7feaa4996f9158fb6fe865340f6a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
