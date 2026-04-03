class MeshagentAT0356 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.35.6"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.35.6/meshagent-0.35.6-macos.tar.gz"
  sha256 "f49dd53d6aa62d98b417e3f3a68a2627c57b7b81fce2ed65e7969a6e2138a0bb"
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
