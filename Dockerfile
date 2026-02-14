#use offical Nginx image
FROM nginx:latest

#Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

#copy your website files
COPY *.html /usr/share/nginx/html

#copy custom nginx config(optional)
#copy nginx.conf /etc/nginx/nginx.conf

#Expose port 80
EXPOSE 80

#Start nginx
CMD ["nginx","-g","daemon off;"]
