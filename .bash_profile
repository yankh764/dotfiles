# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

#Set XDG_RUNTIME
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi


# Start sway session om tty1 login 
if [ "$(tty)" == "/dev/tty1" ]; then
  exec dbus-run-session sway 2>> /tmp/wayland_session.log
fi



#Environment variables 
MOZ_ENABLE_WAYLAND=1 #Env variable for firefox
MOZ_USE_XINPUT2=1 #Smooth touch
