class MeshagentAT0312 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.31.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.31.2/meshagent-0.31.2-macos.tar.gz"
  sha256 "21852b6d3cd6fad5b2e6f48559433e3fbd0edbde84504fb983877c746463ee43"
  depends_on macos: :sonoma
  depends_on "openssl@3"
  preserve_rpath

  def install
    (libexec/"meshagent").install Dir["*"]
    # Create a wrapper that sets SSL_CERT_FILE / SSL_CERT_DIR to Homebrew's OpenSSL bundle
    (bin/"meshagent").write_env_script libexec/"meshagent/meshagent",
      SSL_CERT_FILE: etc/"openssl@3/cert.pem",
      SSL_CERT_DIR:  etc/"openssl@3/certs"
  end

end
