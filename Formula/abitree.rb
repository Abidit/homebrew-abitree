class Abitree < Formula
  include Language::Python::Virtualenv

  desc "Generate beautiful, icon-rich file trees for your README"
  homepage "https://github.com/Abidit/abitree"
  url "https://files.pythonhosted.org/packages/source/a/abitree/abitree-0.1.0.tar.gz"
  sha256 "8706b0b8014cf047d4fa660b3e2f796a92174a6e57346d2347b7738fa135a970"
  license "MIT"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "abitree", shell_output("#{bin}/abitree --help")
  end
end
