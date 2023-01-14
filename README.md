# Welcome to BilowApp

Read the following carefully to understand the structure of the app,  
how to run with flavors, and how to steps to create a branch

# Branches

| Branch          | Purpose                                                                                                                                                                                                                                          |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| production      | The live branch. After testing has passed you can `merge` your task-branch in via **PR only**                                                                                                                                                    |
| staging*        | The Testing branch. After PR has been approved, `checkout` in to staging and `merge` your branch in to it so it can be tested                                                                                                                    |
| dev-task-branch | The issue branch. Create the branch from production and after issue is complete create a PR to merge back in to production. In the case that a sub-task-branch as been made from the task-branch the PR must be pointing back to the task-branch |

** staging - The staging branch is a mirror of the production branch. Every so often, the staging branch can get a little messy so reset the branch back to production.

# Before Anything

Do a global search and replace of `com.bilowapp.starter` to `com.yourcompanyname.yourappname`. This
will replace all the package names in the project to your needed package name. This will also update
this README.md file which will make the firebase setup easier.

# Prepping Firebase

Create 3 Firebase Projects ending with -development, -staging, and -production.

![firebase-projects-sample](https://drive.google.com/uc?export=view&id=1OWsHKc2n6bT_NfmWsu23pQRH_0JaotkE)

Then run the following commands with your bundle-id/package-name in the root of your Flutter project.
You can omit the `--no-apply-gradle-plugins \ --no-app-id-json` if you want to use Analytics,
Performance Monitoring or Crashlytics.

    # Development
    flutterfire configure --project=bilowapp-development \
        -a com.bilowapp.starter.development \
        -i com.bilowapp.starter.development \
        -m com.bilowapp.starter.development \
        -o lib/firebase/firebase_options_development.dart \
        --no-apply-gradle-plugins \
        --no-app-id-json

    # Staging
    flutterfire configure --project=bilowapp-staging \
        -a com.bilowapp.starter.staging \
        -i com.bilowapp.starter.staging \
        -m com.bilowapp.starter.staging \
        -o lib/firebase/firebase_options_staging.dart \
        --no-apply-gradle-plugins \
        --no-app-id-json

    # Production
    flutterfire configure --project=bilowapp-production \
        -a com.bilowapp.starter \
        -i com.bilowapp.starter \
        -m com.bilowapp.starter \
        -o lib/firebase/firebase_options_production.dart \
        --no-apply-gradle-plugins \
        --no-app-id-json

# Running the app

**Android Studio**
Simply select the flavor and run mode you want by selecting the pre-configured configurations and run the app

![via-ide-sample](https://drive.google.com/uc?export=view&id=1ZU-HHPwnW-fZT1sgpa-U2noEYjdhwxWJ)

**Terminal**  
Simply run the command in the terminal

    # Debug Mode
    flutter run -flavor production -t lib/main_production.dart
    flutter run -flavor development -t lib/main_development.dart
    flutter run -flavor staging -t lib/main_staging.dart
          
    # Profile Mode  
    flutter run -profile -flavor production -t lib/main_production.dart
    flutter run -profile -flavor development -t lib/main_development.dart
    flutter run -profile -flavor staging -t lib/main_staging.dart
           
    # Release Mode  
    flutter run -release -flavor production -t lib/main_production.dart
    flutter run -release -flavor development -t lib/main_development.dart
    flutter run -release -flavor staging -t lib/main_staging.dart


# Building the app for release

**Terminal**
Simply run the command in the terminal

    # iOS  
    flutter build ios --release  --flavor production -t lib/main_production.dart

    # Android
    flutter build appbundle --release  --flavor production -t lib/main_production.dart

    # macOS
    flutter build macos -t lib/main_production.dart

    # Linux
    snapcraft

    # Windows (only on PC)
    flutter build windows -t lib/main_production.dart
    