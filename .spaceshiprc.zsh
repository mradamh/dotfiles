SPACESHIP_PROMPT_ORDER=(
  dir
  git
  ruby
  node
  docker_context
  exec_time
  line_sep
  jobs
  char
)

# dir: show up to 3 segments, truncate to repo root when inside a git repo
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_TRUNC_REPO=true

# git: show async so it doesn't slow the prompt on large repos
SPACESHIP_GIT_STATUS_SHOW=true
SPACESHIP_GIT_STATUS_ASYNC=true

# ruby: only shown when a Gemfile or .ruby-version is present
# Override built-in section to add mise support
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_SYMBOL="${SPACESHIP_RUBY_SYMBOL="💎 "}"
SPACESHIP_RUBY_COLOR="${SPACESHIP_RUBY_COLOR="red"}"
SPACESHIP_RUBY_PREFIX=" "
SPACESHIP_RUBY_SUFFIX="${SPACESHIP_RUBY_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
spaceship_ruby() {
  [[ $SPACESHIP_RUBY_SHOW == false ]] && return

  local is_ruby_project="$(spaceship::upsearch Gemfile Rakefile)"
  [[ -n "$is_ruby_project" || -n *.rb(#qN^/) ]] || return

  local ruby_version

  if spaceship::exists rvm-prompt; then
    ruby_version=$(rvm-prompt i v g)
  elif spaceship::exists chruby; then
    ruby_version=$(chruby | sed -n -e 's/ \* //p')
  elif spaceship::exists rbenv; then
    ruby_version=$(rbenv version-name)
  elif spaceship::exists mise; then
    ruby_version=$(mise current ruby 2>/dev/null)
  elif spaceship::exists asdf; then
    local asdf_output
    if asdf_output=$(asdf current --no-header ruby 2>/dev/null) && [[ -n "$asdf_output" ]]; then
      ruby_version=${asdf_output[(w)2]}
    fi
  else
    return
  fi

  [[ -z $ruby_version || "${ruby_version}" == "system" ]] && return
  [[ "${ruby_version}" =~ ^[0-9].+$ ]] && ruby_version="v${ruby_version}"

  spaceship::section \
    --color "$SPACESHIP_RUBY_COLOR" \
    --prefix "$SPACESHIP_RUBY_PREFIX" \
    --suffix "$SPACESHIP_RUBY_SUFFIX" \
    --symbol "$SPACESHIP_RUBY_SYMBOL" \
    "$ruby_version"
}

# node: only shown when a package.json is present
SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_PREFIX=" "

# docker: only shown when context is not "default" or "desktop-linux"
SPACESHIP_DOCKER_SHOW=true
SPACESHIP_DOCKER_CONTEXT_SHOW=true
SPACESHIP_DOCKER_CONTEXT_PREFIX=" 🐳 ("

# exec_time: show how long a command took if it ran for more than 5s (useful for rake tasks, specs, etc.)
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_MIN=5
SPACESHIP_EXEC_TIME_PREFIX=" took "
