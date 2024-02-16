# Technical Assessment - Manage People and Relevant Details

Welcome to Rails-TA, a simple and efficient Ruby on Rails application designed to manage people and their personal details with a clean and straightforward interface. This application leverages the power of Rails 7 to provide a RESTful API, making it easy to create, read, update, and delete (CRUD) person entries along with their associated details.

## Features

- **Simple and Robust API**: Perform CRUD operations on `Person` and associated `Detail` with ease.
- **Data Validation**: Ensures data integrity with validations for required fields.
- **Test Coverage**: A solid foundation with 59.46% test coverage, providing reliability and encouraging future enhancements.

## API Endpoints

The application provides the following RESTful endpoints:

### People

- **GET /people**: Fetch a list of all people in the database.
- **POST /people**: Create a new person entry. Requires a `name`.
- **GET /people/:id**: Retrieve a specific person by their ID.
- **PATCH/PUT /people/:id**: Update an existing person's details. Supports updating the `name`.
- **DELETE /people/:id**: Remove a person entry from the database.

### Details

- **GET /people/:person_id/detail**: Get the detail associated with a specific person.
- **POST /people/:person_id/detail**: Create or associate new detail with a person. Requires `email` and supports `title`, `age`, and `phone`.
- **PATCH/PUT /people/:person_id/detail**: Update the detail associated with a specific person.
- **DELETE /people/:person_id/detail**: Delete the detail associated with a specific person.

## Getting Started

To get started with MyRailsApp, ensure you have Ruby and Rails installed on your system. Clone this repository, navigate to the app directory, and then:

1. Install dependencies:
   ```bash
   bundle install
   ```
2. Set up the database:
   ```bash
   rails db:create db:migrate db:seed
   ```
3. Run the server:
   ```bash
   rails server
   ```

Now, you're ready to use the API endpoints mentioned above to manage people and their details.

## Testing

The application comes with a suite of tests to ensure reliability. To run the tests and see the coverage:

```bash
bundle exec rspec
```

## Contributing

Contributions are welcome! Please feel free to submit pull requests, improve the test coverage beyond 59.46%, or suggest new features.

## Future Enhancements

- **Improved UI**: Integrate a React/Vue frontend for a more interactive experience.
- **OAuth Integration**: Implement OAuth for secure API access.
- **Advanced Search**: Add capabilities to search through people and their details more efficiently.

Your feedback and contributions are highly appreciated as we aim to make this application more robust and user-friendly.