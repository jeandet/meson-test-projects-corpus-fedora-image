FROM fedora:28
LABEL maintainer="Alexis Jeandet <alexis.jeandet@member.fsf.org>"
LABEL description="This is a Fedora based container made to build meson meson-test-projects-corpus."

RUN dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
		https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

RUN dnf clean all && update -y

RUN dnf install -y git cmake tar gzip unzip ninja-build xonsh python3-pip python3-PyYAML time valgrind-devel libunwind-devel \ 
                   elfutils-devel pygobject3-devel gsl-devel gtk-doc libmount-devel \
	           nasm flex bison gcc-c++ libva-devel json-glib-devel libxml2-devel flex gettext libselinux-devel \
	           gdk-pixbuf2-devel ffmpeg-devel python3-devel opencore-amr-devel libcdio-devel glib2-devel libdvdread-devel \
	           libmpeg2-devel x264-devel orc-devel zbar-devel libwebp-devel libexif-devel webrtc-audio-processing-devel \
	           gtk3-devel vulkan-devel libnice-devel pango-devel cairo-devel libsrtp-devel soundtouch-devel librtmp-devel \
	           opus-devel libdvdnav-devel libdvdread-devel openjpeg2-devel openjpeg-devel gtest-devel mjpegtools-devel \
	           libmms-devel lilv-devel libkate-devel fluidsynth-devel openssl-devel libX11-devel xkeyboard-config-devel \
	           qt5-qtbase-devel opencv-devel libcurl-devel libdca-devel libusbx-devel spandsp-devel systemd-devel \
	           mesa-libGLES-devel python2-mako libXvMC-devel libomxil-bellagio-devel elfutils-libelf-devel libxshmfence-devel \
                   libvdpau-devel libdrm-devel kbd quota kexec-tools libcap-devel libmount-devel libgcrypt-devel gtk-doc \
                   libnotify-devel json-glib-devel libsoup-devel ModemManager-glib-devel avahi-devel avahi-glib-devel \
                   mpv-libs-devel  mesa-libEGL-devel flex-devel bison-devel gcc-objc SDL2-devel mesa-vulkan-devel 
