ZPLUGINDIR="$ZSH/plugins"

function load_plugins {
  [[ ! -d "$ZPLUGINDIR" ]] && mkdir "$ZPLUGINDIR"

  local repo plugin_dir initfiles=()
  for repo in $@; do
    plugin_dir="$ZPLUGINDIR/${repo:t}"
    initfile="$plugin_dir/${repo:t}.plugin.zsh"
    if [[ ! -d "$plugin_dir" ]]; then
      echo "Installing $repo..."

      git clone -q --depth=1 --recursive --shallow-submodules \
          "https://github.com/$repo" "$plugin_dir"
      rm -rf "$plugin_dir/**/.git"

      autoload -U zrecompile
      local f
      for f in $plugin_dir/**/*.zsh; do
        zrecompile -pq "$f"
      done
    fi
    fpath+="$plugin_dir"

    . "$initfile"
  done
}

plugins=(
  zsh-users/zsh-autosuggestions
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-syntax-highlighting
)

load_plugins $plugins
