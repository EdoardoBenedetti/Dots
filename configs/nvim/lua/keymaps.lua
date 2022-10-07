function map(lhs, rhs, mod, opts)
    
    local mode = ""
    if mod then
        mode = mod
    end

    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)

end

-- Hotkeys
map("<C-t>", ":NERDTreeToggle<CR>", "n")

-- Colemak
map("f", "e")
map("p", "r")
map("g", "t")
map("j", "y")
map("l", "u")
map("u", "i")
map("y", "o")
map("r", "s")
map("s", "d")
map("t", "f")
map("d", "g")
map("n", "j")
map("e", "k")
map("i", "l")
map("o", "p")
map("k", "n")
map("m", "m")

map("F", "E")
map("P", "R")
map("G", "T")
map("J", "Y")
map("L", "U")
map("U", "I")
map("Y", "O")
map("R", "S")
map("S", "D")
map("T", "F")
map("D", "G")
map("N", "J")
map("E", "K")
map("I", "L")
map("O", "P")
map("K", "N")
