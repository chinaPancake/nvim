require("nvim-tree").setup{
  open_on_setup = true,
  ignore_buffer_on_setup = true,
  ignore_ft_on_setup= {
    "gitcommit",
  },
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
