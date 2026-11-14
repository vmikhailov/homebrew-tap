class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.87.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-osx-arm64.tar.gz"
      sha256 "7f1d7acbc6792d6b1e7684d2c673f29d36ff87030bbfe646106354514e6f8a03"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-osx-x64.tar.gz"
      sha256 "78e3d63297a13022d2aee7d6d9e14cd535568582ec60c6ed3292fcce7dc51ba7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-linux-arm64.tar.gz"
      sha256 "6d1be18793e26c4cee1212bedcc41d00ef31d01f8a7282370006b8fe72ae7698"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.1/ce-linux-x64.tar.gz"
      sha256 "8defd1b787d9e2ec5e46d49c4ed418bf916a805f65c69140e742772323f1a797"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
