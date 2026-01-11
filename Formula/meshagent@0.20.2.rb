class MeshagentAT0202 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.20.2"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.20.2/meshagent-0.20.2-macos.tar.gz"
  sha256 "b2839a88a21ec993317608e899218642bd4189b0b682e6643aee837d476bebbc"
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
