class Caqe < Formula
  desc "CAQE is a certifying solver for quantified Boolean formulas (QBF) based on the CEGAR-based clausal abstraction algorithm"
  homepage "https://www.react.uni-saarland.de/tools/caqe/"
  url "https://www.react.uni-saarland.de/tools/caqe/downloads/caqe-1.tar.gz"
  sha256 "2709d145069b9be5baa1b934a9917fb5b5635cdbb61a57811e5d2e6f48415707"

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
