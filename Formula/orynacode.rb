class Orynacode < Formula
  desc "Terminal AI coding agent"
  homepage "https://oryna.ai"
  version "1.16.11"

  if Hardware::CPU.arm?
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-arm64.zip"
    sha256 "172ebeb5680344cf6113cfa91133bf15293a62b7bdb4db6b7797dca3701b0c91"
  else
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-x64.zip"
    sha256 "338cb1809406bd254d69140162e745e8f52cf03e8c78932929498a3d053f0db5"
  end

  license "MIT"

  def install
    bin.install "orynacode"
  end

  test do
    system "#{bin}/orynacode", "--version"
  end
end
