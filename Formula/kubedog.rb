# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.4.0/kubedog-0.4.0-macos-arm64.tar.gz"
      sha256 "d5a7319f40f95c4af8a6d48ad6eac3dae6a603b00061599e2b95d64dba807673"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.4.0/kubedog-0.4.0-linux-amd64.tar.gz"
      sha256 "2ecd75d94844e69c36a450f02b1ec24e0c54599210aabf01a1bfe77932091588"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.4.0/kubedog-0.4.0-linux-arm64.tar.gz"
      sha256 "5597e398eb9db4440a3b931cf9f27c01ebfba16d5b75810dba531693d230cedb"
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
