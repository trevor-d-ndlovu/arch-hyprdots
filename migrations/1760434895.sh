echo "Change to hyprdots-nvim package"
hyprdots-pkg-drop hyprdots-lazyvim
hyprdots-pkg-add hyprdots-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
hyprdots-nvim-setup
