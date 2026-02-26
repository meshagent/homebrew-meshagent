class MeshagentAT0286 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.6"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.6/meshagent-0.28.6-macos.tar.gz"
  sha256 "ec976ac0d95b6db094548c5ebce92f2578fd36260d98a1fde65f5d58af290afc"
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
