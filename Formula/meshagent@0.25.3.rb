class MeshagentAT0253 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.25.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.25.3/meshagent-0.25.3-macos.tar.gz"
  sha256 "37faab2c418584d15a9c294cbc9d261449652134c00c45ff09af271eb55d71f5"
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
