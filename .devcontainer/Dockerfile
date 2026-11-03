FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

# Base tools + Kali metapackage (NO rclone here — not in Kali repo)
RUN apt update && apt install -y \
    openssh-server sudo tmux curl git ca-certificates unzip \
    kali-linux-headless \
    nmap masscan sqlmap gobuster ffuf hydra john netcat-openbsd \
 && rm -rf /var/lib/apt/lists/*

# rclone from official installer (works on Kali/Debian)
RUN curl -fsSL https://rclone.org/install.sh | bash \
 && rclone version

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
 && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
 && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
 && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR /workspaces
