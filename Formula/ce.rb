class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.95.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.1/ce-osx-arm64.tar.gz"
      sha256 "af26ea5ee7bfb8daa3bca5a372664d23d6d4a0f84b3b8a664e03e07e5660636a"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.1/ce-osx-x64.tar.gz"
      sha256 "411965cabe224cca11c2804bcb76bf7ae5f25f98ca4b63cd06a042e71b1070f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.1/ce-linux-arm64.tar.gz"
      sha256 "489573901513f57a572bbf6430e11eff7af27a3c269d5b460eb81ad6fcce4f5d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.1/ce-linux-x64.tar.gz"
      sha256 "6e0ed0d10e8a7401710fbca755bb39ce409993cd35ad4f1028f94317713eed66"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
