class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.107.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.1/ce-osx-arm64.tar.gz"
      sha256 "12f791e6bd8c55dd696ffcb6e028c7393fc04c32ddbccc2971e60e2da2b1b24d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.1/ce-osx-x64.tar.gz"
      sha256 "833488349e7ba6c46e06631fea1afdffecd8080e6aab96c4627ce093ec3c7b53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.1/ce-linux-arm64.tar.gz"
      sha256 "88d3b08f9bfac59c4c302b8cf72ad31d9bc5c8cc14301c17d3f02b9e29e17c20"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.107.1/ce-linux-x64.tar.gz"
      sha256 "1abbe6126426d2e77ff2a995705e8c7e8e0efc8bbd1d900e5b01fb1605e2ec5b"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
