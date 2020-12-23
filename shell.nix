with import <nixpkgs> {};
let
  pythonEnv = python38.withPackages (ps: [
    ps.matplotlib
    ps.tqdm
    ps.ffmpeg-python
  ]);
in mkShell {
  buildInputs = [
    pythonEnv
    ffmpeg-full
  ];
}
