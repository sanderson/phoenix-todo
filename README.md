# Phoenix To-Do App with Nanobox

This is a simple to-do built with [Phoenix](http://www.phoenixframework.org/) and setup to be used with [Nanobox](https://nanobox.io).

## Up and Running
To get this app up and running locally, [download and install Nanobox](https://dashboard.nanobox.io/download), then run the following:

```bash
# clone the project
git clone https://github.com/sanderson/phoenix-todo.git

# cd into the project
cd phoenix-todo

# add a convenient way to access the app from a browser
nanobox dns add local phoenixtodo.dev

# start nanobox and build the dev environment
nanobox run

# seed the database
mix ecto.create && mix ecto.migrate

# start the app
mix phoenix.server
```

The app will then be available at [phoenixtodo.dev:4000](http://phoenixtodo.dev:4000).
