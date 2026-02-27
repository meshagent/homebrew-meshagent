class MeshagentAT02811 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.28.11"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.28.11/meshagent-0.28.11-macos.tar.gz"
  sha256 "c91fc43bbde041d3f13b2a497d1841d9692915bf8aafb36b099674f9e85d127c"
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
