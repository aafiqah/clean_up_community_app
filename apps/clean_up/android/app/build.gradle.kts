plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

dependencies {
  implementation(platform("com.google.firebase:firebase-bom:34.12.0"))
}

android {
    namespace = "com.example.clean_up_community"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.example.clean_up_community"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += "default"

    productFlavors {
        create("development") {
            dimension = "default"
            applicationIdSuffix = ".development"
        }

        create("staging") {
            dimension = "default"
            applicationIdSuffix = ".staging"
        }

        create("production") {
            dimension = "default"
        }
    }

    sourceSets {
        development {
            manifest.srcFile 'src/development/AndroidManifest.xml'
            res.srcDirs = ['src/development/res']
        }

        staging {
            manifest.srcFile 'src/staging/AndroidManifest.xml'
            res.srcDirs = ['src/staging/res']
        }

        production {
            manifest.srcFile 'src/production/AndroidManifest.xml'
            res.srcDirs = ['src/production/res']
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
