class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.95.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.0/ce-osx-arm64.tar.gz"
      sha256 "5712c96dbdd0fbec4a2c1ad967ba780bd38152d3a131160c1c88a7e1a24b28b9"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.0/ce-osx-x64.tar.gz"
      sha256 "602020046aa194fc1d409f9da3249a6f733d8103f1da2c068afd57f54ad3ddc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.0/ce-linux-arm64.tar.gz"
      sha256 "37ad8ea6c38fb9e3ac04251b395c4a8f1199b989cbaac724bf10e7c6709dd5bd"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.95.0/ce-linux-x64.tar.gz"
      sha256 "81f54b3ee4b69d200e0a9c25d71950de39dcc38d1cb6cc4ac9e60d55e8a04e36"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
