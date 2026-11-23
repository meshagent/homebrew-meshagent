class EnterpriseCodexAT0572 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.57.2-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.2/enterprise-codex-0.57.2-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "22e8316918c9640931f694475967033e2e7709ff30c21a2430f75ae3f898a7b0"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.2/enterprise-codex-0.57.2-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "a7998715631ecc73862c3ca1ccb40172ab4e47cdd1e9196ad3d1527b6ac14985"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.2/enterprise-codex-0.57.2-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "93467590d95c85c4baaad6f00c563adb457def7910d4ea71bced41a54ff46a94"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.57.2/enterprise-codex-0.57.2-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "2d4aabbc42847b3243991ee94fd412690ca8b20f92884bab7276e3b790e6aae1"
    end
  end

  def install
    libexec.install "codex", "codex-code-mode-host"
    libexec.install "codex-resources" if OS.linux?
    bin.install_symlink libexec/"codex"
    pkgshare.install "LICENSE", "NOTICE"
  end

  test do
    assert_match "codex-cli 0.160.0-meshagent.1", shell_output("#{bin}/codex --version")
    system libexec/"codex-code-mode-host", "--help"
  end
end
