class Orynacode < Formula
  desc "Terminal AI coding agent"
  homepage "https://oryna.ai"
  version "1.16.18"

  if Hardware::CPU.arm?
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-arm64.zip"
    sha256 "646824123f128dcaf8415a4716863e489f9ce718d0c5fc2b405d7208a34a728a"
  else
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-x64.zip"
    sha256 "49f7f68a4ecace94dcbafcdcac645307c808f78f9a29171bd2f8ceb826d708d9"
  end

  license "MIT"

  def install
    bin.install "orynacode"
  end

  test do
    system "#{bin}/orynacode", "--version"
  end
end
