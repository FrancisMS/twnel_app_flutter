# twnel_face_app

Face detection App.

## Development Environment Setup

### Versions

Flutter version: 2.5.1
Dart version: 2.14.2

### Installation

To do this, navigate to Settings > Plugins, search for Kotlin, and click Install.
When the install is complete, you will need to restart Android Studio to apply the new plugin.

### Run the project

#### Simulator

Navigate to Tools > AVD Manager and select Create a Virtual Device... Choose a device and click on next. Select a system image with API level greater than 21 and click on next. Write a name for your new device and click on finish. Once the device is created, you will see it in the list of virtual devices.
Close the window and now go to Run > Run 'app' or click on the play button.

#### Physical device

First, you need to enable the developer options.

To enable Developer Options, open the Settings screen, scroll down to the bottom, and tap About phone. Scroll down to the bottom of the About screen and find the Build number. Tap the Build number field seven times to enable Developer Options. Tap a few times and you’ll see a toast notification with a countdown that reads “You are now X steps way from being a developer.”. When you’re done, you’ll see the message “You are now a developer!”.

Tap the Back button and you’ll see the Developer options menu just above the “About Phone” section in Settings. This menu is now enabled on your device—you won’t have to repeat this process again unless you perform a factory reset. If you can't find this option, try searching "Developer options".

To enable USB Debugging, you’ll need to jump into the Developer options menu, scroll down to the Debugging section, and toggle the “USB Debugging” slider.

Now, connect your phone to your computer and allow USB debugging. You'll see your phone in the list of running devices in Android Studio, on the left of the play button.

Go to Run > Run 'app' or click on the play button.