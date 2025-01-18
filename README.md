# PreScreen

A Ruby on Rails application for managing screening tests and assessments.

## System Requirements

- Ruby 3.2.0
- Rails 7.2.2
- PostgreSQL
- Redis (for Sidekiq)
- Node.js & Yarn (for JavaScript bundling)
- Docker & Docker Compose (optional)

## Features

- User Authentication with Devise
- Authorization with Pundit
- Background Job Processing with Sidekiq
- Modern UI with Tailwind CSS
- Real-time updates with Hotwire (Turbo & Stimulus)
- Email handling with Letter Opener (development)
- Pagination with Kaminari
- Component-based UI architecture with ViewComponent

## Getting Started

### Without Docker

1. Clone the repository

```bash
git clone https://github.com/geeekgod/Pre-Screen.git
cd Pre-Screen
```

2. Install dependencies

```bash
bundle install
yarn install
```

3. Setup environment variables

```bash
cp .env.example .env
# Edit .env with your configuration
```

4. Setup the database

```bash
rails db:create
rails db:migrate
```

5. Seed the database
```bash
rails db:seed
```

### With Docker

1. Clone the repository and setup environment

```bash
git clone https://github.com/geeekgod/Pre-Screen.git
cd Pre-Screen
cp .env.example .env
```

2. Build and start the containers

```bash
docker-compose up --build
```

3. Setup the database

```bash
docker-compose exec app rails db:setup
```

## Testing

The application uses Rails' built-in testing framework. To run the tests:

```bash
rails test                  # Run all tests
rails test:system          # Run system tests
rails test:models          # Run model tests
```

### Security Testing

```bash
bundle exec brakeman      # Run security analysis
```

### Code Style

The project follows Rails Omakase style guide. To check and fix styling:

```bash
bundle exec rubocop             # Check code style
bundle exec rubocop -A          # Auto-fix code style issues
```

## Architecture

### Models

- `AdminUser`: Manages admin authentication and associations
- `Topic`: Belongs to AdminUser, has many questions
- `Question`: Belongs to Topic
- `Test`: Belongs to AdminUser

### Background Jobs

Background processing is handled by Sidekiq for:

- Email delivery
- Other async tasks (TODO)

### Frontend

- Tailwind CSS for styling
- Hotwire (Turbo & Stimulus) for dynamic interactions
- ViewComponent for reusable UI components

## Development

### Email Testing

- In development, emails are caught by Letter Opener and displayed in the browser.

- You can also view them in mail catcher by disabling Letter Opener in `development.rb` and enable the mail catcher configuration.

## Deployment

TODO

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Credits

Built with Ruby on Rails and other open-source software.
