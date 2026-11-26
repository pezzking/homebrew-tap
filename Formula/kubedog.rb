# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.4.1/kubedog-0.4.1-macos-arm64.tar.gz"
      sha256 "fd603bb1b21c7ae7a543738538643356822087a381f60c9b0bcbeb988458f035"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.4.1/kubedog-0.4.1-linux-amd64.tar.gz"
      sha256 "6042eb8f6edcbd2d5f00167f507fa843cf5a6b779d40733b9dcb4329997b47b9"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.4.1/kubedog-0.4.1-linux-arm64.tar.gz"
      sha256 "a15da8bd2d35a1b129b07663e84ff472eb65b3ab848499d59d3182f175f1be10"
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
