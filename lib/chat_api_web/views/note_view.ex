defmodule ChatApiWeb.NoteView do
  use ChatApiWeb, :view
  alias ChatApiWeb.NoteView

  def render("index.json", %{notes: notes}) do
    %{data: render_many(notes, NoteView, "note.json")}
  end

  def render("show.json", %{note: note}) do
    %{data: render_one(note, NoteView, "note.json")}
  end

  def render("note.json", %{note: note}) do
    %{
      id: note.id,
      body: note.body
    }
  end
end
