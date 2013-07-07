{ cabal, lifted-base, monad-control, transformers, transformers-base }:

cabal.mkDerivation (self: {
  pname = "io-choice";
  version = "0.0.1";
  sha256 = "0jwxqs65g88q9l0w4xzllj7svz3qr2zgiaq2fyq5jmh33lz74r63";
  buildDepends = [ lifted-base monad-control transformers transformers-base ];
  doCheck = false;
  meta = {
    description = "Choice for IO and lifted IO";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
