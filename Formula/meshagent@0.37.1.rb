class MeshagentAT0371 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.37.1"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.37.1/meshagent-0.37.1-macos.tar.gz"
  sha256 "90ee28a41073868295c72b6f1d7262466c4b8202885cd597653649e497aa1f36"
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
