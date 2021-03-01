#! /bin/bash
if [ ! -d ~/.m2 ]; then
  mkdir -p ~/.m2;
fi
ESCAPED_NEXUS_REPO=$(printf '%s\n' "$NEXUS_REPO" | sed -e 's/[\/&]/\\&/g')
sed -e "s/NEXUS_RM_USER/$NEXUS_RM_USER/" \
-e "s/NEXUS_RM_PASSWORD/$NEXUS_RM_PASSWORD/" \
-e "s/NEXUS_REPO/$ESCAPED_NEXUS_REPO/" \
./settings.template.xml > ./settings.xml