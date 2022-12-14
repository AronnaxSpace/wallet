# Wallet

### Requirements

- Ruby 3.1.2
- Bundler 2.3.26
- PostgreSQL
- Node.js
- Yarn

### Setup

#### 1. Clone the repository

```bash
git clone git@github.com:AronnaxSpace/wallet.git
```

#### 2. Create .envrc file

Install [direnv](https://direnv.net/) if not installed.
Set the following variables:

- DB_USERNAME
- DB_PASSWORD

#### 3. Install dependecies

```bash
bundle && yarn
```

#### 4. Setup the database

```bash
rails db:setup
```

#### 5. Start the application

```bash
foreman s -f Procfile.dev
```
