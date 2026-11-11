class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.80.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.5/ce-osx-arm64.tar.gz"
      sha256 "817fdc1dad765513e5b2761c5c3c606c9c8f383581900c9c3756ec07bf634aad"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.5/ce-osx-x64.tar.gz"
      sha256 "1cf1bcc140ae4e00913399542182ed858dd962a0a948ddfb254984d30ed1527f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.5/ce-linux-arm64.tar.gz"
      sha256 "80999bb6bec4fd975858edfbbfa02bcb6d2b59e350e2d62b917f0679f7ec965b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.5/ce-linux-x64.tar.gz"
      sha256 "98af573338782fa4fe0e5b2051f0d7279225cbee5a883a9bf1fda02e644267a6"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
