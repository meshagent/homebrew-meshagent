class MeshagentAT0313 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.31.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.31.3/meshagent-0.31.3-macos.tar.gz"
  sha256 "e0840acd285e631cdc3eecbe61763de2f457f463bccbe48c1454c4e30eca608a"
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
