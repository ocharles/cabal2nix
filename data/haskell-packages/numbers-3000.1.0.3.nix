{ cabal, QuickCheck, test-framework, test-framework-quickcheck2 }:

cabal.mkDerivation (self: {
  pname = "numbers";
  version = "3000.1.0.3";
  sha256 = "0w2m2m3vp3lpvnc7wkw6pqfz741a68dma4s0asl7cryykwf94xgz";
  testDepends = [ QuickCheck test-framework test-framework-quickcheck2 ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/DanBurton/numbers#readme";
    description = "Various number types";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
