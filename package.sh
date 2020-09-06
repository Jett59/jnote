set -e
set +x

JDK_14_EXTRACTED_PATH=jdk-14.0.1

export JPACKAGE_HOME=./${JDK_14_EXTRACTED_PATH}
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/c/Users/circleci/project/Wix.Toolset.3.9.1208.0/tools/wix:$PATH
export MAVEN_OPTS=-"Xmx3072m -XX:MaxPermSize=512m -XX:+CMSClassUnloadingEnabled -XX:-UseGCOverheadLimit"

function mvn {
  /c/ProgramData/chocolatey/lib/maven/apache-maven-3.6.2/bin/mvn $@
}

mvn clean package

${JPACKAGE_HOME}/bin/jpackage \
--type msi \
-d ./target/installer \
--name jnote \
--input ./target/release-directory \
--description "java note taking software" \
--app-version 1.0 \
--copyright "2020 Jett Thompson" \
--vendor "Jett Thompson" \
--main-jar jnote.jar \
--module-path ./target/release-directory/lib \
--add-modules javafx.controls \
--win-shortcut \
--win-menu \
--win-dir-chooser \
--verbose

cp ./target/installer/jnote-1.0.msi ~/jnote-64.msi