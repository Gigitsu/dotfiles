# The icons are taken from webdevicons.vim plugin
# To update use the following:
# SRC_URL="https://raw.githubusercontent.com/ryanoasis/vim-devicons/master/plugin/webdevicons.vim"; \
# curl -s ${SRC_URL} | \
# perl -0777ne 'print "# vim: set fileencoding=utf-8\n# autogenerated with gen_icons.sh\n\n"; while(/let s:((file_node_extensions|file_node_exact_matches|file_node_pattern_matches) = {.*?})/gs){$v=$1; $v=~s/\\//g; print "$v\n";}' \
# pbcopy

import os, fnmatch, stat
import ranger.api
from ranger.core.linemode import LinemodeBase

# Get the XDG_USER_DIRS directory names from environment variables
xdgs_dirs = {
    os.path.basename(os.getenv(key).rstrip('/')): icon
    for key, icon in (
        ('XDG_DOCUMENTS_DIR', ''),
        ('XDG_DOWNLOAD_DIR', ''),
        ('XDG_CONFIG_DIR', ''),
        ('XDG_MUSIC_DIR', ''),
        ('XDG_PICTURES_DIR', ''),
        ('XDG_PUBLICSHARE_DIR', ''),
        ('XDG_TEMPLATES_DIR', ''),
        ('XDG_VIDEOS_DIR', ''),
    )
    if os.getenv(key)
}

file_node_extensions = {
  '7z'                               : '',
  'a'                                : '',
  'ai'                               : '',
  'apk'                              : '',
  'asm'                              : '',
  'asp'                              : '',
  'aup'                              : '',
  'avi'                              : '',
  'awk'                              : '',
  'bash'                             : '',
  'bat'                              : '',
  'bmp'                              : '',
  'bz2'                              : '',
  'c'                                : '',
  'c++'                              : '',
  'cab'                              : '',
  'cbr'                              : '',
  'cbz'                              : '',
  'cc'                               : '',
  'class'                            : '',
  'clj'                              : '',
  'cljc'                             : '',
  'cljs'                             : '',
  'cmake'                            : '',
  'coffee'                           : '',
  'conf'                             : '',
  'cp'                               : '',
  'cpio'                             : '',
  'cpp'                              : '',
  'cs'                               : '',
  'csh'                              : '',
  'css'                              : '',
  'cue'                              : '',
  'cvs'                              : '',
  'cxx'                              : '',
  'd'                                : '',
  'dart'                             : '',
  'db'                               : '',
  'deb'                              : '',
  'diff'                             : '',
  'dll'                              : '',
  'doc'                              : '',
  'docx'                             : '',
  'dump'                             : '',
  'edn'                              : '',
  'eex'                              : '',
  'efi'                              : '',
  'ejs'                              : '',
  'elf'                              : '',
  'elm'                              : '',
  'epub'                             : '',
  'erl'                              : '',
  'ex'                               : '',
  'exe'                              : '',
  'exs'                              : '',
  'f#'                               : '',
  'fifo'                             : 'ﳣ',
  'fish'                             : '',
  'flac'                             : '',
  'flv'                              : '',
  'fs'                               : '',
  'fsi'                              : '',
  'fsscript'                         : '',
  'fsx'                              : '',
  'gem'                              : '',
  'gemspec'                          : '',
  'gif'                              : '',
  'go'                               : '',
  'gz'                               : '',
  'gzip'                             : '',
  'h'                                : '',
  'haml'                             : '',
  'hbs'                              : '',
  'heex'                             : '',
  'hh'                               : '',
  'hpp'                              : '',
  'hrl'                              : '',
  'hs'                               : '',
  'htaccess'                         : '',
  'htm'                              : '',
  'html'                             : '',
  'htpasswd'                         : '',
  'hxx'                              : '',
  'ico'                              : '',
  'img'                              : '',
  'ini'                              : '',
  'iso'                              : '',
  'jar'                              : '',
  'java'                             : '',
  'jl'                               : '',
  'jpeg'                             : '',
  'jpg'                              : '',
  'js'                               : '',
  'json'                             : '',
  'jsx'                              : '',
  'key'                              : '',
  'ksh'                              : '',
  'leex'                             : '',
  'less'                             : '',
  'lha'                              : '',
  'lhs'                              : '',
  'log'                              : '',
  'lua'                              : '',
  'lzh'                              : '',
  'lzma'                             : '',
  'm4a'                              : '',
  'm4v'                              : '',
  'markdown'                         : '',
  'md'                               : '',
  'mdx'                              : '',
  'mjs'                              : '',
  'mk'                               : '',
  'mkv'                              : '',
  'ml'                               : 'λ',
  'mli'                              : 'λ',
  'mov'                              : '',
  'mp3'                              : '',
  'mp4'                              : '',
  'mpeg'                             : '',
  'mpg'                              : '',
  'msi'                              : '',
  'mustache'                         : '',
  'nix'                              : '',
  'o'                                : '',
  'ogg'                              : '',
  'part'                             : '',
  'pdf'                              : '',
  'pem'                              : '',
  'php'                              : '',
  'pl'                               : '',
  'pm'                               : '',
  'png'                              : '',
  'pp'                               : '',
  'ppt'                              : '',
  'pptx'                             : '',
  'ps1'                              : '',
  'psb'                              : '',
  'psd'                              : '',
  'pub'                              : '',
  'py'                               : '',
  'pyc'                              : '',
  'pyd'                              : '',
  'pyo'                              : '',
  'r'                                : 'ﳒ',
  'rake'                             : '',
  'rar'                              : '',
  'rb'                               : '',
  'rc'                               : '',
  'rlib'                             : '',
  'rmd'                              : '',
  'rom'                              : '',
  'rpm'                              : '',
  'rproj'                            : '鉶',
  'rs'                               : '',
  'rss'                              : '',
  'rtf'                              : '',
  's'                                : '',
  'sass'                             : '',
  'scala'                            : '',
  'scss'                             : '',
  'sh'                               : '',
  'slim'                             : '',
  'sln'                              : '',
  'so'                               : '',
  'sol'                              : 'ﲹ',
  'sql'                              : '',
  'styl'                             : '',
  'suo'                              : '',
  'swift'                            : '',
  't'                                : '',
  'tar'                              : '',
  'tex'                              : 'ﭨ',
  'tgz'                              : '',
  'toml'                             : '',
  'torrent'                          : '',
  'ts'                               : '',
  'tsx'                              : '',
  'twig'                             : '',
  'vim'                              : '',
  'vimrc'                            : '',
  'vue'                              : '﵂',
  'wav'                              : '',
  'webm'                             : '',
  'webmanifest'                      : '',
  'webp'                             : '',
  'xbps'                             : '',
  'xcplayground'                     : '',
  'xhtml'                            : '',
  'xls'                              : '',
  'xlsx'                             : '',
  'xml'                              : '',
  'xul'                              : '',
  'xz'                               : '',
  'yaml'                             : '',
  'yml'                              : '',
  'zip'                              : '',
  'zsh'                              : '',
}


