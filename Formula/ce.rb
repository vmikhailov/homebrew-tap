class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.97.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.97.0/ce-osx-arm64.tar.gz"
      sha256 "8bc415bcc39cae8d8cc8584344e7388cfa7552293036b8b5732756fd079dce49"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.97.0/ce-osx-x64.tar.gz"
      sha256 "bff347dd85b2bddc299f24b246b212ad9796b4a96acf447e2b9f7b2ce3cc4162"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.97.0/ce-linux-arm64.tar.gz"
      sha256 "dbc98102f8eafff9fdb5fd5d88f4a85594e0ab6cb128e7e6377c5defe4065945"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.97.0/ce-linux-x64.tar.gz"
      sha256 "d1ac04f7897be8da4c6ed35f597281b3d39a82ba208bf3d638128dcf68cc1af0"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
