echo "Change hyprdots-screenrecord to use gpu-screen-recorder"
hyprdots-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
hyprdots-pkg-add slurp gpu-screen-recorder
