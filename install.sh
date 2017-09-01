if  [[ $OSTYPE =~ darwin* ]]; then
  brew install pandoc
else
  apt-get install pandoc
fi
