FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
