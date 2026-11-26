# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.7.1/kubedog-0.7.1-macos-arm64.tar.gz"
      sha256 "be61e4b58103a20d28ec3b910e63e569b9b33279d98918aea90d1f281a7b32b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.7.1/kubedog-0.7.1-linux-amd64.tar.gz"
      sha256 "58a3eaed2f4620ca3290f778cff6736b8e2134e7959df23a17476fe586da0b3d"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.7.1/kubedog-0.7.1-linux-arm64.tar.gz"
      sha256 "5175c72a883f96a4a37136d178a6bb5973d812b998573e03be958fdda7668f0c"
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
