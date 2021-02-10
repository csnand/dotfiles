# https://get-coursier.io/docs/cli-installation.html#native-launcher

# curl -fLo cs https://git.io/coursier-cli-linux &&
#     chmod +x cs &&
#     ./cs

# https://scalameta.org/metals/docs/editors/emacs.html
# Make sure to use coursier v1.1.0-M9 or newer.
# curl -x socks5h://localhost:1080 -L -o coursier https://git.io/coursier-cli

curl -L -o coursier https://git.io/coursier-cli

chmod +x coursier

./coursier bootstrap \
  --java-opt -Xss4m \
  --java-opt -Xms100m \
  --java-opt -Dmetals.client=emacs \
  org.scalameta:metals_2.12:0.9.7 \
  -r bintray:scalacenter/releases \
  -r sonatype:snapshots \
  -o /usr/local/bin/metals-emacs -f

