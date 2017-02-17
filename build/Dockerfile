#
#                    ##        .            
#              ## ## ##       ==            
#           ## ## ## ##      ===            
#       /""""""""""""""""\___/ ===        
#  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~   
#       \______ o          __/            
#         \    \        __/             
#          \____\______/                
# 
#          |          |
#       __ |  __   __ | _  __   _
#      /  \| /  \ /   |/  / _\ | 
#      \__/| \__/ \__ |\_ \__  |
#
# Dockerfile for remote docker controller
FROM alpine:latest

MAINTAINER Uni Mock <unimock@gate-m.de>

RUN apk update && \
    apk add bash git openssl

RUN git clone https://github.com/cyberbix/uCA.git /uCA
RUN rm -rf /uCA/LICENSE /uCA/.git
RUN mv     /uCA/scripts /
RUN rm -rf /var/cache/apk/* 

COPY ./entry.sh /entry.sh
RUN chmod a+x /entry.sh
ENTRYPOINT ["/entry.sh"]
