./pack-simple.sh
pack build showpune/spring-petclinic:buildonly --builder showpune/builder-java-azure-just-build:debian --path /mnt/c/projects/spring-petclinic --env BP_MAVEN_BUILD_ONLY=true -v
docker container create --name test01 showpune/spring-petclinic:buildonly
docker container cp test01:/workspace .