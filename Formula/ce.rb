class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.72.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.72.0/ce-osx-arm64.tar.gz"
      sha256 "22000c5cb24833e7046d3a7ad91be5cccd4432c81ef88816b50ca2ad8754ac9b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.72.0/ce-osx-x64.tar.gz"
      sha256 "9eede01af43f72c9cac1b3c85df5ecb55011d2716c67ea11975b494680a3dd33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.72.0/ce-linux-arm64.tar.gz"
      sha256 "114114b5d6a579643aef0f1ba5d99dd82fd289ab8d95b00ef0fb7831cfd03dcc"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.72.0/ce-linux-x64.tar.gz"
      sha256 "10b406f7e34a7e76f0da26acaf5af18e90aabe0a997f0b5d5d0a7ca7466ada4c"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
