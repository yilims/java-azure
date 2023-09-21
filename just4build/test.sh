./pack-simple.sh
pack build showpune/spring-petclinic:buildonly --builder showpune/builder-java-azure-just-build:debian --path ../sample/source --env BP_MAVEN_BUILD_ONLY=true -v
docker container create --name buildsource showpune/spring-petclinic:buildonly
docker container cp buildsource:/workspace .
docker container rm buildsource