React Native Build Script
=

### 👨‍💻 Usage
### 💻 Sh script
Insert script in react project folder and run
```sh
./build.sh
```
If necessary run
```sh
chmod +x ./build
```
In final apk is located in *android/app/build/outputs/apk/app-release.apk*

### 🐋 Docker
Insert Dockerfile react project folder and build dockerfile image
```sh
docker build -t <container_tag> .
```
Now run the container
```sh
docker run -v /android/android/app/build/outputs/apk:<external_folder_output> <container_tag>
```

## 👥 Authors
- Wesley Adriann
  - Github: [wesleyadriann](https://github.com/WesleyAdriann)
  - LinkedIn: [in/wesleyadriann](https://www.linkedin.com/in/wesleyadriann/)


## 📍 URL Project Reference

- [https://github.com/WesleyAdriann/react_native_build_script](https://github.com/WesleyAdriann/react_native_build_script)
