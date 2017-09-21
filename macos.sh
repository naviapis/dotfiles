#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `macos.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

###############################################################################
# Dock                                                                        #
###############################################################################

# サイズ
defaults write com.apple.dock tilesize -int 44

# 画面上の位置
defaults write com.apple.dock.orientation -string "right"

# ウインドウをアプリケーションアイコンにしまう
defaults write com.apple.dock minimize-to-application -bool true

# Dockを自動的に隠す/表示
#defaults write com.apple.dock autohide -bool true
#defaults write com.apple.dock autohide-delay -float 0

###############################################################################
# Mission Control                                                             #
###############################################################################

# ホットコーナー
# Corner:
#  2: Mission Control
#  3: アプリケーションウインドウ
#  4: デスクトップ
#  7: Dashboard
# 12: 通知センター
# 11: Launchpad
#  5: スクリーンセーバを開始する
#  6: スクリーンセーバを無効にする
# 10: ディスプレイをスリープさせる
#  0: -
# Modifier:
# 1048576: command
#  131072: shift
#  262144: control
#  524288: option
#       0: -
# 画面左上コーナー
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 262144
# 画面右上コーナー
defaults write com.apple.dock wvous-tr-corner -int 12
defaults write com.apple.dock wvous-tr-modifier -int 262144
# 画面右下コーナー
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0
# 画面左下コーナー
defaults write com.apple.dock wvous-bl-corner -int 11
defaults write com.apple.dock wvous-bl-modifier -int 0

###############################################################################
# マウス                                                                      #
###############################################################################

# 軌跡の速さ
defaults write NSGlobalDomain com.apple.mouse.scaling 3

###############################################################################
# トラックパッド                                                              #
###############################################################################

# タップでクリック
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# 軌跡の速さ
defaults write NSGlobalDomain com.apple.trackpad.scaling 3

###############################################################################
# Finder                                                                      #
###############################################################################

# すべてのファイル名拡張子を表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# 拡張子を変更する前に警告を表示
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

###############################################################################
# Cripy                                                                       #
###############################################################################

# クリップボード履歴 / 記憶する履歴の数 (デフォルト: 30)
defaults write com.clipy-app.Clipy.kCPYPrefMaxHistorySizeKey -int 100

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Cripy" \
        "Dock" \
        "Finder"; do
    killall "${app}" &> /dev/null
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
