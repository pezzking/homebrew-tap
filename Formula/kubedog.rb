# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.2/kubedog-0.3.2-macos-arm64.tar.gz"
      sha256 "85c6f96a70be43598126a0d24f79c5cb38d92456c9b867a4f910760394ed4846"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.2/kubedog-0.3.2-linux-amd64.tar.gz"
      sha256 "dfa009f6246351a43666dd83b0120daf8c582b3a35dd1da478fb9457d443b124"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.2/kubedog-0.3.2-linux-arm64.tar.gz"
      sha256 "d43672cf60b39f331706ae48dda0addaf4ad7aeda87a80a0d9daadb3675aefb5"
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
