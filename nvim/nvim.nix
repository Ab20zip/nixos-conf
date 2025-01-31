/*
This program is free software. It comes without any warranty, to the extent permitted by applicable law.
You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License,
Version 2, as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
*/

{ pkgs, ... }: {
    programs.neovim = {
        enable = true;
        extraPackages = with pkgs; [
            gopls
            golines
            goimports-reviser
            pyright
            lua-language-server
            luaformatter
            nodePackages.svelte-language-server
            nodePackages.typescript-language-server
            nodePackages.prettier
            emmet-language-server
            markdown-oxide
        ];
    };
}
