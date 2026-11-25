# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.1/kubedog-0.3.1-macos-arm64.tar.gz"
      sha256 "15f1f102ea607e5f472a02f6c8c5eee81d6da4fc9e1cbee964e9b4036fb98643"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.1/kubedog-0.3.1-linux-amd64.tar.gz"
      sha256 "b30a71125eb25dea1bfc2724b087de5cfda9683cf47196f85710a49c63e95351"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.3.1/kubedog-0.3.1-linux-arm64.tar.gz"
      sha256 "18518f217d0c39e3cd176dd59483ffaf30b9a74e81601695822069bc7aea7f69"
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
