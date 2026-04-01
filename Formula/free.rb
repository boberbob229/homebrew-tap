class Free < Formula
  desc "free ported from linux to macos cuz i was pissed off"
  homepage "https://github.com/boberbob229/free"
  url "https://github.com/boberbob229/free/archive/refs/tags/real.tar.gz"
  sha256 "36dd7d5695b81330cee214d10519c10d4355a8545a5f0bd81b78e7fef621f98d"
  license "WTFPL"
  version "1.0.0"

  conflicts_with "procps", because: "both install a `free` command"

  def install
    bin.install "bin/free"
  end

  test do
    assert_match "total", shell_output("#{bin}/free")
  end
end
