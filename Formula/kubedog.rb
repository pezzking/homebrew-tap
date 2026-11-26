# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.6.0/kubedog-0.6.0-macos-arm64.tar.gz"
      sha256 "2f846d749f0a5225e597461fbf6d371418498b31a9ade6bae9cdbb883de47805"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.6.0/kubedog-0.6.0-linux-amd64.tar.gz"
      sha256 "a83329c6367a2d5e74e275987006222cc127a8cde12700333b9980e9539d57a6"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.6.0/kubedog-0.6.0-linux-arm64.tar.gz"
      sha256 "626b8529d76f663870602d02e0ee4dfcc07db500d5202ca7b8b412ab169730f9"
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
