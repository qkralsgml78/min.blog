### Docker compose
```
 sudo docker compose -f docker/compose.yml ps -a
 NAME                   IMAGE                     COMMAND                  SERVICE       CREATED        STATUS
             PORTS
awsgoo-blog-2          minhee84/blog-tomsawyer   "/bin/sh -c 'service…"   blog          18 hours ago   Exited (255) 36 minutes ago   80/tcp
awsgoo-blog-3          minhee84/blog-tomsawyer   "/bin/sh -c 'service…"   blog          17 hours ago   Exited (255) 36 minutes ago   80/tcp
awsgoo-blog-4          minhee84/blog-tomsawyer   "/bin/sh -c 'service…"   blog          17 hours ago   Exited (255) 36 minutes ago   80/tcp
awsgoo-nginx-proxy-1   nginxproxy/nginx-proxy    "/app/docker-entrypo…"   nginx-proxy   17 hours ago   Exited (255) 36 minutes ago   0.0.0.0:9889->80/tcp, :::9889->80/tcp


