class MeshagentAT0284 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.4"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.4/meshagent-0.28.4-macos.tar.gz"
  sha256 "ef0cd08f700f1da5e42ad6f4e510cac3f6992662c5e0309a0b793ff2e59f5a30"
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
