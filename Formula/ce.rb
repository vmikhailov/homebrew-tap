class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.87.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.2/ce-osx-arm64.tar.gz"
      sha256 "86c3d56a5ee1efd94f706caee461d8e31b20d1a6f33f1843d56a4455d2d4c044"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.2/ce-osx-x64.tar.gz"
      sha256 "676776dc04723edfc2b54f00ea0710b6970a000c1b9f284fd1a36445127075e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.2/ce-linux-arm64.tar.gz"
      sha256 "3176f1de03401f4e3f9994506a934332d8ab77bd8292f2a047fa74f138d8a10c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.2/ce-linux-x64.tar.gz"
      sha256 "a2e639286b4e571916b38840452634c8560bb5f45a17d07d1c7d94ccf23e2e47"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
