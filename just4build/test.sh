./pack-simple.sh
pack build showpune/spring-petclinic:buildonly  --env BP_MAVEN_BUILD_ONLY=true --builder showpune/builder-java-azure-just-build:debian --path ../sample/source --volume /mnt/c/oci/workspace:/tmp:rw -v
#docker container create --name buildsource showpune/spring-petclinic:buildonly
#docker container cp buildsource:/workspace .
#docker container rm buildsource

#pack build showpune/spring-petclinic:buildonly  --env BP_MAVEN_BUILD_ONLY=true --builder showpune/builder-java-azure-just-build:debian --path ../sample/source -v

#pack build showpune/spring-petclinic:buildonly   --path ../sample/source -v

