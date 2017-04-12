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

## Deploying to Production
This app is preconfigured to run in production with Nanobox, but you will need to add a `SECRET_KEY_BASE` environment variable in order to successfully add to-do items. This can be done in the Nanobox dashboard, or with the `nanobox evar` command.

```
nanobox evar add SECRET_KEY_BASE='someuniquekey'
```

More information is available in the [Environment Variable documentation](https://docs.nanobox.io/app-config/environment-variables/#custom-environment-variables).
