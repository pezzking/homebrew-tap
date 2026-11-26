# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.5.1/kubedog-0.5.1-macos-arm64.tar.gz"
      sha256 "38ff2ad364e7f9fa2df300c86249a1919a0c2c79e4e35948154acbb0c6447d9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.5.1/kubedog-0.5.1-linux-amd64.tar.gz"
      sha256 "5d43b8e5555c3c39bf9e09af75893b202dbf05800b520ee11be01e0aeb17dd32"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.5.1/kubedog-0.5.1-linux-arm64.tar.gz"
      sha256 "23471e486b6cfd1bf48703c31b10ccf495ac40c08deb539018f151500fffe4bb"
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
