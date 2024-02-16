require 'rails_helper'

RSpec.describe "People", type: :request do
  describe "GET /people" do
    it "returns all people" do
      get people_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /people" do
    it "creates a new person" do
      expect {
        post people_path, params: { person: { name: "John Doe" } }
      }.to change(Person, :count).by(1)
      expect(response).to have_http_status(201)
    end
  end

  describe "PATCH /people/:id" do
    let!(:person) { Person.create(name: "Jane Doe") }

    it "updates the requested person" do
      patch person_path(person), params: { person: { name: "John Doe Updated" } }
      person.reload
      expect(person.name).to eq("John Doe Updated")
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /people/:id" do
    let!(:person) { Person.create(name: "John Doe") }

    it "destroys the requested person" do
      expect {
        delete person_path(person)
      }.to change(Person, :count).by(-1)
      expect(response).to have_http_status(204)
    end
  end
end