dir_node_exact_matches = {
  '.git'                             : '',
  'Dotfiles'                         : '',
  'Templates'                        : '',
  'anaconda3'                        : '',
  'go'                               : '',
  'workspace'                        : '',
  'OneDrive'                         : '',
# English
  'Desktop'                          : '',
  'Documents'                        : '',
  'Downloads'                        : '',
  'Dropbox'                          : '',
  'Music'                            : '',
  'Pictures'                         : '',
  'Public'                           : '',
  'Videos'                           : '',
# Italian
  'Documenti'                        : '',
  'Immagini'                         : '',
  'Modelli'                          : '',
  'Musica'                           : '',
  'Pubblici'                         : '',
  'Scaricati'                        : '',
  'Scrivania'                        : '',
  'Video'                            : '',
}

# Python 2.x-3.4 don't support unpacking syntex `{**dict}`
# XDG_USER_DIRS
dir_node_exact_matches.update(xdgs_dirs)

file_node_exact_matches = {
  '_gvimrc'                          : '',
  '_vimrc'                           : '',
  '.bash_aliases'                    : '',
  '.bash_history'                    : '',
  '.bash_logout'                     : '',
  '.bash_profile'                    : '',
  '.bashprofile'                     : '',
  '.bashrc'                          : '',
  '.dmrc'                            : '',
  '.DS_Store'                        : '',
  '.fasd'                            : '',
  '.fehbg'                           : '',
  '.gitattributes'                   : '',
  '.gitconfig'                       : '',
  '.gitignore'                       : '',
  '.gitlab-ci.yml'                   : '',
  '.gvimrc'                          : '',
  '.inputrc'                         : '',
  '.jack-settings'                   : '',
  '.mime.types'                      : '',
  '.ncmpcpp'                         : '',
  '.nvidia-settings-rc'              : '',
  '.pam_environment'                 : '',
  '.profile'                         : '',
  '.recently-used'                   : '',
  '.selected_editor'                 : '',
  '.vim'                             : '',
  '.viminfo'                         : '',
  '.vimrc'                           : '',
  '.xauthority'                      : '',
  '.xdefaults'                       : '',
  '.xinitrc'                         : '',
  '.xinputrc'                        : '',
  '.xresources'                      : '',
  '.zprofile'                        : '',
  '.zshenv'                          : '',
  '.zshrc'                           : '',
  'a.out'                            : '',
  'authorized_keys'                  : '',
  'bspwmrc'                          : '',
  'cmakelists.txt'                   : '',
  'config.ac'                        : '',
  'config.mk'                        : '',
  'config.ru'                        : '',
  'config'                           : '',
  'configure'                        : '',
  'docker-compose.yml'               : '',
  'dockerfile'                       : '',
  'dropbox'                          : '',
  'exact-match-case-sensitive-1.txt' : 'X1',
  'exact-match-case-sensitive-2'     : 'X2',
  'favicon.ico'                      : '',
  'gemfile'                          : '',
  'gruntfile.coffee'                 : '',
  'gruntfile.js'                     : '',
  'gruntfile.ls'                     : '',
  'gulpfile.coffee'                  : '',
  'gulpfile.js'                      : '',
  'gulpfile.ls'                      : '',
  'gvimrc'                           : '',
  'ini'                              : '',
  'known_hosts'                      : '',
  'ledger'                           : '',
  'license.md'                       : '',
  'license.txt'                      : '',
  'license'                          : '',
  'makefile.ac'                      : '',
  'makefile.in'                      : '',
  'makefile'                         : '',
  'makefile'                         : '',
  'mimeapps.list'                    : '',
  'mix.lock'                         : '',
  'node_modules'                     : '',
  'package-lock.json'                : '',
  'package.json'                     : '',
  'playlists'                        : '',
  'procfile'                         : '',
  'rakefile'                         : '',
  'Rakefile'                         : '',
  'react.jsx'                        : '',
  'readme.markdown'                  : '',
  'readme.md'                        : '',
  'readme.rst'                       : '',
  'readme.txt'                       : '',
  'readme'                           : '',
  'robots.txt'                       : 'ﮧ',
  'sxhkdrc'                          : '',
  'user-dirs.dirs'                   : '',
  'vimrc'                            : '',
  'webpack.config.js'                : '',
}

