if not set -q abbrs_initialized
  set -U abbrs_initialized
  echo -n Setting abbreviations...

  abbr cp 'cp -iv'                           # Preferred 'cp' implementation
  abbr mv 'mv -iv'                           # Preferred 'mv' implementation
  abbr mkdir 'mkdir -pv'                     # Preferred 'mkdir' implementation
  abbr ll 'ls -FGlAhp'                       # Preferred 'ls' implementation
  abbr less 'less -FSRXc'                    # Preferred 'less' implementation
  abbr cd.. 'cd ../'                         # Go back 1 directory level (for fast typers)
  abbr .. 'cd ../'                           # Go back 1 directory level
  abbr ... 'cd ../../'                       # Go back 2 directory levels
  abbr .3 'cd ../../../'                     # Go back 3 directory levels
  abbr f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
  abbr c 'clear'                             # c:            Clear terminal display

  abbr g 'git'
  abbr ga 'git add'
  abbr gaa 'git add --all'
  abbr gap 'git add --patch'
  abbr gb 'git branch'
  abbr gbl 'git blame'
  abbr gc 'git commit -v'
  abbr gc! 'git commit -v --amend'
  abbr gco 'git checkout'
  abbr gcb 'git checkout -b'
  abbr gcp 'git cherry-pick'
  abbr gd 'git diff'
  abbr gf 'git fetch'
  abbr gl 'git log'
  abbr gm 'git merge'
  abbr gp 'git push'
  abbr gpl 'git pull'
  abbr gpr 'git pull --rebase'
  abbr gr 'git remote'
  abbr gst 'git status'
  abbr gst 'git stash'

  echo 'Done'
end
