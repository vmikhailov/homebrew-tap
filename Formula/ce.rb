class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.106.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.2/ce-osx-arm64.tar.gz"
      sha256 "e7dcf5c292fd25c11d20ab99db046b358f0f8e86e55d7edf6722709b1e09d47b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.2/ce-osx-x64.tar.gz"
      sha256 "2bd3cc7a5b2d28d1cd90b848371438b6aa37b0e72fcec8fdff55aef6d6aec138"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.2/ce-linux-arm64.tar.gz"
      sha256 "111177be6d9478ad516e2915c52d4f9d1911be0c4200b200cb2c87f83f514a94"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.106.2/ce-linux-x64.tar.gz"
      sha256 "8e325c90f433d324b393d9ca7e52abe25930dc87213273a2ce5c1401bea76483"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
