class MeshagentAT0256 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.25.6"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.25.6/meshagent-0.25.6-macos.tar.gz"
  sha256 "56a7f0df7da7932223ba1f41f99d4b5afd991d59efa69d12a7e7b0f4800d9bf4"
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
