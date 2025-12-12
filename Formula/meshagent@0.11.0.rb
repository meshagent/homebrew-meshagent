class MeshagentAT0110 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.11.0"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.11.0/meshagent-0.11.0-macos.tar.gz"
  sha256 "b6c1908f078704b8d883d81b5c3943582c1adce580f3f89719192fe504e0c5ef"
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
