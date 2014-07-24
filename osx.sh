#!/usr/bin/env bash

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable the “Are you sure you want to open this application?” dialog
ok defaults com.apple.LaunchServices LSQuarantine bool false

# Disable Resume system-wide
ok defaults NSGlobalDomain NSQuitAlwaysKeepsWindows bool false

# Disable the crash reporter
ok defaults com.apple.CrashReporter DialogType string "none"

# Check for software updates daily, not just once per week
ok defaults com.apple.SoftwareUpdate ScheduleFrequency integer 1

# Disable smart quotes as they’re annoying when typing code
ok defaults NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled bool false

# Disable smart dashes as they’re annoying when typing code
ok defaults NSGlobalDomain NSAutomaticDashSubstitutionEnabled bool false

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
ok defaults com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking bool true
ok defaults NSGlobalDomain com.apple.mouse.tapBehavior integer 1

# Disable press-and-hold for keys in favor of key repeat
ok defaults NSGlobalDomain ApplePressAndHoldEnabled bool false

# Set a blazingly fast keyboard repeat rate
ok defaults NSGlobalDomain KeyRepeat integer 0

###############################################################################
# Screen                                                                      #
###############################################################################

# Require password immediately after sleep or screen saver begins
ok defaults com.apple.screensaver askForPassword integer 1
ok defaults com.apple.screensaver askForPasswordDelay integer 0

# Save screenshots to the desktop
ok defaults com.apple.screencapture location string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
ok defaults com.apple.screencapture type string "png"

# Disable shadow in screenshots
ok defaults com.apple.screencapture disable-shadow bool true

# Enable subpixel font rendering on non-Apple LCDs
ok defaults NSGlobalDomain AppleFontSmoothing integer 2

###############################################################################
# Finder                                                                      #
###############################################################################

# Show icons for hard drives, servers, and removable media on the desktop
ok defaults com.apple.finder ShowExternalHardDrivesOnDesktop bool true
ok defaults com.apple.finder ShowHardDrivesOnDesktop bool true
ok defaults com.apple.finder ShowMountedServersOnDesktop bool true
ok defaults com.apple.finder ShowRemovableMediaOnDesktop bool true

# Finder: show all filename extensions
ok defaults NSGlobalDomain AppleShowAllExtensions bool true

# Finder: allow text selection in Quick Look
ok defaults com.apple.finder QLEnableTextSelection bool true

# When performing a search, search the current folder by default
ok defaults com.apple.finder FXDefaultSearchScope string "SCcf"

# Disable the warning when changing a file extension
ok defaults com.apple.finder FXEnableExtensionChangeWarning bool false

# Avoid creating .DS_Store files on network volumes
ok defaults com.apple.desktopservices DSDontWriteNetworkStores bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
ok defaults com.apple.finder FXPreferredViewStyle string "Nlsv"

# Disable the warning before emptying the Trash
ok defaults com.apple.finder WarnOnEmptyTrash bool false

###############################################################################
# Dock and Dashboard                                                          #
###############################################################################

# Show indicator lights for open applications in the Dock
ok defaults com.apple.dock show-process-indicators bool true

# Wipe all (default) app icons from the Dock
# This is only really useful when setting up a new Mac, or if you don’t use
# the Dock to launch apps.
ok defaults com.apple.dock persistent-apps array

# Disable Dashboard
ok defaults com.apple.dashboard mcx-disabled bool true

# Don’t show Dashboard as a Space
ok defaults com.apple.dock dashboard-in-overlay bool true

# Don’t automatically rearrange Spaces based on most recent use
ok defaults com.apple.dock mru-spaces bool false

# Automatically hide and show the Dock
ok defaults com.apple.dock autohide bool true

# Reset LaunchPad at each login
ok defaults com.apple.dock ResetLaunchPad bool true

###############################################################################
# Mail                                                                        #
###############################################################################

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
ok defaults com.apple.mail AddressesIncludeNameOnPasteboard bool false

# Display emails in threaded mode, sorted by date (oldest at the top)
# ok defaults com.apple.mail DraftsViewerAttributes dictionary "DisplayInThreadedMode" string "yes"
# ok defaults com.apple.mail DraftsViewerAttributes dictionary "SortedDescending" string "yes"
# ok defaults com.apple.mail DraftsViewerAttributes dictionary "SortOrder" string "received-date"

# Disable inline attachments (just show the icons)
ok defaults com.apple.mail DisableInlineAttachmentViewing bool true

###############################################################################
# Time Machine                                                                #
###############################################################################

# Prevent Time Machine from prompting to use new hard drives as backup volume
ok defaults com.apple.TimeMachine DoNotOfferNewDisksForBackup bool true
