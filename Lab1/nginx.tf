#Create index.html
resource "local_file" "index_html" {
  filename = "${path.module}/nginx/index.html"
  content  = <<-EOT
    <html>
      <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Docker on the Nginx Server</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    background-color: #e0f7fa; /* Light cyan background */
                    color: #333;
                    margin: 0;
                    padding: 20px;
                }
                h1 {
                    color: #007bff; /* Blue color for the header */
                }
                footer {
                    margin-top: 20px;
                    font-size: 0.9em;
                    color: #777;
                    text-align: center;
                }
            </style>
      </head>
      <body>
        <h1>CNFP-01 Assignment-05</h1>
        <p>Explore the CNFP-01 Terraform Challenge, showcasing Docker's deployment on the NGINX server.</p>
        <footer>
            <p>&copy; 2024 CNFP-01 Challenge</p>
        </footer>
      </body>
    </html>
  EOT
}

#Create nginx.conf
resource "local_file" "nginx_conf" {
  filename = "${path.module}/nginx/nginx.conf"
  content  = <<-EOT
    worker_processes auto;
    events { worker_connections 1024; }
    http {
      server {
        listen 1918;
        server_name localhost;

        location / {
          root /usr/share/nginx/html;
          index index.html index.html;
        }
      }
    }
  EOT
}