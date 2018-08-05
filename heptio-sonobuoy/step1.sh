echo "Launching Kubernetes cluster..."
launch.sh
echo "Downloading Go installer..."
curl -sL -o ~/bin/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
chmod +x ~/bin/gimme
echo "Installing Go..."
gimme stable
