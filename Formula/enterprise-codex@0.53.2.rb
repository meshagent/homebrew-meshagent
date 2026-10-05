class EnterpriseCodexAT0532 < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.53.2-meshagent.0.153.4"
  license "Apache-2.0"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.2/enterprise-codex-0.53.2-meshagent.0.153.4-macos-arm64.tar.gz"
      sha256 "75fd24a1c56ad5bbaa097bc05fe8bd0a8e6a619908d3277d90b1f4cd5a1eac3e"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.2/enterprise-codex-0.53.2-meshagent.0.153.4-macos-x86_64.tar.gz"
      sha256 "2c6ffaec3434343f86e0162b7932ea2d90486b646aebff996f0bdd5d468db26d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.2/enterprise-codex-0.53.2-meshagent.0.153.4-linux-arm64.tar.gz"
      sha256 "18678d4cce21c9b0c11cf254a491e4b9cacc9b87fd2c6577aaca0f47e88803d3"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.53.2/enterprise-codex-0.53.2-meshagent.0.153.4-linux-x86_64.tar.gz"
      sha256 "f77049f7d7d908476c897920b1f3a30cb26031969aa1297dc3646edb982dcda6"
    end
  end

  def install
    libexec.install "codex", "codex-code-mode-host"
    libexec.install "codex-resources" if OS.linux?
    bin.install_symlink libexec/"codex"
    pkgshare.install "LICENSE", "NOTICE"
  end

  test do
    assert_match "codex-cli 0.153.4-meshagent.1", shell_output("#{bin}/codex --version")
    system libexec/"codex-code-mode-host", "--help"
  end
end
