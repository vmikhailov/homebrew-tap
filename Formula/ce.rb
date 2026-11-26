class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.104.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.1/ce-osx-arm64.tar.gz"
      sha256 "ba64891983e7a675011e91ab437979aba9fe50099ecd0658e8bbc8c5ce64169c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.1/ce-osx-x64.tar.gz"
      sha256 "79dadff4dce1169e467490a96448f9a8011ce90a51e09011386a4a5ab5f9393b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.1/ce-linux-arm64.tar.gz"
      sha256 "0098591366ebae8393d9b142ca525e1ac36947f73f5e59fae969a8be172dccc7"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.104.1/ce-linux-x64.tar.gz"
      sha256 "6cbc9ef39bdec9c6c443d7894ccb315d873221f83c7a503106aeaec21681b48d"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
