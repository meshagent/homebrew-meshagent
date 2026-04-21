class MeshagentAT0381 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.38.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.38.1/meshagent-0.38.1-macos.tar.gz"
  sha256 "1078da1b7d59b2028581351d1fadb590c066c052a845a1fdd49ab4c8b5a2319d"
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
