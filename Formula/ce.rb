class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.75.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.0/ce-osx-arm64.tar.gz"
      sha256 "0a2a044cf9cd8f0bb97d1d092620d42a04778bdafc7ff7acfabd2f453b89c5fa"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.0/ce-osx-x64.tar.gz"
      sha256 "369799f626e0321fe881c7a15b0f486611331bfb75aa2b6bb047875cff12c28d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.0/ce-linux-arm64.tar.gz"
      sha256 "fcb6f8cc1bdb102bdc8faf3181a79a829709e57457e6061e096471ad6472acda"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.75.0/ce-linux-x64.tar.gz"
      sha256 "43aa9208d07e79570b3636a7825557ba73e9a7baed4bc754102a8b2e3e22b6da"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end