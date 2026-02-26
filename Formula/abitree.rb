class Abitree < Formula
  include Language::Python::Virtualenv

  desc "Generate beautiful, icon-rich file trees for your README"
  homepage "https://github.com/Abidit/abitree"
  url "https://files.pythonhosted.org/packages/source/a/abitree/abitree-0.1.1.tar.gz"
  sha256 "4e90dd7d42ecc452009c7b553d073210e6c7f3e48e87c9984904cae8660578ba"
  license "MIT"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "abitree", shell_output("#{bin}/abitree --help")
  end
end
