# The following are a set of custom bash functions and aliases that should go in
# a .bashrc file

function mkenter () {
    mkdir $1 && cd $1
}