file_node_pattern_matches = {
  '.*angular.*.js$'                  : '',
  '.*backbone.*.js$'                 : '',
  '.*jquery.*.js$'                   : '',
  '.*materialize.*.css$'             : '',
  '.*materialize.*.js$'              : '',
  '.*mootools.*.js$'                 : '',
  '.*require.*.js$'                  : '',
  '.?*vimrc.*'                       : '',
  '.?*vimrc'                         : '',
  '*rc'                              : '',
  'Vagrantfile$'                     : '',
}

def get_icon(file):
  basename = os.path.basename(file.relative_path)

  em_icon = dir_node_exact_matches.get(basename) if file.is_directory else file_node_exact_matches.get(basename.lower())
  if em_icon is not None:
    return em_icon

  for pattern, pm_icon in file_node_pattern_matches.items():
    if fnmatch.filter([basename], pattern):
      return pm_icon

  default = '' if file.is_directory else ''
  return file_node_extensions.get(file.extension, default)

def get_symbol(file):
  if file.is_link:
    if not file.exists:
      return '!'
    if file.stat and stat.S_ISDIR(file.stat.st_mode):
      return '~'
    return '@'

  if file.is_socket:
    return '='

  if file.is_fifo:
    return '|'

  if not file.is_directory and file.stat:
    mode = file.stat.st_mode
    if mode & stat.S_IXUSR:
      return '*'
    if stat.S_ISCHR(mode):
      return '-'
    if stat.S_ISBLK(mode):
      return '+'

  return ''


@ranger.api.register_linemode
class DevIconsLinemode(LinemodeBase):
  name = "devicons"
  uses_metadata = False

  def filetitle(self, file, metadata):
    return '{0} {1}{2}'.format(get_icon(file), file.relative_path, get_symbol(file))
