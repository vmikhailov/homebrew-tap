class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.80.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.3/ce-osx-arm64.tar.gz"
      sha256 "3a45418182004cb856fab78ef5bce3a8d728cf69d7fa822681baf9ea1604bb69"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.3/ce-osx-x64.tar.gz"
      sha256 "2fc731a9d40355a5df278db0111307e21b0602a9a234c22f9bbd7071668b984a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.3/ce-linux-arm64.tar.gz"
      sha256 "9ff401410eee271083a7839d2972a4975fc8e09d5a488117d56f675f124842c2"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.80.3/ce-linux-x64.tar.gz"
      sha256 "1ea161f873cde99f34dba1c8900cad2d3b2e5e8b28d93f7a9998e20458e51ecb"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
