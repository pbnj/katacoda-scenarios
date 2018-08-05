echo "Launching Kubernetes cluster..."
launch.sh
echo "Downloading Go installer..."
curl -sL -o ~/gimme https://raw.githubusercontent.com/travis-ci/gimme/master/gimme
chmod +x ~/gimme
echo "Installing Go..."
~/gimme stable
