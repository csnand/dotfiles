# https://get-coursier.io/docs/cli-installation.html#native-launcher

# curl -fLo cs https://git.io/coursier-cli-linux &&
#     chmod +x cs &&
#     ./cs

# https://scalameta.org/metals/docs/editors/emacs.html
# Make sure to use coursier v1.1.0-M9 or newer.
# curl -x socks5h://localhost:1080 -L -o coursier https://git.io/coursier-cli

curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d > cs

chmod +x cs

./cs setup

# Make sure to use coursier v1.1.0-M9 or newer.
curl -L -o coursier https://git.io/coursier-cli
chmod +x coursier
./coursier bootstrap \
           --java-opt -Xss4m \
           --java-opt -Xms100m \
           --java-opt -Dmetals.client=emacs \
           org.scalameta:metals_2.13:0.11.5 \
           -r bintray:scalacenter/releases \
           -r sonatype:snapshots \
           -o ./metals-emacs -f


# update one
# cs update coursier

# update all
# cs update

# uninstall one or more
# cs uninstall scala scalac

# uninstall all
# cs uninstall --all

# once setup coursier will be placed in
# ~/.local/share/coursier/bin


