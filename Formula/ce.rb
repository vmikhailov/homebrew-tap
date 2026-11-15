class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.87.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.3/ce-osx-arm64.tar.gz"
      sha256 "394be0ae9674aaaa66685c24d92e7ce88f37176736b2f7a15279c0eb4b3b0e2e"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.3/ce-osx-x64.tar.gz"
      sha256 "e3f824e950f6818879e044c493417d48351b02950dbc04a17b9a71aee146e06e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.3/ce-linux-arm64.tar.gz"
      sha256 "54bea0fa9ef8d190bbbf4db6eed0ee4af3d96fa7f2c74e2464a2a87cadf7ce70"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.87.3/ce-linux-x64.tar.gz"
      sha256 "eb15d2e07290d65e2b145399c294db4c06cf5d511d748994af0ab28cd3577f92"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
