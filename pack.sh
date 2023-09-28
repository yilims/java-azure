VERSION=0.0.1
pack buildpack package oryx/java-azure:$VERSION --config ./package.toml --pull-policy always
BUILDER_VERSION=0928.1
pack builder create oryx/builder-java-azure:$BUILDER_VERSION --config ./builder.toml --pull-policy always
pack build app/demo:0.0.18 --builder oryx/builder-java-azure:$BUILDER_VERSION  --path /mnt/c/source/demo --env BP_JAVA_VERSION=17 -v --pull-policy always