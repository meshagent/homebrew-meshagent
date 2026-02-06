class MeshagentAT0257 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.25.7"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.25.7/meshagent-0.25.7-macos.tar.gz"
  sha256 "312ff39f8c71bca48edda03fa0c524efc6d00717683acc93fd603c61ea207db7"
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
