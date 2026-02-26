class MeshagentAT0287 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.7"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.7/meshagent-0.28.7-macos.tar.gz"
  sha256 "7145081b531fbc07ebbd99f13b54977bc2e24f78cb551a012e110c93d727c94d"
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
