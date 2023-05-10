
Usage of /usr/local/bin/app:
   -cert string
     	path to certificate file
   -cors
     	if true, add ACAO header to support CORS
   -ip string
     	IP address to bind (default "0.0.0.0")
   -key string
     	path to key file
   -loglevel string
     	logging level (default "info")
   -port int
     	port number to listen on (default 25478)
   -protected_method string
     	specify methods intended to be protect by the security token (default "GET,POST,HEAD,PUT")
   -tlsport int
     	port number to listen on with TLS (default 25443)
   -token string
     	specify the security token (it is automatically generated if empty)
   -upload_limit int
     	max size of uploaded file (byte) (default 5242880)