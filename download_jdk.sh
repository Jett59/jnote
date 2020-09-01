set -e
set +x

JDK_14_VERSION_NUMBER=30
JDK_14_VERSION=openjdk-14-ea+${JDK_14_VERSION_NUMBER}_windows-x64_bin.zip
JDK_14_EXTRACTED_PATH=jdk-14

if [[ ! -e JDK_14_VERSION ]]; then
  echo "downloading ${JDK_14_VERSION}"
  wget https://download.java.net/java/GA/jdk14.0.1/664493ef4a6946b186ff29eb326336a2/7/GPL/openjdk-14.0.1_windows-x64_bin.zip
fi