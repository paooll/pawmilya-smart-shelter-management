#  Pawmilya: IoT-Integrated Animal Welfare and Smart Shelter Management System


##  Project Overview
Pawmilya is a mobile and web-based application designed to improve animal welfare by integrating pet adoption services, rescue reporting, and smart shelter environmental monitoring using IoT technology.


The system centralizes adoptable pets from multiple shelters into a single platform, making it easier for adopters to find pets that match their lifestyle. Additionally, Pawmilya integrates IoT sensors to monitor shelter conditions such as temperature and humidity, ensuring rescued animals remain in safe and comfortable environments.


The application also supports rescue coordination by allowing users and verified rescuers to report, monitor, and respond to stray animal situations in real-time.


---


## Objectives
- Provide a centralized pet adoption marketplace  
- Improve stray animal rescue coordination  
- Monitor shelter environments using IoT devices  
- Enhance transparency between shelters, rescuers, and adopters  
- Support Smart City environmental monitoring initiatives  


---


##  Technologies Used


###  Mobile & Web Development
- Flutter  
- Dart  
- React Native  


###  Cloud & Backend Services
- Firebase (Authentication, Database, Cloud Storage)  
- Cloud Computing Infrastructure  


###  IoT Hardware
- Arduino Nano  
- ESP8266 WiFi Module  
- DHT11 Temperature and Humidity Sensor  


###  API & Device Integration
- Google Maps API  
- Native Camera Integration  
- Push Notification Services  


---


##  User Roles


###  General Users / Adopters
- Browse adoptable pets  
- Submit adoption applications  
- Report stray animals  
- Track adoption progress  
- Receive notifications  


###  Verified Rescuers
- Accept and manage rescue reports  
- View emergency rescue alerts  
- Track rescued animals  


###  Admin / Shelter Management
- Manage pet listings  
- Approve adoption applications  
- Review rescue reports  
- Manage user accounts  
- Approve rescuer registrations  


---


##  Core Features


###  Pet Adoption Marketplace
- Smart search filtering (species, age, size, temperament)  
- Comprehensive pet profiles with medical history  
- Adoption application tracking  


###  Rescue Reporting System
- Step-by-step stray reporting workflow  
- Map-based location pinning  
- Photo upload support  
- Urgency level classification  
- Real-time rescuer notification  


### IoT Smart Shelter Monitoring
- Real-time environmental sensing  
- Automated temperature and humidity monitoring  
- Cloud-based sensor data storage  
- Alerts for unsafe shelter conditions  


###  Notification System
- Adoption status updates  
- Rescue alerts  
- IoT environmental warnings  


### Connectivity and Mapping
- GPS location tracking  
- Shelter navigation using Google Maps  
- Offline caching for previously loaded data  


---


##  System Architecture


### 1. User & Data Management
- Role-based authentication system  
- Digital adoption processing pipeline  
- Dynamic pet search filtering  


### 2. IoT Hardware Integration
- Arduino reads environmental sensor data  
- ESP8266 transmits data to Firebase Cloud  
- Automatic real-time monitoring every 30 seconds  


### 3. Mobile & Frontend Design
- React Native used for UI and navigation components  
- Flutter and Dart used for cross-platform functionality  
- FlatList components for pet feeds  
- Image Picker for rescue reporting  


---


##  Application Modules


### Guest Module
- App onboarding and mission overview  
- Pet browsing preview  
- User registration and login  


### User Module
- Home dashboard  
- Pet browsing and adoption tracking  
- Shelter directory  
- Rescue reporting workflow  
- User profile and settings  


### Rescuer Module
- Rescue dashboard  
- Active rescue report feed  
- Emergency hotline access  
- Rescue assignment management  


### Admin Module
- Pet management system  
- Rescue report monitoring  
- Adoption approval management  
- Rescuer application review  
- User account management  


---


##  Design Principles
- Large touch targets for accessibility  
- Bottom navigation for mobile usability  
- Consistent color palette and dark mode compatibility  
- Step-by-step rescue reporting workflow  
- Role-based interface separation  


---


##  Installation Instructions


### Clone Repository
git clone https://github.com/paooll/pawmilya-smart-shelter-management.git




### Navigate to Project Folder
cd pawmilya-iot-animal-welfare-system




### Install Dependencies


#### Flutter Setup
flutter pub get




#### React Native Setup
npm install


### Run Application


#### Flutter
flutter run




#### React Native
npx react-native run-android




---


## IoT Device Setup
1. Connect DHT11 Sensor to Arduino Nano  
2. Configure ESP8266 WiFi Module  
3. Upload Arduino Firmware  
4. Connect IoT device to Firebase Cloud Database  
5. Verify sensor data transmission  


---


## Cloud Configuration
- Setup Firebase Project  
- Enable Authentication  
- Configure Realtime Database / Firestore  
- Enable Cloud Storage  
- Setup Push Notifications  


---


## Project Structure
/mobile-app
/flutter
/react-native
/iot-device
/arduino-code
/cloud-services
/firebase-config
/assets
/docs




---


## Future Enhancements
- AI-based pet matching system  
- Shelter analytics dashboard  
- Veterinary integration  
- Community volunteer coordination  
- Expanded IoT monitoring sensors  


---


## Contributors
- Espino, Luis David  
- Libag, Joshua  
- Hernandez, Mark David  
- Penola, John Paul  
- Egil, Abdullah Ibn Mujahid  
- dasantos.it@tip.edu.ph  


---


## Academic Information
Institution: Technological Institute of the Philippines  
Program: BS Information Technology  
Course:  Application Development and Emerging Technologies  


---
