# README
A portfolio application in flutter

## Installation
1. Clone it to a folder ```git clone https://github.com/sarabjot294/portfolio-app.git```
2. Install [Android Studio](https://developer.android.com/studio)
3. Install [Flutter SDK](https://docs.flutter.dev/get-started/install) 
4. Make sure to add Flutter to the env path. 
5. Run ```flutter doctor``` on the command line and remove any errors.
6. Run ```flutter devices``` to check if you have any devices to run the project on.
7. Make sure Android SDK command line tools are installed.
8. Check flutter version ```flutter --version```. This project is built in 2.8.1
9. Run ```flutter build``` to build the project.
10. Run ```flutter run -d chrome``` to run the project in chrome browser.

## Deployment
1. Clone the deployment repository next to your portfolio-app folder:
   ```bash
   git clone https://github.com/sarabjot294/sarabjot294.github.io.git
   ```

2. Build the web version in your portfolio-app directory:
   ```bash
   flutter build web
   ```

3. Create a new version branch in the deployment repo:
   ```bash
   cd ../sarabjot294.github.io
   git checkout -b version-x-20yz
   ```

4. Copy the build files (Windows):
   ```bash
   xcopy ..\portfolio-app\build\web\* . /E /H /C /I
   ```

5. Commit and push the changes:
   ```bash
   git add .
   git commit -m "Deploy version x 20yz"
   git push origin version-x-20yz
   ```

6. Deploy through GitHub Pages:
   - Go to https://github.com/sarabjot294/sarabjot294.github.io/settings/pages
   - Under "Branch", select your new branch (version-x-20yz)
   - Click "Save"
   - Your site will be published at https://sarabjot294.github.io

## Contact

Sarabjot Singh - singh.sarabjot@outlook.com
