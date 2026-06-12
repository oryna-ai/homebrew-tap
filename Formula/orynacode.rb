class Orynacode < Formula
  desc "Terminal AI coding agent"
  homepage "https://oryna.ai"
  version "1.16.10"

  if Hardware::CPU.arm?
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-arm64.zip"
    sha256 "35380254ab2985fa35679db5f3018faf5353d420a8e5b85a2ef2e7aac7186f4a"
  else
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-x64.zip"
    sha256 "d2ce3a742a599f12bf71b6107b0ce3b6bc381d75c84391a6c675b53cdc7324e7"
  end

  license "MIT"

  def install
    bin.install "orynacode"
  end

  test do
    system "#{bin}/orynacode", "--version"
  end
end
