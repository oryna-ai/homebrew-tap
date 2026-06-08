class Orynacode < Formula
  desc "Terminal AI coding agent"
  homepage "https://oryna.ai"
  version "1.16.2"

  if Hardware::CPU.arm?
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-arm64.zip"
    sha256 "7114a14c07a680a67e905460fe60f23928399a34b0dfd1394caca8f0b17632d6"
  else
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-x64.zip"
    sha256 "91756113a8b5421d786596b60bb5ff098f8fc5ee95605fc6cf66e53e320d0bed"
  end

  license "MIT"

  def install
    bin.install "orynacode"
  end

  test do
    system "#{bin}/orynacode", "--version"
  end
end
