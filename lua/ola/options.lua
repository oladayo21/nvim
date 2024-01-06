local options = {
  number = true,
  relativenumber = true,
  cursorline = true,

  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  cindent = true,

  wrap = false, --disable line wrapping

  ignorecase = true,
  smartcase = true,
  hlsearch = true,
  mouse = "a",

  backup = false,
  swapfile = false,
  clipboard = "unnamedplus",

  splitbelow = true,
  splitright = true,
  termguicolors = true,

  timeoutlen = 1000,
  updatetime = 100,

  scrolloff = 0,
  sidescrolloff = 10,
  signcolumn = "yes",

  conceallevel = 0, --so that ``is visible in markdown files
  pumheight = 10,
  pumblend = 10,

  writebackup = false,
  undofile = true,

  list = true,
  showbreak = "↪",
  listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂",
}

for key, val in pairs(options) do
	vim.opt[key] = val
end

vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2

vim.opt.fillchars = vim.opt.fillchars + "eob: "
vim.opt.fillchars:append {
  stl = " ",
}

vim.opt.shortmess:append "c"
