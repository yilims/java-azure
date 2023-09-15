pack buildpack package showpune/buildpack-java-azure:latest --config ./package.toml
docker push showpune/buildpack-java-azure:latest
pack builder create showpune/builder-java-azure:jammy --config ./builder.toml
docker push showpune/builder-java-azure:jammy