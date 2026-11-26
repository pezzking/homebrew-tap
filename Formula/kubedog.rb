# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.8.0/kubedog-0.8.0-macos-arm64.tar.gz"
      sha256 "6160d1c1ee113095a3962cd9f339f79358b684f8467c396bf93c5450f1591d13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.8.0/kubedog-0.8.0-linux-amd64.tar.gz"
      sha256 "c5625465a113e797022d64406841aa67c2061058ed7a79b4cb8d19d7936dce9d"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.8.0/kubedog-0.8.0-linux-arm64.tar.gz"
      sha256 "9b2a80babb2481484b3856d6db4b811f52bb1ac39b01b4281ac7fa43a02b4b16"
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
