#!/bin/bash
# Install Atlassian Jira
# Now Install Atlassian Jira
sh /opt/atlassian-$AppName-$AppVer-jira-$AppVer-$Arch.bin -q -varfile /opt/response.varfile

# Clean up
rm -f /opt/atlassian-$AppName-$AppVer-jira-$AppVer-$Arch.bin
