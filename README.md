# hercules Matsh Game Node.js Project

- express was used in the project. 
- The email address is verifying
- You need to run the project on the server with npm.

# Installation

You need to write the following commands on the terminal screen so that you can run the project locally.

```sh
1. git clone https://github.com/HerculesNode/matshgame.git
2. cd matshgame
3. npm install
4. npm start
```

- make the necessary adjustments with nginx
- this project works with port 5555

```sh
server { 
    listen 443 ssl; 
    server_name <domain> *.<domain>;

    ssl_certificate /etc/letsencrypt/live/<domain>/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/<domain>/privkey.pem;
 
    location / { 
        proxy_pass http://localhost:5555; 
      
    } 
}

```

- ex https://matshgame.herculesrollap.store
