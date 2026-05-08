# Revolte ROR New

A simple Rails API application with a Hello World endpoint.

## Getting Started

### Prerequisites

- Ruby 3.3.0
- Rails 8.0.1
- SQLite3

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   bundle install
   ```

### Running the Application

1. Start the Rails server:
   ```bash
   bundle exec rails server
   ```

2. Test the API endpoint:
   ```bash
   curl http://localhost:3000/api/v1/hello/world
   ```
   Expected response: `{"message":"Hello, World!"}`

### Running Tests

This application uses RSpec for testing with the following features:
- Request specs for API endpoints
- Controller specs
- Test coverage reporting with SimpleCov
- Database cleaning with DatabaseCleaner

Run the test suite:
```bash
bundle exec rspec
```

Run tests with coverage report:
```bash
bundle exec rspec
# Coverage report will be generated in coverage/index.html
```

Run specific test files:
```bash
bundle exec rspec spec/requests/hello_api_spec.rb
bundle exec rspec spec/controllers/api/v1/hello_controller_spec.rb
```

### API Endpoints

- `GET /api/v1/hello/world` - Returns a JSON response with "Hello, World!" message

### Development

- Uses FactoryBot for test data generation
- Shoulda Matchers for additional RSpec matchers
- Faker for generating fake data in tests
- RuboCop for code style checking

* Deployment instructions

* ...
