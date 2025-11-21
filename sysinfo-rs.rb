class SysinfoRs < Formula
  desc "🌈 The most beautiful system information tool for macOS"
  homepage "https://github.com/ChrisKp1710/sysinfo-rs"
  url "https://github.com/ChrisKp1710/sysinfo-rs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "macOS", shell_output("#{bin}/sysinfo-rs 2>&1")
  end
end
