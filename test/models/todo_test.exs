defmodule PhoenixCrud.TodoTest do
  use PhoenixCrud.ModelCase

  alias PhoenixCrud.Todo

  @valid_attrs %{completed: true, description: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Todo.changeset(%Todo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Todo.changeset(%Todo{}, @invalid_attrs)
    refute changeset.valid?
  end
end
