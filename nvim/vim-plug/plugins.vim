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
	Plug 'scrooloose/NERDTree'
	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'
	" theam
	Plug 'joshdick/onedark.vim'
	" intelesence
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" the line under the file
	Plug 'vim-airline/vim-airline'
	"the better search
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-rooter'
	Plug 'tpope/vim-commentary'
	Plug 'mhinz/vim-startify'
	Plug 'mhinz/vim-signify'
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
Plug 'reedes/vim-pencil'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()
