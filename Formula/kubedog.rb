# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/pezzking/kubedog/releases/download/v0.3.0/kubedog-0.3.0-macos-arm64.tar.gz"
    sha256 "1adc6700504a95af1bfaf1111c097b16719f2cf6dc3677c518254745ef6e28d9"
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.0/kubedog-0.3.0-linux-amd64.tar.gz"
      sha256 "fef471374d87c3df12b6cfffd37b6474ddceddfb0af06cf57beba5072cb1aa3c"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.0/kubedog-0.3.0-linux-arm64.tar.gz"
      sha256 "7419203e05b136b8d7841116ed6fc7d4464d55f2547928e880bb8af328d685e2"
    end
  end

  def install
    bin.install "kubedog"
    doc.install "THIRD-PARTY.md", "THIRD-PARTY-LIBRARIES.txt", "licenses"
  end

  def caveats
    <<~EOS
      Kubedog uses your own kubectl. If you don't have it yet:
        brew install kubernetes-cli
      Start it with: kubedog
    EOS
  end

  test do
    assert_equal "kubedog #{version}", shell_output("#{bin}/kubedog --version").strip
  end
end
