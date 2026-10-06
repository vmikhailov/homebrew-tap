class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.24.0/ce-osx-arm64.tar.gz"
      sha256 "11043c6c382f043096a005aaf441c5c0e3aecb4f13e390d04a07918a21d42102"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.24.0/ce-osx-x64.tar.gz"
      sha256 "bd0b7ee6a48735655070f9769a4e8f565e0f8408e57e06c8ec79faa4f21f24a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.24.0/ce-linux-arm64.tar.gz"
      sha256 "679566de2e54e14ed76d060d0c526b5beb985781f06d0d243052f851cf72e2b6"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.24.0/ce-linux-x64.tar.gz"
      sha256 "338db1aaf00a7e3793760bc3f103e5e89976e2349069f53f41441333a854f380"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
