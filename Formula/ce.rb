class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.80.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.4/ce-osx-arm64.tar.gz"
      sha256 "292378d7b7e12dd891355e1d85382e69e586f4c37b900343a533ce3a5c69049b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.4/ce-osx-x64.tar.gz"
      sha256 "b881fc47ce25597ff8ab9ac45b48cb1b9ddb222053e3d01ceb87100921cb2e4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.4/ce-linux-arm64.tar.gz"
      sha256 "63de31a505184d73c8ec5b9a78f329217b64a55ddf892c366726563625359d3d"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.4/ce-linux-x64.tar.gz"
      sha256 "07113ccb81b2356344c84a4b2199776f395e9631094538da6827b62cb4580feb"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
