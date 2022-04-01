# Deploy json-server in an EC2 instance.

0. You have docker properly configured in an EC2 instance.
1. Clone the repo

```
$ git clone https://github.com/G0erman/pcpp.git
$ tree
.
├── Dockerfile
├── README.md
├── app
│   └── cars.json
└── run_server.sh

1 directory, 4 files

# Build the image
$ sudo docker build -t pcpp:1 .

# Run the container
$ sudo docker run --name=pcpp_1 -d -p 3000:3000 -v $(pwd)/app:/var/lib/app  pcpp:1

# Troubleshooting
$ docker logs pcpp_1

  \{^_^}/ hi!

  Loading cars.json
  Done

  Resources
  http://0.0.0.0:3000/cars

  Home
  http://0.0.0.0:3000

  Type s + enter at any time to create a snapshot of the database
  Watching...

GET /db 200 8.040 ms - 849
GET /__rules 404 4.165 ms - 2

```

