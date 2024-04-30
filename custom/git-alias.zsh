alias gmc='git merge --no-commit --no-ff'
alias gmb='git merge-base'
gcomb() {
  commit=$(git merge-base $*)
  git checkout $commit
}

git_review_diff() {
  target=${1:-$(git rev-parse HEAD)}
  source=${2:-main}
  gcomb $target $source
  gmc $target
}
alias grd='git_review_diff'

alias gloh="git log --graph --pretty='%C(green)%C(bold)%cd %C(auto)%h%d %s %C(bold blue)<%an>%Creset' --date=short --color=always"
