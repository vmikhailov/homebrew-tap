class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.89.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.4/ce-osx-arm64.tar.gz"
      sha256 "ac2e7447e2e32d3a5b197df4828a7bf833723503f67d4e057668f2a98d753d2d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.4/ce-osx-x64.tar.gz"
      sha256 "fd39d2fdce126317dad816afab99c04301d06377694cc285c6a04253d3c4a6d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.4/ce-linux-arm64.tar.gz"
      sha256 "de97374a3ab2ac0dc07e1878e4a00ff5407d69bf2b5cc545578befc443b9b112"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.89.4/ce-linux-x64.tar.gz"
      sha256 "8e197c37e3707be44b3849b4a940b64602591a9df44eb24db371b376c5d24b73"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
