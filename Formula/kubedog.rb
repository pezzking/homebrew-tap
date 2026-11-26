# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.7.0/kubedog-0.7.0-macos-arm64.tar.gz"
      sha256 "d5e33648a73276254e0e8487fafdbd547985b2ead7cc531a9fe73213973f1e2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.7.0/kubedog-0.7.0-linux-amd64.tar.gz"
      sha256 "431ab8102c1fb29d81eeafc15f947a51886f4b4cfe816febde3783937f1e7dcc"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.7.0/kubedog-0.7.0-linux-arm64.tar.gz"
      sha256 "99589f3859cb876586fb581809cf2ef35bec9963d11069e6bc1b554eaaffcf0d"
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
