@echo off
echo Creating src folder...
mkdir src 2>nul

echo Creating index.php...
echo ^<?php echo "^<h1^>Hello Docker!^</h1^>"; phpinfo(); ?^> > src/index.php

echo Building Docker image...
docker build -t php-app .

echo Starting container...
docker run -d -p 8080:80 --name php-container php-app

echo Done! Check http://localhost:8080
docker ps
pause