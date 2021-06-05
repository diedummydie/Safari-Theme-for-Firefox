MY_USERNAME="$(logname 2> /dev/null || echo ${SUDO_USER:-${USER}})"
FIREFOX_DIR_HOME="/Users/${MY_USERNAME}/Library/Application Support/Firefox/Profiles"
FIREFOX_DIR_PROFILE=$(echo "${FIREFOX_DIR_HOME}/"*"default-release")
REPO_DIR="$(pwd)"

ESC_SEQ="\x1b["
COL_GREEN=$ESC_SEQ"32;01m"
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
bold=$(tput bold)
normal=$(tput sgr0)

function warn() {
  echo -e "$COL_ORANGE[warning]$COL_RESET $1"
}
function info() {
  echo -e "$COL_YELLOW[action]:$COL_RESET ⇒ $1"
}
function success() {
  echo -e "$COL_GREEN[success]$COL_RESET $1"
}
function kill_firefox() {
  killall "firefox" &> /dev/null
}
function backup_firefox() {
    { 
        mv -f "${FIREFOX_DIR_PROFILE}/chrome" "${FIREFOX_DIR_PROFILE}/chrome"_$(date '+%Y%m%d-%H%M%S') && echo "Old profile: ${FIREFOX_DIR_PROFILE}/chrome" && echo "Backup profile: ${FIREFOX_DIR_PROFILE}/chrome"_$(date '+%Y%m%d-%H%M%S')
    } || {
        warn "Not able to find a chrome folder in the profile folder."
    }
}
function install_ff_theme() {
    ln -s "${REPO_DIR}" "${FIREFOX_DIR_PROFILE}/chrome"
}

echo -en "$COL_GREEN Firefox Safari theme. $COL_RESET"
echo -en "\n"
echo -en "\n"
echo -e "${bold}Safari installer"
echo -e "⚠ This is a script to add the theme into Firefox, and enable it."
echo -e "⚠ Continuing will quit Firefox. Make sure you save any tabs before proceeding."

echo -en "\n"
warn "=> ${bold}$COL_RED CTRL+C $COL_RESET now to abort ${normal} or ${bold} $COL_GREEN ENTER ${normal} $COL_RESET to continue."

tput bel
read -n 1
    info "Quit Firefox..."
    kill_firefox
    info "Backup your Firefox theme..."
    backup_firefox
    success "Done! The backup finished successfully."

info "Installing Safari Firefox theme to your directory below"
install_ff_theme
success "Done! Safari Firefox theme has been installed."
info "Restart Firefox and you're all set!"
echo "Done."
