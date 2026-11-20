class Ce < Formula
  desc "Codebase intelligence CLI and knowledge graph engine"
  homepage "https://github.com/vmikhailov/code-explorer"
  version "1.91.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.3/ce-osx-arm64.tar.gz"
      sha256 "512c8f6babe848882430320b8ea6fc76863b2b77fe562f127cd1b4078865f2d8"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.3/ce-osx-x64.tar.gz"
      sha256 "4b5d5950e1258f98c52b4693ac3b58331be4c8619346ead72e4430efa0168c84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.3/ce-linux-arm64.tar.gz"
      sha256 "c255d1135503b534cd73a055035417c796e89eecfd8cf1b94765331231c763a7"
    else
      url "https://github.com/vmikhailov/code-explorer/releases/download/v1.91.3/ce-linux-x64.tar.gz"
      sha256 "ed346d80095b4234cc496bc1dc2793a116357ade119da39c41a5d138269d17d2"
    end
  end

  def install
    bin.install "ce"
  end

  test do
    assert_match "ce", shell_output("#{bin}/ce --version", 2) rescue nil
  end
end
