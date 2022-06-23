# Rack Blog Oracle DB

This app demonstrates a blog app connect to an Oracle DB using:
- rack
- puma
- nginx
- ruby-oci8 gem

Use the `Dockfile.rack` in [rails-docker-oracle](https://github.com/bjfish/rails-docker-oracle) for setup.



## Run the example app
1. bundle install
2. bundle exec puma


## Run on OCI with Dockerfile
1. Follow the steps to run the rails example migrations.
2. Clone this project into the `Dockerfile.rack` directory: `git clone https://github.com/bjfish/rack-blog-oracle-db.git rackapp`
3. Build: `docker build -f Dockerfile.rack -t rbenv:rack .`
4. Run `docker run -v /home/opc/wallet:/usr/lib/oracle/21/client64/lib/network/admin:Z,ro -d -p 3000:80 rbenv:rack`
