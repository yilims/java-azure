# Use the CLI bookworm image as the base for all stacks
FROM ubuntu:jammy as base

# Set required CNB information
ENV CNB_USER_ID=1000
ENV CNB_GROUP_ID=1000
ENV CNB_STACK_ID="com.microsoft.stacks.debian"
LABEL io.buildpacks.stack.id="com.microsoft.stacks.debian"

# Create the 'cnb' user that will be used
RUN groupadd cnb --gid ${CNB_GROUP_ID} && \
  useradd --uid ${CNB_USER_ID} --gid ${CNB_GROUP_ID} -m -s /bin/bash cnb

# Install common packages
RUN apt-get update && \
  apt-get install -y xz-utils ca-certificates && \
  rm -rf /var/lib/apt/lists/*

# Start a new run stage
FROM base as run

# Set the 'cnb' user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}

# Start a new build stage
FROM base as build

# Install packages that we want to make available at build time
RUN apt-get update && \
  apt-get install -y jq && \
  rm -rf /var/lib/apt/lists/*

# Set the 'cnb' user and group (as declared in base image)
USER ${CNB_USER_ID}:${CNB_GROUP_ID}