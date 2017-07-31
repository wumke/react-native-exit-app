# react-native-exit-app
Exit / Close / Kill / shutdown your react native app. Does not invoke a crash notification.

## Setup

```bash
npm install react-native-exit-app
```

Or add the latest version as dependeny to your package.json.

```javascript
{
  "name": "YourProject",
  ...
  },
  "dependencies": {
    ...
    "react-native-exit-app": "0.1.0",
    ...
  }
```

#### iOS
* Add RNExitApp.xcoderproj into your project in the Libraries folder.
* Add the .a file on the General tab of your target under Linked Frameworks And Libraries
* Add the .a file on the Build Phases tab of your target under Link Binary With Libraries

#### Android
* In the settings.gradle
  ```
    include ':react-native-exit-app', ':app'
    project(':react-native-exit-app').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-exit-app/android')
  ```
* In the build.gradle
  ```
    compile project(':react-native-exit-app')
  ```
* In MainApplication.java
  ```
    import com.github.wumke.RNExitApp.RNExitAppPackage;
    ...
    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
        ...
        new RNExitAppPackage(),
        ...
      );
    }
    ...
  ```
## Usage

```javascript
import RNExitApp from 'react-native-exit-app';
...
RNExitApp.exitApp();
...
```

## Versioning

This project uses semantic versioning: MAJOR.MINOR.PATCH.
This means that releases within the same MAJOR version are always backwards compatible. For more info see [semver.org](http://semver.org/).
