# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.5.0/kubedog-0.5.0-macos-arm64.tar.gz"
      sha256 "9b4c26cae77cf394210791c753f6c2240c84f41eb3ada4d73b60b560dd598a22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.5.0/kubedog-0.5.0-linux-amd64.tar.gz"
      sha256 "6637d13a175b57bc93cd23545d3a6d537b3bd1008fe42f0b148cb78156791731"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.5.0/kubedog-0.5.0-linux-arm64.tar.gz"
      sha256 "ea782214a925ab622a7fdaed5d903dac8de67513a0fe956de8b431007e3805cf"
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
