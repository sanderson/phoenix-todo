##### create a simple boxfile with engine: elixir, nodejs, and postgres:

```
run.config:
  # elixir runtime
  engine: elixir
  
  # add nodejs
  extra_packages:
    - nodejs
  
  # ensure inotify exists for hot-code reloading
  dev_packages:
    - inotify-tools
    
  # cache node_modules
  cache_dirs:
    - node_modules
    
  # add node_module bins to the $PATH
  extra_path_dirs:
    - node_modules/.bin

# add postgres as a data component
data.db:
  image: nanobox/postgresql

```

##### install phoenix
```
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
```

##### generate the project
```
cd /tmp
mix phoenix.new phoenix_crud
cd -
cp -a /tmp/phoenix_crud/* .
```

#### create/migrate databases
mix do ecto.create, ecto.migrate

#### start phoenix
mix phoenix.server




# output

We are all set! Run your Phoenix application:

    $ cd phoenix_crud
    $ mix phoenix.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phoenix.server

Before moving on, configure your database in config/dev.exs and run:

    $ mix ecto.create
