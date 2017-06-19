with import <nixpkgs> {}; {
     sdlEnv = stdenv.mkDerivation {
       name = "blog";
       buildInputs = [ stdenv ruby bundler ];
     };
   }
