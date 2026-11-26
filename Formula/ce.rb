class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.103.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.103.0/ce-osx-arm64.tar.gz"
      sha256 "8fb1e19d068bcca25aee0954444eeef3cb564356da4c3bdda09c89b63358fd84"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.103.0/ce-osx-x64.tar.gz"
      sha256 "cf01429c3027a80cb2acd62a34cf7646b625b0f144ebdd9bf3cbdb86cedec884"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.103.0/ce-linux-arm64.tar.gz"
      sha256 "c975dbb2b4920d92364c815088726a2ac80b5a9687409d4963dfa797304ec3fa"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.103.0/ce-linux-x64.tar.gz"
      sha256 "d68c1eefb3559bd704f77957c824c5fd91ae8891ee8743c92caccce97171a82a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
