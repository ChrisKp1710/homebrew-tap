class SysinfoRs < Formula
  desc "🌈 The most beautiful system information tool for macOS"
  homepage "https://github.com/ChrisKp1710/sysinfo-rs"
  url "https://github.com/ChrisKp1710/sysinfo-rs/archive/a7d83cf07c944a840c09282864ce9dc433727ecc.tar.gz"
  version "0.1.0"
  sha256 "9cad7df070f0e1c33a419eaa77f3b1b8b5cc17ae224b3fe11f36182a11d7e4d0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "macOS", shell_output("#{bin}/sysinfo-rs 2>&1")
  end
end
