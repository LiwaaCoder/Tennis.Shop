# Tennis.Shop


Sure! Here's an example of a README file for your TennisShop app, highlighting the use of Firebase Storage, Authentication, and Apple Pay functionality:

# TennisShop App

TennisShop is a SwiftUI-based mobile application that allows users to browse and purchase tennis rackets. The app integrates Firebase Storage for storing racket photos, Firebase Authentication for user authentication, and implements Apple Pay functionality for seamless checkout.

## Features

- Browse and search for tennis rackets.
- View detailed information and photos of each racket.
- Add rackets to the shopping cart.
- Authenticate users using Firebase Authentication.
- Securely process payments with Apple Pay.
- Store and retrieve racket photos using Firebase Storage.

## Technologies Used

- SwiftUI: A modern UI framework for building iOS, macOS, watchOS, and tvOS apps.
- Firebase: A comprehensive platform that provides various services, including Firebase Storage and Firebase Authentication.
- Apple Pay: A payment method that enables users to make secure purchases using their Apple devices.

## Screenshots
![Simulator Screenshot - iPhone 14 Pro - 2023-07-15 at 00 11 14](https://github.com/LiwaaCoder/Tennis.Shop/assets/66652532/234549af-4e24-4412-8da4-3c1f48cdb62c)

![Simulator Screenshot - iPhone 14 Pro - 2023-07-15 at 00 11 04](https://github.com/LiwaaCoder/Tennis.Shop/assets/66652532/c5d8d85b-1fd5-4f4b-9f4b-39cc08f83a5c)

![Simulator Screenshot - iPhone 14 Pro - 2023-07-14 at 23 27 26](https://github.com/LiwaaCoder/Tennis.Shop/assets/66652532/e49819b1-ce48-4cfe-8582-d0190520bc24)


## Installation
2. Install Cocoapods dependencies: `pod install`
3. Set up Firebase project:
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Add iOS app to the project and download the `GoogleService-Info.plist` file.
   - Place the `GoogleService-Info.plist` file in the root directory of the project.
4. Enable Apple Pay:
   - Set up Apple Pay entitlements and merchant ID in your Apple Developer account.
   - Configure Apple Pay in your Xcode project.
5. Build and run the app on a simulator or physical device.

Note: Make sure you have Xcode 12 or later and Cocoapods installed on your machine.

## Configuration

To configure the Firebase services and Apple Pay functionality, follow these steps:

1. Firebase Storage:
   - Ensure the Firebase project is set up and the `GoogleService-Info.plist` file is in the correct location.
   - Configure Firebase Storage rules to secure access to the racket photos.
   - Update the Firebase Storage references in the app code to match your project structure.

2. Firebase Authentication:
   - Enable the desired authentication methods (email/password, Google, etc.) in the Firebase project console.
   - Update the app code to handle user authentication flows using Firebase Authentication APIs.

3. Apple Pay:
   - Set up Apple Pay entitlements and merchant ID in your Apple Developer account.
   - Configure the Apple Pay settings in your Xcode project.
   - Integrate Apple Pay functionality in the app code to handle payments.

## Limitations

- The TennisShop app currently focuses on displaying and purchasing tennis rackets only. Additional features like user profiles, order history, and reviews could be implemented in future updates.



Enjoy shopping with TennisShop!
