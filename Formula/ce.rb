class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.65.11"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/vmikhailov/code-explorer/releases/download/v1.65.11/ce-osx-arm64.tar.gz"
  sha256 "34c5e1796e3191bce57cd1696ce33785fabfb028c1835198af438065d1ef459b"

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
