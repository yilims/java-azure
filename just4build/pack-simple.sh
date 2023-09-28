pack buildpack package showpune/buildpack-java-azure-just-build:latest --config ./package.toml
docker push showpune/buildpack-java-azure-just-build:latest
pack builder create showpune/builder-java-azure-just-build:debian --config ./builder.toml
docker push showpune/builder-java-azure-just-build:debian

