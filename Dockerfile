# Use an official lightweight Node.js image
FROM node:14-alpine AS builder

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the HTML file into the container
COPY resume.html .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the HTML file
CMD ["node", "-e", "require('http').createServer((req, res) => res.end(require('fs').readFileSync('resume.html'))).listen(8080)"]
