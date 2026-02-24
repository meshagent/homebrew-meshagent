class MeshagentAT0281 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.1/meshagent-0.28.1-macos.tar.gz"
  sha256 "9a4b8c6fde720dd837ecce9ef16727703874a3b2076a101d475d9ab6c80aeba0"
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
