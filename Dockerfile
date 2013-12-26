# Install Atlassian Jira
# This is a trusted build based on the "base" image, but we also need postgresql
FROM linux/postgres

MAINTAINER Tom Eklöf tom@linux-konsult.com

# Fetch the files
ADD http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.1.5-x64.bin /opt/
ADD ./install_cmds.sh /install_cmds.sh
ADD ./node.json /etc/chef/node.json
ADD ./response.varfile /opt/response.varfile
ADD ./postgres.sh /postgres.sh
ADD ./init.sh /init.sh
ADD ./install_cmds.sh /install_cmds.sh

## Now Install Atlassian Jira
RUN /install_cmds.sh

# Start the service
CMD ["sh", "/init.sh"]
EXPOSE 8080