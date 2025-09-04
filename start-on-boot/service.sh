#!/system/bin/sh

# This script run during the late_start boot phase (final).
# We will wait for the 'sys.boot_completed' property to be set to 1.
# Most robust way to know the system is ready.
while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# Wait an additional 10s to ensure the home screen is loaded.
sleep 10

# Command to launch Gmail.
am start -n com.google.android.gm/com.google.android.gm.ConversationListActivityGmail