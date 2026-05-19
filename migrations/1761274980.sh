echo "Migrate to proper packages for localsend and asdcontrol"

if hyprdots-pkg-present localsend-bin; then
  hyprdots-pkg-drop localsend-bin
  hyprdots-pkg-add localsend
fi

if hyprdots-pkg-present asdcontrol-git; then
  hyprdots-pkg-drop asdcontrol-git
  hyprdots-pkg-add asdcontrol
fi
