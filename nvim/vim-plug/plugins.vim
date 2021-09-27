if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	"autocmd VimEnter * PlugInstall
	"autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Better Syntax Support
	Plug 'sheerun/vim-polyglot'
	" File Explorer
	" Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" theam
	Plug 'joshdick/onedark.vim'
	" intelesence
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" the line under the file
	Plug 'vim-airline/vim-airline'
	"the better search
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'peitalin/vim-jsx-typescript'
	" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'airblade/vim-rooter'
	Plug 'tpope/vim-commentary'
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-rhubarb'
	Plug 'junegunn/gv.vim'
	Plug 'liuchengxu/vim-which-key'
	Plug 'justinmk/vim-sneak'
	Plug 'voldikss/vim-floaterm'
	Plug 'honza/vim-snippets'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'junegunn/rainbow_parentheses.vim'
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
  Plug 'rhysd/vim-grammarous'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
	Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'neovim/nvim-lspconfig' "for the lps support
Plug 'derekwyatt/vim-fswitch'
Plug 'ludovicchabant/vim-gutentags'
Plug 'puremourning/vimspector', {
  \ 'do': 'python3 install_gadget.py --enable-vscode-cpptools'
  \ }
Plug 'SirVer/ultisnips'
Plug 'hrsh7th/nvim-compe' "fort the complition
Plug 'preservim/nerdtree' " there will be fonts and icons newr them
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-python/python-syntax'

Plug 'erietz/vim-terminator' "repl
Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

call plug#end()
