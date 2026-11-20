class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.92.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.92.0/ce-osx-arm64.tar.gz"
      sha256 "3016c6b2f14c2098282ce3b034d0041a938b5d19c474ca11fca113d0e41fa53c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.92.0/ce-osx-x64.tar.gz"
      sha256 "574a646ff27300f438258cbe2cfcba4aa4b7f7fa29f6bdd83b8c06102eb06586"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.92.0/ce-linux-arm64.tar.gz"
      sha256 "7da4ffab8a5eec96365e2a3617307f5c860eb88490324b1d39b1704ca3cdac8d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.92.0/ce-linux-x64.tar.gz"
      sha256 "81d950e5c024d73f09bbc14da6ee997abde46777cda9e013af33418a7f20ca0a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
