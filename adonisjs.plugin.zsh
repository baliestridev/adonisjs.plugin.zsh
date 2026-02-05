# Copyright (c) Bruno Sales <org@baliestri.dev>. Licensed under the MIT License.
# See the LICENSE file in the repository root for full license text.

function __find_adonisjs_root() {
  local current_path="$(pwd)"
  local adonisjs_path=""

  until [[ "${current_path}" -ef "/" ]]; do
    if ([[ -f "${current_path}/ace" ]] || [[ -f "${current_path}/ace.js" ]]) && ([[ -f "${current_path}/adonisrc.ts" ]] || [[ -f "${current_path}/.adonisrc.json" ]]); then
      adonisjs_path="${current_path}"
      break
    fi

    current_path="$(dirname "${current_path}")"
  done

  echo "${adonisjs_path}"
}

function __verify_adonisjs_project() {
  if (( ! $+commands[node] )); then
    return 1
  fi

  if [[ -z "$(__find_adonisjs_root)" ]]; then
    unfunction ace &>/dev/null
    return 1
  fi

  function ace() {
    eval "node $(__find_adonisjs_root)/ace $@"
  }
}

add-zsh-hook chpwd __verify_adonisjs_project
