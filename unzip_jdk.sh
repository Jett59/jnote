set -e
set +x

JDK_14_VERSION=openjdk-14.0.1_windows-x64_bin.zip

JDK_14_EXTRACTED_PATH=jdk-14

if [[ ! -e ${JDK_14_EXTRACTED_PATH} ]]; then
unzip ${JDK_14_VERSION}
fi