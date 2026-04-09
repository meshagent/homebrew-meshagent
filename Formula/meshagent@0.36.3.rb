class MeshagentAT0363 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.36.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.36.3/meshagent-0.36.3-macos.tar.gz"
  sha256 "514751e685167ef1ef892f062a0530d5445296bc6ca287605abd324ba9370d7e"
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
