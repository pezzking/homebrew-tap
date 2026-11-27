# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.9.0/kubedog-0.9.0-macos-arm64.tar.gz"
      sha256 "c43b30556aaf5897a6d815c620e03baedea91358b4e3d08737f6876448425e1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.9.0/kubedog-0.9.0-linux-amd64.tar.gz"
      sha256 "fb404f3532e249cc88ce1eb4195e4bb5b9a12b48df7dcc446ae2097a88947680"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.9.0/kubedog-0.9.0-linux-arm64.tar.gz"
      sha256 "173beaba6aee04b0dd499fd95b1639b2e4c926e4d7470b064e406158fe2368e7"
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
