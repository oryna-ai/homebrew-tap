class Orynacode < Formula
  desc "Terminal AI coding agent"
  homepage "https://oryna.ai"
  version "1.16.3"

  if Hardware::CPU.arm?
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-arm64.zip"
    sha256 "bd4e8dbc0eec22dc731729164181486167b1448b95c9fa48de31c1d853ddccff"
  else
    url "https://github.com/oryna-ai/orynacode/releases/download/v#{version}/orynacode-darwin-x64.zip"
    sha256 "e9b817e11aff1334e196c1106f94f3753306a4c14e9dc27d44ad311ea882fdb3"
  end

  license "MIT"

  def install
    bin.install "orynacode"
  end

  test do
    system "#{bin}/orynacode", "--version"
  end
end
