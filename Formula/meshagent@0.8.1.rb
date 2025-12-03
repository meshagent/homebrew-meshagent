class MeshagentAT081 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.8.1/meshagent-0.8.1-macos.tar.gz"
  sha256 "35351460b9dc462639b556a071a88bea9d6db85926984195898c7a9e8c2d702f"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.8.1/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8b0d628def76ad728159f4e597c09388eb48f2f4afd38de568bc42e54874b544"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
