来自 gitpod/workspace-full-vnc：2022-07-20-05-50-58
SHELL [“/bin/bash”， “-c”]
环境ANDROID_HOME=$HOME/androidsdk \
FLUTTER_VERSION=3.0.2-稳定 \
QTWEBENGINE_DISABLE_SANDBOX=1
环境PATH=“$HOME/FLUTTER/bin：$ANDROID_HOME/emulator：$ANDROID_HOME/tools：$ANDROID_HOME/cmdline-tools/latest/bin：$ANDROID_HOME/platform-tools：$PATH”

#安装 Open JDK for android 和其他依赖项
用户根目录
运行安装包 openjdk-8-jdk -y \
libgtk-3-dev \
libnss3-dev \
fonts-noto \
fonts-noto-cjk \
&& update-java-alternatives --set java-1.8.0-openjdk-amd64

#为我们的 vnc 客户端和颤振铬进行一些更改
#RUN sed -i 's|resize=scale|resize=remote|g' /opt/novnc/index.html \
# && _gc_path=“$（command -v google-chrome）” \
# &&rm “$_gc_path” && printf '%s\n' '#！/usr/bin/env bash' \
#'铬 --开始-全屏 “$@”' > “$_gc_path” \
# && chmod +x “$_gc_path”

#Insall 颤振和依赖关系
用户 gitpod
RUN wget -q “https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}.tar.xz” -O - \
|tar xpJ -C “$HOME” \
&&_file_name=“commandlinetools-linux-8092744_latest.zip” && wget “https://dl.google.com/android/repository/$_file_name” \
&&解压缩“$_file_name” -d $ANDROID_HOME \
&&RM -f “$_file_name” \
&& mkdir -p $ANDROID_HOME/cmdline-tools/latest \
&& mv $ANDROID_HOME/cmdline-tools/{bin，lib} $ANDROID_HOME/cmdline-tools/latest \
&& 是的 |SDKmanager“platform-tools” “build-tools;31.0.0” “platforms;android-31”  \
&&Flutter precache && for _plat in Web Linux-desktop;do flutter config --enable-${_plat};做\
&&Flutter config --android-sdk $ANDROID_HOME \
&& 是的 |颤振医生 --安卓许可证 \
&&颤振医生
