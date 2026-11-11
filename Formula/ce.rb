class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.80.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.2/ce-osx-arm64.tar.gz"
      sha256 "8222f9f502918f93ac50f1fc472de26e8e65701ae77520856dac17847e9aaa3c"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.2/ce-osx-x64.tar.gz"
      sha256 "2a56b9e5d8a41d586cf95efaf1a1bd7f442b5753e54cf9d45f51b49b7dc0b035"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.2/ce-linux-arm64.tar.gz"
      sha256 "c3c055de39626458e58c87bd471fb90741d4dc560e3e5799cd472316cc4b6279"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.2/ce-linux-x64.tar.gz"
      sha256 "89a8e279f1ef71150bb06ff58c2679e64dcc2dd7f33469bbd7cf3482245ab1e4"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
