class MeshagentAT0193 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.19.3"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.19.3/meshagent-0.19.3-macos.tar.gz"
  sha256 "8d3221c7621d56655bb8b1410c5732d70164b0e6343c4a9633e6c6af1e203be4"
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
