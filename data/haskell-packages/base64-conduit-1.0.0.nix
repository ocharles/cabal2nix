{ cabal, base64-bytestring, conduit, hspec, QuickCheck, transformers }:

cabal.mkDerivation (self: {
  pname = "base64-conduit";
  version = "1.0.0";
  sha256 = "10wjgdixk5da48jpm2i91vy3ckdqpbpgba6hzn7ak6d3qac22m9q";
  buildDepends = [ base64-bytestring conduit ];
  testDepends = [ base64-bytestring conduit hspec QuickCheck transformers ];
  doCheck = false;
  meta = {
    homepage = "http://github.com/snoyberg/conduit";
    description = "Base64-encode and decode streams of bytes";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
