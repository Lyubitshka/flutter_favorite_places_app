# Favorite Places App 📍  

A Flutter application for saving, viewing, and organizing your favorite places. This app utilizes native device features to provide a seamless and interactive user experience.  

## Features  
- 📸 Capture photos of your favorite places using the device camera (`image_picker` package).  
- 🌍 Fetch and save the current location using the `location` package.  
- 🗺️ Display locations on a map with Google Maps API integration.  
- 📁 Store and manage a collection of places with images and location details.  
- 🌟 User-friendly and responsive design.  

## Tech Stack  
- **Flutter**: App development framework  
- **Native Features**: Device camera and location services  
- **Packages**:  
  - `image_picker`: For taking and selecting images  
  - `location`: To access device GPS and fetch the current location  
  - `google_maps_flutter`: For Google Maps integration  
  - `flutter_dotenv`: For securely storing and managing API keys and other sensitive configuration variables  

## Requirements  
- Flutter SDK ([Installation Guide](https://flutter.dev/docs/get-started/install))  
- API Key for Google Maps ([Get API Key](https://developers.google.com/maps/documentation/javascript/get-api-key))  

## Installation  
1. Create flutter project.
2. Copy lib folder to your project.
3. Install dependencies: `flutter pub get`.
4. Get API Key for Google Maps.
5. Create .env file for securely store API key.
6. Run the app on your emulator.

![favpl_1](https://github.com/user-attachments/assets/32d9c805-c447-4354-aea4-19b6373855a0)
![favpl_2](https://github.com/user-attachments/assets/bf17a57d-39b9-4142-85c7-447651daaa83)
![favpl_3](https://github.com/user-attachments/assets/c986731d-a890-4314-8226-6c7a20802cd7)
![favpl_4](https://github.com/user-attachments/assets/0aef8981-7bd2-4871-b1b1-04bb2e907267)

## Future Enhancements
📌 Add the ability to edit saved places.<br>
🌈 Dark mode support.<br>
🔍 Advanced search and filtering for places.<br>
💾 Use the shared_preferences package for saving user preferences locally.

## Acknowledgments
Special thanks to the Flutter community for their amazing tools and resources!
