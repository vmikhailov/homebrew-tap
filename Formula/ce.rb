class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.13/ce-osx-arm64.tar.gz"
      sha256 "39fdc03b87ca61954c042e022eac5c5b86ad5fd5909fe9a3107b3e9c96b388f9"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.13/ce-osx-x64.tar.gz"
      sha256 "fec79e53f332348515b4289cf6f8d7181f178e62217c65a909cebcaf4834c02b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.13/ce-linux-arm64.tar.gz"
      sha256 "009e36b7d89ad851ae19cc9d46b785f070ab549fb0aec7b372c18f17a59089e4"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.13/ce-linux-x64.tar.gz"
      sha256 "3b53eb9db2e740e3e331f82a042b998518f2c8793c62ff1add30bf082aedad43"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
