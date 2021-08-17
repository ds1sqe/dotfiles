--
--  ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗            ██╗     ██╗   ██╗ █████╗
-- ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝            ██║     ██║   ██║██╔══██╗
-- ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗           ██║     ██║   ██║███████║
-- ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║           ██║     ██║   ██║██╔══██║
-- ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝    ██╗    ███████╗╚██████╔╝██║  ██║
--  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝     ╚═╝    ╚══════╝ ╚═════╝ ╚═╝  ╚═╝
--
-- General Config
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.transparent_window = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- Additional Leader bindings for WhichKey
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
--lvim.builtin.treesitter.highlight.ejnabled = true

--================KEYMAP================
lvim.keys.normal_mode = {
  -- Split
    ['ts'] = ':split<Return><C-w>w',
    ['tt'] = ':vsplit<Return><C-w>w',
  -- Move
    ["<C-h>"] = "<C-w>h",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-l>"] = "<C-w>l",
    ["<S-h>"] = ":BufferPrevious<CR>",
    ["<S-l>"] = ":BufferNext<CR>",
  -- Line / Block Move with Alt-j/k a la vscode.
    ["<A-j>"] = ":m .+1<CR>==",
    ["<A-k>"] = ":m .-2<CR>==",
  -- Save
    ["<C-s>"] = ":w<CR>",
  -- Line Finish
    [";"] = "<S-a>;<ESC>"
}
--================AutoCommand==========
lvim.autocommands.custom_groups = {
  {"WinEnter", "*", "set relativenumber cursorcolumn cursorline"},
  {"WinLeave", "*", "set norelativenumber nocursorcolumn nocursorline"},
}
vim.cmd 'let langmap ="ㄱrㄲRㄴsㄷeㄸEㄹfㅁaㅂqㅃQㅅtㅆTㅇdㅈwㅉWㅊcㅋzㅌxㅍvㅎgㅏkㅐoㅑiㅒOㅓjㅔpㅕuㅖPㅗhㅛyㅜnㅠbㅡm" '
vim.cmd 'hi DashboardHeader ctermfg=128 guifg=#a838d1'
--================Header===============
lvim.builtin.dashboard.custom_header = {
"                                                                       :PB@Bk:                                                                     ",
"                                                                   ,jB@@B@B@B@BBL.                                                                 ",
"                                                                7G@B@B@BMMMMMB@B@B@Nr                                                              ",
"                                                            :kB@B@@@MMOMOMOMOMMMM@B@B@B1,                                                          ",
"                                                        :5@B@B@B@BBMMOMOMOMOMOMOMM@@@B@B@BBu.                                                      ",
"                                                     70@@@B@B@B@BXBBOMOMOMOMOMOMMBMPB@B@B@B@B@Nr                                                   ",
"                                                   G@@@BJ iB@B@@  OBMOMOMOMOMOMOM@2  B@B@B. EB@B@S                                                 ",
"                                                   @@BM@GJBU.  iSuB@OMOMOMOMOMOMM@OU1:  .kBLM@M@B@                                                 ",
"                                                   B@MMB@B       7@BBMMOMOMOMOMOBB@:       B@BMM@B                                                 ",
"                                                   @@@B@B         7@@@MMOMOMOMM@B@:         @@B@B@                                                 ",
"                                                   @@OLB.          BNB@MMOMOMM@BEB          rBjM@B                                                 ",
"                                                   @@  @           M  OBOMOMM@q  M          .@  @@                                                 ",
"                                                   @@OvB           B:u@MMOMOMMBJiB          .BvM@B                                                 ",
"                                                   @B@B@J         0@B@MMOMOMOMB@B@u         q@@@B@                                                 ",
"                                                   B@MBB@v       G@@BMMMMMMMMMMMBB@5       F@BMM@B                                                 ",
"                                                   @BBM@BPNi   LMEB@OMMMM@B@MMOMM@BZM7   rEqB@MBB@                                                 ",
"                                                   B@@@BM  B@B@B  qBMOMB@B@B@BMOMBL  B@B@B  @B@B@M                                                 ",
"                                                    J@@@@PB@B@B@B7G@OMBB.   ,@MMM@qLB@B@@@BqB@BBv                                                  ",
"                                                       iGB@,i0@M@B@MMO@E  :  M@OMM@@@B@Pii@@N:                                                     ",
"                                                              B@M@B@MMM@B@B@B@MMM@@@M@B                                                            ",
"                                                              @B@B.i@MBB@B@B@@BM@::B@B@                                                            ",
"                                                              B@@@ .B@B.:@B@ :B@B  @B@O                                                            ",
"                                                                :0 r@B@  B@@ .@B@: P:                                                              ",
"                                                                    vMB :@B@ :BO7                                                                  ",
"                                                                        ,B@B                                                                       ",
"                                                                                                                                                   ",
" d888888b d888888b Cb .d8888.    d888888b d888888b .88b  d88. d88888b          d888888b  .d88b.       d888888b db   db d888888b d8b   db db   dD ",
"   `88`   `~~88~~` `D 88`  YP    `~~88~~`   `88`   88`YbdP`88 88`              `~~88~~` .8P  Y8.      `~~88~~` 88   88   `88`   888o  88 88 ,8P` ",
"    88       88     ` `8bo.         88       88    88  88  88 88ooooo             88    88    88         88    88ooo88    88    88V8o 88 88,8P   ",
"    88       88         `Y8b.       88       88    88  88  88 88~~~~~             88    88    88         88    88~~~88    88    88 V8o88 88`8b   ",
"   .88.      88       db   8D       88      .88.   88  88  88 88.                 88    `8b  d8`         88    88   88   .88.   88  V888 88 `88. ",
" Y888888P    YP       `8888Y`       YP    Y888888P YP  YP  YP Y88888P             YP     `Y88P`          YP    YP   YP Y888888P VP   V8P YP   YD ",
}

