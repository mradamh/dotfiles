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
SPACESHIP_RUBY_SHOW=true

# node: only shown when a package.json is present
SPACESHIP_NODE_SHOW=true

# docker: only shown when context is not "default" or "desktop-linux"
SPACESHIP_DOCKER_SHOW=true
SPACESHIP_DOCKER_CONTEXT_SHOW=true

# exec_time: show how long a command took if it ran for more than 5s (useful for rake tasks, specs, etc.)
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_MIN=5
