class MeshagentAT091 < Formula
  desc "meshagent cli"
  homepage ""
  license "Apache-2.0"

  url "https://storage.googleapis.com/meshagent-cli-builds/0.9.1/meshagent-0.9.1-macos.tar.gz"
  sha256 "b6fc770f47baad8072bbfa24242e7db674d0ad0aa06a9ed23dc86ba654c4b424"

  bottle do
    root_url "https://storage.googleapis.com/meshagent-cli-builds/0.9.1/bottles"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "a766a5c6c9fc1c5f9c2cb6abb1a176ee3661f9fa8b98718d61346cae759ec08b"
  end

  def install
    (libexec/"meshagent").install Dir["*"]
    bin.install_symlink libexec/"meshagent/meshagent"
  end

end
