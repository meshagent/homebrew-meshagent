class EnterpriseCodexAT0561 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.56.1-meshagent.0.160.0"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "c4c53f55ec3d8342eba40f1bd2d3d890618f1056e26c25da9cb548d1a5f9fd50"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "367daf3bd5c23284d53ac908d220ba980108e280df1aa8eeafaf7638c653d3ac"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "5a1a5a0440d30991463b147d322cb611f33a03e61a985cfa35e8b1b40e118aba"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.56.1/enterprise-codex-0.56.1-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "d5cbce82d24963d361c59ef4cde1c75e640b398fc4e30175d2bf4802d6ea197c"
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
