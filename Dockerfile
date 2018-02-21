FROM nginx:1.12.1-alpine

EXPOSE 9001
ENV UPSTREAM_IP=127.0.0.1

COPY nginx.conf /etc/nginx/nginx.conf.template
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
