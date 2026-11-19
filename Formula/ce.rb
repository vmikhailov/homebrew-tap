class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.90.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.10/ce-osx-arm64.tar.gz"
      sha256 "094a29850132418eb3b799b63435afe212fef8d63338175a37c8ac567949a662"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.10/ce-osx-x64.tar.gz"
      sha256 "db051f93b48c06f94aa9d2a816f0a84f170844fba70722905d40f873d2c132a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.10/ce-linux-arm64.tar.gz"
      sha256 "886dc192618997ca200fc68284a7eec985d32f1287a7d839b16a92b190f6c949"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.90.10/ce-linux-x64.tar.gz"
      sha256 "8c87d122a58db730ded1338e734ccd79e27baf9d208750d4e5996ce799b9342a"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
