class MeshagentAT0314 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.31.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.31.4/meshagent-0.31.4-macos.tar.gz"
  sha256 "ad8a11c9fbffbd32331eb507598c5e22612c6c0fc22a8e9dea203dd7657894df"
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
