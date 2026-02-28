class MeshagentAT02814 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.14"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.14/meshagent-0.28.14-macos.tar.gz"
  sha256 "63c6bf2d66a5a3b113190008aec9f58efad8398a7bd552b800d013f8e3ad76aa"
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
