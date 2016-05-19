class Caqe < Formula
  desc "CAQE is a certifying solver for quantified Boolean formulas (QBF) based on the CEGAR-based clausal abstraction algorithm"
  homepage "https://www.react.uni-saarland.de/tools/caqe/"
  url "https://www.react.uni-saarland.de/tools/caqe/downloads/caqe-2.tar.gz"
  sha256 "1bfd86d849927f0e29bb9172deb8db4fe68164c8f540d6495bc2f08144de11ab"

  def install
    system "./configure"
    system "make"
    bin.install "caqe"
  end

  test do
    path = testpath/"test_sat.qdimacs"
    qdimacs = "p cnf 4 4\na 1 2 0\ne 3 4 0\n1 3 0\n-1 4 0\n-3 -4 0\n-1 2 4 0\n\n"
    path.write qdimacs
    
    # has return code 10 for satisfying formulas
    shell_output("#{bin}/caqe #{path}", 10)
  end
end
