# Use AlmaLinux 8 (modern and fast)
FROM almalinux:8

# Install Apache
RUN dnf install -y httpd && \
    dnf clean all

# Copy index.html to Apache root
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Run Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
