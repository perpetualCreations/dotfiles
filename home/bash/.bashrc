#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"

# first time i've written anything original in bash.

hr=""

# populate horizontal rule with equal signs, the
# number of which equal to the number of columns the
# console has.

for ((i=0; i<$(tput cols); i++)); do
    hr="${hr}="
done

# print horizontal rules, neofetch, and LC quote

echo "${hr}"
neofetch
echo "FACE THE FEAR, BUILD THE FUTURE."
echo "WELCOME TO OUR CORP."
echo "${hr}"
