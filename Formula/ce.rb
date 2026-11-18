class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.4/ce-osx-arm64.tar.gz"
      sha256 "3cf6aa336e4d1ba0cffa570a8fae7f822cb30a472c4119154702c630f6b7ff5e"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.4/ce-osx-x64.tar.gz"
      sha256 "adaffeca62fee654f7e6528a7749133621ea6a68fb90c5fc18ee6ed647e3792f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.4/ce-linux-arm64.tar.gz"
      sha256 "5f84f6f582771bc3c95b2257ea4369d5e9d70a4da8abfb078aaed59d4c683d5c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.4/ce-linux-x64.tar.gz"
      sha256 "06ae438322a8832245e941263905f37bf4127e83486ee0e08f93b8b7f0879b9e"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
