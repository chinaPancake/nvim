require("nvim-tree").setup{
 renderer = {
    icons = {
      show={
      file = false,
      folder = false,
      folder_arrow = false,
      git = false,
      },
    },
    indent_markers = {
      enable = true,
    },
  },
}
