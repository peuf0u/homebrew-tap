# Repackages mobile-next's official mobilecli release binaries; we never host
# or rebuild them. The version is pinned to one simsquad has been tested
# against: bump it deliberately (both urls + both sha256 values).
class Mobilecli < Formula
  desc "Automation CLI for iOS and Android devices, simulators and emulators"
  homepage "https://github.com/mobile-next/mobilecli"
  license "FSL-1.1-ALv2"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/mobile-next/mobilecli/releases/download/1.0.13/mobilecli-1.0.13-macos-arm64.zip"
      sha256 "7144e1844ee72720d607e9a6e08e8023a67ea2bec804f3b442316307b5ffcd85"
    end
    on_intel do
      url "https://github.com/mobile-next/mobilecli/releases/download/1.0.13/mobilecli-1.0.13-macos-amd64.zip"
      sha256 "1943640547ee263ee61b79840c17f1de9aa9c1f9da586d099bf4781e419341bf"
    end
  end

  def install
    bin.install "mobilecli"
  end

  test do
    assert_match "mobilecli version #{version}", shell_output("#{bin}/mobilecli --version")
  end
end
