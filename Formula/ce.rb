class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.88.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.88.0/ce-osx-arm64.tar.gz"
      sha256 "32792d72ed0e37d20f84c5b8b73ab68ad7757b807eb85104bb309fb215d0982e"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.88.0/ce-osx-x64.tar.gz"
      sha256 "bb1efd6ddcffd3ccefa982eb53797fcbccb7bcc42f860c586b6a4daa22595e6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.88.0/ce-linux-arm64.tar.gz"
      sha256 "fb47e3107e231e93378504628788aee9b96cd55ae1abf93ac078499f616891b2"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.88.0/ce-linux-x64.tar.gz"
      sha256 "9db4b62486a8421f424cc5f9de2123502843f5cec70c8d5e836aad3f079e2210"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
