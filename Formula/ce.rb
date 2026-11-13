class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.84.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.0/ce-osx-arm64.tar.gz"
      sha256 "418c58f7c038a534a25ceba5ea058e8a7237ab3eaab46988e43e68dfd17fa465"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.0/ce-osx-x64.tar.gz"
      sha256 "36aa287113fdeb839ae318e583c751df521cf4e86e72dcbf4a7263d7d09fb0c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.0/ce-linux-arm64.tar.gz"
      sha256 "bb3bf28ec582785ae7e51ca0960d2b6552dca449a0bcb05811640a966585880f"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.84.0/ce-linux-x64.tar.gz"
      sha256 "5e50fe7fb1754e2777de0e7b7677c4fdb36454127db9503d406da0f4299ce487"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
