class MeshagentAT0290 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.29.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.29.0/meshagent-0.29.0-macos.tar.gz"
  sha256 "36b36fc622a2a548504c06789148ae4e56c413e5dbb176330f2592cf70a90176"
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
