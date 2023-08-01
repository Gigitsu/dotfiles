local function icon(i, c)
    return { icon = xplr.util.paint(i, { fg = { Indexed = c }}) }
end

function setup()
    local xplr = xplr
  
    xplr.config.node_types.directory.meta = icon("", 4)
    xplr.config.node_types.file.meta = icon("", 6)
    xplr.config.node_types.symlink.meta = icon("", 13)
  
    xplr.config.node_types.mime_essence = {
      audio = {
        ["*"] = { meta = { icon = "" } },
      },
      video = {
        ["*"] = { meta = { icon = "ﳜ" } },
      },
      image = {
        ["*"] = { meta = { icon = "" } },
      },
      application = {
        -- application/zip
        zip = { meta = { icon = "" } },
      },
      text = {
        ["*"] = { meta = { icon = "" } },
      },
    }
  
    xplr.config.node_types.special[".babelrc"] = { meta = icon("", 185) }
    xplr.config.node_types.special[".bash_profile"] = { meta = icon("", 113) }
    xplr.config.node_types.special[".bashrc"] = { meta = icon("", 113) }
    xplr.config.node_types.special[".dockerignore"] = { meta = icon("󰡨", 68) }
    xplr.config.node_types.special[".ds_store"] = { meta = icon("", 239) }
    xplr.config.node_types.special[".env"] = { meta = icon("", 227) }
    xplr.config.node_types.special[".eslintrc"] = { meta = icon("", 56) }
    xplr.config.node_types.special[".gitattributes"] = { meta = icon("", 239) }
    xplr.config.node_types.special[".gitconfig"] = { meta = icon("", 239) }
    xplr.config.node_types.special[".gitignore"] = { meta = icon("", 239) }
    xplr.config.node_types.special[".gitlab-ci.yml"] = { meta = icon("", 196) }
    xplr.config.node_types.special[".gitmodules"] = { meta = icon("", 239) }
    xplr.config.node_types.special[".gvimrc"] = { meta = icon("", 28) }
    xplr.config.node_types.special[".npmignore"] = { meta = icon("", 197) }
    xplr.config.node_types.special[".npmrc"] = { meta = icon("", 197) }
    xplr.config.node_types.special[".settings.json"] = { meta = icon("", 98) }
    xplr.config.node_types.special[".vimrc"] = { meta = icon("", 28) }
    xplr.config.node_types.special[".zprofile"] = { meta = icon("", 113) }
    xplr.config.node_types.special[".zshenv"] = { meta = icon("", 113) }
    xplr.config.node_types.special[".zshrc"] = { meta = icon("", 113) }
    xplr.config.node_types.special["_gvimrc"] = { meta = icon("", 28) }
    xplr.config.node_types.special["_vimrc"] = { meta = icon("", 28) }
    xplr.config.node_types.special["brewfile"] = { meta = icon("", 52) }
    xplr.config.node_types.special["build"] = { meta = icon("", 113) }
    xplr.config.node_types.special["cmakelists.txt"] = { meta = icon("", 66) }
    xplr.config.node_types.special["commit_editmsg"] = { meta = icon("", 239) }
    xplr.config.node_types.special["containerfile"] = { meta = icon("󰡨", 68) }
    xplr.config.node_types.special["copying"] = { meta = icon("", 185) }
    xplr.config.node_types.special["copying.lesser"] = { meta = icon("", 185) }
    xplr.config.node_types.special["docker-compose.yaml"] = { meta = icon("󰡨", 68) }
    xplr.config.node_types.special["docker-compose.yml"] = { meta = icon("󰡨", 68) }
    xplr.config.node_types.special["dockerfile"] = { meta = icon("󰡨", 68) }
    xplr.config.node_types.special["favicon.ico"] = { meta = icon("", 185) }
    xplr.config.node_types.special["gemfile$"] = { meta = icon("", 52) }
    xplr.config.node_types.special["gnumakefile"] = { meta = icon("", 66) }
    xplr.config.node_types.special["gruntfile"] = { meta = icon("", 166) }
    xplr.config.node_types.special["gulpfile"] = { meta = icon("", 167) }
    xplr.config.node_types.special["license"] = { meta = icon("", 185) }
    xplr.config.node_types.special["makefile"] = { meta = icon("", 66) }
    xplr.config.node_types.special["mix.lock"] = { meta = icon("", 140) }
    xplr.config.node_types.special["node_modules"] = { meta = icon("", 197) }
    xplr.config.node_types.special["package-lock.json"] = { meta = { icon = "" } }
    xplr.config.node_types.special["package.json"] = { meta = { icon = "" } }
    xplr.config.node_types.special["procfile"] = { meta = icon("", 140) }
    xplr.config.node_types.special["r"] = { meta = icon("󰟔", 29) }
    xplr.config.node_types.special["rakefile"] = { meta = icon("", 52) }
    xplr.config.node_types.special["rmd"] = { meta = icon("", 74) }
    xplr.config.node_types.special["unlicense"] = { meta = icon("", 185) }
    xplr.config.node_types.special["vagrantfile$"] = { meta = icon("", 27) }
    xplr.config.node_types.special["webpack"] = { meta = icon("󰜫", 74) }
    xplr.config.node_types.special["workspace"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["ai"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["awk"] = { meta = icon("", 240) }
    xplr.config.node_types.extension["bash"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["bat"] = { meta = icon("", 191) }
    xplr.config.node_types.extension["bazel"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["bmp"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["bzl"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["c"] = { meta = icon("", 111) }
    xplr.config.node_types.extension["c++"] = { meta = icon("", 204) }
    xplr.config.node_types.extension["cbl"] = { meta = icon("⚙", 25) }
    xplr.config.node_types.extension["cc"] = { meta = icon("", 204) }
    xplr.config.node_types.extension["cfg"] = { meta = icon("", 255) }
    xplr.config.node_types.extension["cjs"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["clj"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["cljc"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["cljd"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["cljs"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["cmake"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["cob"] = { meta = icon("⚙", 25) }
    xplr.config.node_types.extension["cobol"] = { meta = icon("⚙", 25) }
    xplr.config.node_types.extension["coffee"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["conf"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["config.ru"] = { meta = icon("", 52) }
    xplr.config.node_types.extension["cp"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["cpp"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["cpy"] = { meta = icon("⚙", 25) }
    xplr.config.node_types.extension["cr"] = { meta = icon("", 251) }
    xplr.config.node_types.extension["cs"] = { meta = icon("󰌛", 58) }
    xplr.config.node_types.extension["csh"] = { meta = icon("", 240) }
    xplr.config.node_types.extension["cson"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["css"] = { meta = icon("", 75) }
    xplr.config.node_types.extension["csv"] = { meta = icon("󰈙", 113) }
    xplr.config.node_types.extension["cxx"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["d"] = { meta = icon("", 28) }
    xplr.config.node_types.extension["dart"] = { meta = icon("", 25) }
    xplr.config.node_types.extension["db"] = { meta = icon("", 188) }
    xplr.config.node_types.extension["desktop"] = { meta = icon("", 54) }
    xplr.config.node_types.extension["diff"] = { meta = icon("", 239) }
    xplr.config.node_types.extension["doc"] = { meta = icon("󰈬", 26) }
    xplr.config.node_types.extension["docx"] = { meta = icon("󰈬", 26) }
    xplr.config.node_types.extension["drl"] = { meta = icon("", 217) }
    xplr.config.node_types.extension["dropbox"] = { meta = icon("", 27) }
    xplr.config.node_types.extension["dump"] = { meta = icon("", 188) }
    xplr.config.node_types.extension["edn"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["eex"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["ejs"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["elm"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["epp"] = { meta = { icon = "" } }
    xplr.config.node_types.extension["erb"] = { meta = icon("", 214) }
    xplr.config.node_types.extension["erl"] = { meta = icon("", 163) }
    xplr.config.node_types.extension["ex"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["exs"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["f#"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["f90"] = { meta = icon("󱈚", 97) }
    xplr.config.node_types.extension["fish"] = { meta = icon("", 240) }
    xplr.config.node_types.extension["fnl"] = { meta = icon("🌜", 230) }
    xplr.config.node_types.extension["fs"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["fsi"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["fsscript"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["fsx"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["gd"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["gemspec"] = { meta = icon("", 52) }
    xplr.config.node_types.extension["gif"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["git"] = { meta = icon("", 196) }
    xplr.config.node_types.extension["glb"] = { meta = icon("", 214) }
    xplr.config.node_types.extension["gnumakefile"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["go"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["godot"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["gql"] = { meta = icon("", 199) }
    xplr.config.node_types.extension["graphql"] = { meta = icon("", 199) }
    xplr.config.node_types.extension["h"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["haml"] = { meta = icon("", 255) }
    xplr.config.node_types.extension["hbs"] = { meta = icon("", 202) }
    xplr.config.node_types.extension["heex"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["hh"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["hpp"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["hrl"] = { meta = icon("", 163) }
    xplr.config.node_types.extension["hs"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["htm"] = { meta = icon("", 196) }
    xplr.config.node_types.extension["html"] = { meta = icon("", 196) }
    xplr.config.node_types.extension["hxx"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["ico"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["import"] = { meta = icon("", 255) }
    xplr.config.node_types.extension["ini"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["java"] = { meta = icon("", 167) }
    xplr.config.node_types.extension["jl"] = { meta = icon("", 133) }
    xplr.config.node_types.extension["jpeg"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["jpg"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["js"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["json"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["json5"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["jsx"] = { meta = icon("", 45) }
    xplr.config.node_types.extension["ksh"] = { meta = icon("", 240) }
    xplr.config.node_types.extension["kt"] = { meta = icon("", 99) }
    xplr.config.node_types.extension["kts"] = { meta = icon("", 99) }
    xplr.config.node_types.extension["leex"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["less"] = { meta = icon("", 54) }
    xplr.config.node_types.extension["lhs"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["license"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["liquid"] = { meta = icon("", 106) }
    xplr.config.node_types.extension["lock"] = { meta = icon("", 250) }
    xplr.config.node_types.extension["log"] = { meta = icon("󰌱", 231) }
    xplr.config.node_types.extension["lua"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["luau"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["makefile"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["markdown"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["material"] = { meta = icon("󰔉", 163) }
    xplr.config.node_types.extension["md"] = { meta = icon("", 231) }
    xplr.config.node_types.extension["mdx"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["mint"] = { meta = icon("󰌪", 108) }
    xplr.config.node_types.extension["mjs"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["mk"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["ml"] = { meta = icon("λ", 166) }
    xplr.config.node_types.extension["mli"] = { meta = icon("λ", 166) }
    xplr.config.node_types.extension["mo"] = { meta = icon("∞", 135) }
    xplr.config.node_types.extension["mustache"] = { meta = icon("", 166) }
    xplr.config.node_types.extension["nim"] = { meta = icon("", 220) }
    xplr.config.node_types.extension["nix"] = { meta = icon("", 110) }
    xplr.config.node_types.extension["opus"] = { meta = icon("󰈣", 208) }
    xplr.config.node_types.extension["org"] = { meta = icon("", 73) }
    xplr.config.node_types.extension["otf"] = { meta = icon("", 255) }
    xplr.config.node_types.extension["pck"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["pdf"] = { meta = icon("", 124) }
    xplr.config.node_types.extension["php"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["pl"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["pm"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["png"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["pp"] = { meta = { icon = "" } }
    xplr.config.node_types.extension["ppt"] = { meta = icon("󰈧", 214) }
    xplr.config.node_types.extension["prisma"] = { meta = icon("󰔶", 231) }
    xplr.config.node_types.extension["pro"] = { meta = icon("", 179) }
    xplr.config.node_types.extension["ps1"] = { meta = icon("󰨊", 68) }
    xplr.config.node_types.extension["psb"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["psd"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["psd1"] = { meta = icon("󰨊", 68) }
    xplr.config.node_types.extension["psm1"] = { meta = icon("󰨊", 68) }
    xplr.config.node_types.extension["py"] = { meta = icon("", 214) }
    xplr.config.node_types.extension["pyc"] = { meta = icon("", 222) }
    xplr.config.node_types.extension["pyd"] = { meta = icon("", 222) }
    xplr.config.node_types.extension["pyo"] = { meta = icon("", 222) }
    xplr.config.node_types.extension["query"] = { meta = icon("", 107) }
    xplr.config.node_types.extension["r"] = { meta = icon("󰟔", 29) }
    xplr.config.node_types.extension["rake"] = { meta = icon("", 52) }
    xplr.config.node_types.extension["rb"] = { meta = icon("", 52) }
    xplr.config.node_types.extension["res"] = { meta = icon("", 167) }
    xplr.config.node_types.extension["resi"] = { meta = icon("", 204) }
    xplr.config.node_types.extension["rlib"] = { meta = icon("", 216) }
    xplr.config.node_types.extension["rmd"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["rproj"] = { meta = icon("󰗆", 29) }
    xplr.config.node_types.extension["rs"] = { meta = icon("", 216) }
    xplr.config.node_types.extension["rss"] = { meta = icon("", 215) }
    xplr.config.node_types.extension["sass"] = { meta = icon("", 204) }
    xplr.config.node_types.extension["sbt"] = { meta = icon("", 167) }
    xplr.config.node_types.extension["scala"] = { meta = icon("", 167) }
    xplr.config.node_types.extension["scm"] = { meta = icon("󰘧", 16) }
    xplr.config.node_types.extension["scss"] = { meta = icon("", 204) }
    xplr.config.node_types.extension["sh"] = { meta = icon("", 240) }
    xplr.config.node_types.extension["sig"] = { meta = icon("λ", 166) }
    xplr.config.node_types.extension["slim"] = { meta = icon("", 196) }
    xplr.config.node_types.extension["sln"] = { meta = icon("", 98) }
    xplr.config.node_types.extension["sml"] = { meta = icon("λ", 166) }
    xplr.config.node_types.extension["sol"] = { meta = icon("󰞻", 74) }
    xplr.config.node_types.extension["spec.js"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["spec.jsx"] = { meta = icon("", 45) }
    xplr.config.node_types.extension["spec.ts"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["spec.tsx"] = { meta = icon("", 26) }
    xplr.config.node_types.extension["sql"] = { meta = icon("", 188) }
    xplr.config.node_types.extension["sqlite"] = { meta = icon("", 188) }
    xplr.config.node_types.extension["sqlite3"] = { meta = icon("", 188) }
    xplr.config.node_types.extension["styl"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["sublime"] = { meta = icon("", 166) }
    xplr.config.node_types.extension["suo"] = { meta = icon("", 98) }
    xplr.config.node_types.extension["sv"] = { meta = icon("󰍛", 28) }
    xplr.config.node_types.extension["svelte"] = { meta = icon("", 196) }
    xplr.config.node_types.extension["svg"] = { meta = icon("󰜡", 214) }
    xplr.config.node_types.extension["svh"] = { meta = icon("󰍛", 28) }
    xplr.config.node_types.extension["swift"] = { meta = icon("", 166) }
    xplr.config.node_types.extension["t"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["tbc"] = { meta = icon("󰛓", 25) }
    xplr.config.node_types.extension["tcl"] = { meta = icon("󰛓", 25) }
    xplr.config.node_types.extension["terminal"] = { meta = icon("", 34) }
    xplr.config.node_types.extension["test.js"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["test.jsx"] = { meta = icon("", 45) }
    xplr.config.node_types.extension["test.ts"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["test.tsx"] = { meta = icon("", 26) }
    xplr.config.node_types.extension["tex"] = { meta = icon("󰙩", 22) }
    xplr.config.node_types.extension["tf"] = { meta = icon("", 93) }
    xplr.config.node_types.extension["tfvars"] = { meta = icon("", 93) }
    xplr.config.node_types.extension["toml"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["tres"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["ts"] = { meta = icon("", 74) }
    xplr.config.node_types.extension["tscn"] = { meta = icon("󰎁", 140) }
    xplr.config.node_types.extension["tsx"] = { meta = icon("", 26) }
    xplr.config.node_types.extension["twig"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["txt"] = { meta = icon("󰈙", 113) }
    xplr.config.node_types.extension["v"] = { meta = icon("󰍛", 28) }
    xplr.config.node_types.extension["vala"] = { meta = icon("", 91) }
    xplr.config.node_types.extension["vh"] = { meta = icon("󰍛", 28) }
    xplr.config.node_types.extension["vhd"] = { meta = icon("󰍛", 28) }
    xplr.config.node_types.extension["vhdl"] = { meta = icon("󰍛", 28) }
    xplr.config.node_types.extension["vim"] = { meta = icon("", 28) }
    xplr.config.node_types.extension["vue"] = { meta = icon("", 113) }
    xplr.config.node_types.extension["wasm"] = { meta = icon("", 62) }
    xplr.config.node_types.extension["webmanifest"] = { meta = icon("", 185) }
    xplr.config.node_types.extension["webp"] = { meta = icon("", 140) }
    xplr.config.node_types.extension["webpack"] = { meta = icon("󰜫", 74) }
    xplr.config.node_types.extension["xcplayground"] = { meta = icon("", 166) }
    xplr.config.node_types.extension["xls"] = { meta = icon("󰈛", 29) }
    xplr.config.node_types.extension["xlsx"] = { meta = icon("󰈛", 29) }
    xplr.config.node_types.extension["xml"] = { meta = icon("󰗀", 166) }
    xplr.config.node_types.extension["xul"] = { meta = icon("", 166) }
    xplr.config.node_types.extension["yaml"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["yml"] = { meta = icon("", 66) }
    xplr.config.node_types.extension["zig"] = { meta = icon("", 172) }
    xplr.config.node_types.extension["zsh"] = { meta = icon("", 113) }
  end
  
  return { setup = setup }