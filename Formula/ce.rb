class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.82.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.82.0/ce-osx-arm64.tar.gz"
      sha256 "d5720bc3f9be272751afccd2e554a06280505938243befaaf99c3177eecce53b"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.82.0/ce-osx-x64.tar.gz"
      sha256 "8c8d97f5b21de31a554e26d56247caa218ed5a17be49d8f1eff1ef41bf3487a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.82.0/ce-linux-arm64.tar.gz"
      sha256 "d19cb19a93de8273e929a0921a2213319d979a8104767b4013eba5fbabd5e363"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.82.0/ce-linux-x64.tar.gz"
      sha256 "0f49a08023daba92876667e775932bf3835520b02780c443b11a0c10ce82c1fa"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
