pack build showpune/spring-petclinic:mybp --builder showpune/builder-java-azure:debian --path /mnt/c/projects/spring-petclinic -v
docker run --rm -p 8080:8080 showpune/spring-petclinic:mybp-debian

pack rebase showpune/spring-petclinic:mybp-debian 