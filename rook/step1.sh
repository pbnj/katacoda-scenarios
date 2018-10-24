launch.sh
curl -sL -o ~/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
chmod +x ~/gimme
~/gimme stable
source ~/.gimme/envs/latest.env
