class MeshagentAT0357 < Formula
  desc "meshagent CLI"
  homepage "https://www.meshagent.com"
  license "Apache-2.0"
  version "0.35.7"  # keep in sync with your artifact
  url "https://storage.googleapis.com/meshagent-cli-builds/0.35.7/meshagent-0.35.7-macos.tar.gz"
  sha256 "efe133d6630c483fdc68e331fd170a750cb95f34e77eefc61ba9713407bea6ab"
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
