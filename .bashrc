export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/texbin:/usr/local/bin

# for python virtual environment
if [ -r /usr/bin/virtualenvwrapper.sh ]; then
    source /usr/bin/virtualenvwrapper.sh
fi
if [ -r /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
export WORKON_HOME=$HOME/.virtualenvs


# for android studio
if [ -d /opt/android/android-studio/bin ]; then
    export PATH="$PATH:/opt/android/android-studio/bin"
fi

# for pycharm
if [ -d /opt/pycharm/bin ]; then
    export PATH="$PATH:/opt/pycharm/bin"
fi
