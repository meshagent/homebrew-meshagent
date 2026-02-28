class MeshagentAT02813 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.13"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.13/meshagent-0.28.13-macos.tar.gz"
  sha256 "86461315b8b244dce4f54cb85585fcc31d3a5d111f5edf59c18d31c18b422644"
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
