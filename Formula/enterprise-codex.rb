class EnterpriseCodex < Formula
  desc "MeshAgent enterprise distribution of OpenAI Codex"
  homepage "https://www.meshagent.com"
  version "0.58.2-meshagent.0.160.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.2/enterprise-codex-0.58.2-meshagent.0.160.0-macos-arm64.tar.gz"
      sha256 "061afede4e9237e23d4535ce1ad5583ce6c1c068369767fd5bd95b9b519909da"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.2/enterprise-codex-0.58.2-meshagent.0.160.0-macos-x86_64.tar.gz"
      sha256 "b5cc899d3b2d36e4a8ca060986225a5412e7486acbecc61988295afd726d907d"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.2/enterprise-codex-0.58.2-meshagent.0.160.0-linux-arm64.tar.gz"
      sha256 "acf0048fba6741d71cbf9b0c3bb0c5e49dc993f9a05b4016c45c11af0ebfd3d7"
    end
    on_intel do
      url "https://storage.googleapis.com/meshagent-enterprise-codex-builds/0.58.2/enterprise-codex-0.58.2-meshagent.0.160.0-linux-x86_64.tar.gz"
      sha256 "b31749146c89731cb7438fa2fefa64b85fdeae72b4e78496e87fbcefd1e842fe"
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
