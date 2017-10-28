# This is the custom theme template for gitprompt.sh

# These are the defaults from the "Default" theme
# You just need to override what you want to have changed
# This theme for gitprompt.sh is optimized for the "Solarized Dark" and "Solarized Light" color schemes
# tweaked for Ubuntu terminal fonts
# some modifications on colors
# added ruby prompt, and kernel version as well
override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"
  NODE_PROMPT='node {$(node -v)}'
  Time12a="\$(date +%H:%M:%S)"

  GIT_PROMPT_STAGED="${Yellow}● "
  GIT_PROMPT_UNTRACKED="${Cyan}… "
  GIT_PROMPT_STASHED="${BoldMagenta}⚑ "
  GIT_PROMPT_CLEAN="${Green}✔ "
  GIT_PROMPT_COMMAND_OK="${Green}✔ "
  GIT_PROMPT_COMMAND_FAIL="${Red}✘ "

  GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${BoldBlueFg}${Time12a} ${Cyan}${NODE_PROMPT} ${Yellow}${PathShort}"
  GIT_PROMPT_START_ROOT="${GIT_PROMPT_START_USER}"
  if [ -n "$SSH_CLIENT" ]; then
    GIT_PROMPT_END_USER="\n${BoldRed} ➤ ${ResetColor}"
    GIT_PROMPT_END_ROOT="\n${BoldRed} » ${ResetColor}"
  else
    GIT_PROMPT_END_USER="\n${BoldBlue} ➭ ${ResetColor}"
    GIT_PROMPT_END_ROOT="\n${BoldRed} # ${ResetColor}"
  fi
  GIT_PROMPT_LEADING_SPACE=1
  GIT_PROMPT_PREFIX="${Cyan}["
  GIT_PROMPT_SUFFIX="${Cyan}]"
  GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="✭"
}

reload_git_prompt_colors "Custom"
