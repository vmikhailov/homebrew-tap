class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.2/ce-osx-arm64.tar.gz"
      sha256 "139a7447cbff508bf3d7f7baa131cbfe8d08dbf599236476b1b19edfb6378669"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.2/ce-osx-x64.tar.gz"
      sha256 "35db6891067ab5c0791b55e7d142caea5cf28bb5129b168e7204d34f78362971"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.2/ce-linux-arm64.tar.gz"
      sha256 "36caf767ef0604b92496b3cdf221e7ac9814d21e331ae795461853b6f27c453c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.2/ce-linux-x64.tar.gz"
      sha256 "5981cc033a71e5ab071c5399b1c2559dec19621f4020962aee078edf11b282ba"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
