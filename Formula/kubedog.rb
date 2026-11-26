# Written by Kubedog's release script; changes made here by hand are lost with the next release.
class Kubedog < Formula
  desc "Fast desktop app for Kubernetes clusters"
  homepage "https://github.com/pezzking/kubedog"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.6.1/kubedog-0.6.1-macos-arm64.tar.gz"
      sha256 "57651f82522d1541ae9377a44ac24d9349499f955b8e849ffe029066e83c9255"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pezzking/kubedog/releases/download/v0.6.1/kubedog-0.6.1-linux-amd64.tar.gz"
      sha256 "c106afcbd257fdf6203273742b39b33229906d9f14d103ef12ab2d7a98cba95f"
    end
    on_arm do
      url "https://github.com/pezzking/kubedog/releases/download/v0.6.1/kubedog-0.6.1-linux-arm64.tar.gz"
      sha256 "e508ce60be2815c30f4164c4fb6961adb88b40fb1f1ad9d4b643ccbfde57cbfa"
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
