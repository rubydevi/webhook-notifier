<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Setup .ENV](#setup-env)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Webhook Notifier <a name="about-project"></a>

The "WebhookNotifier" is a simple Ruby on Rails application  crafted to enable seamless communication between your application and external third-party APIs of your choice. Users can effortlessly store and update data via RESTful endpoints. Simultaneously, it notifies designated third-party APIs of any pertinent changes through webhook deliveries, ensuring that all involved parties remain up-to-date in real-time.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
  </ul>

  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>

  <ul>
    <li><a href="https://www.mysql.com/">PSQL</a></li>
  </ul>

  <ul>
    <li><a href="https://www.mysql.com/">RSpec-Rails</a></li>
  </ul>

  <ul>
    <li><a href="https://github.com/ged/ruby-pg">Ruby Pg</a></li>
  </ul>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Secure Webhook Delivery

- Configurable Webhook Endpoints

- Reliable Data Delivery

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone https://github.com/rubydevi/webhook-notifier.git
```

### Install

Install this project with:

```sh
  bundle install
```

### setup-env

1. create an env file by running the following command

```sh
  touch .env
```

Or create the .env file manually at the root of the application.

2. open databse.yml file and Find the default: &default section in the file and copy the credentials into your .env file:

```sh
  DB_USERNAME=your_username
  DB_PASSWORD=your_password
```

### Usage

To run the project, you will need to execute:

```sh
  rails db:create

  rails db:migrate

  rails s
```

### Run tests

To run tests, run the following command:

```sh
  rails db:migrate RAILS_ENV=test
  rspec spec/models/
  rspec spec/requests/
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 Chongtham Ruby Devi

- GitHub: [@rubydevi](https://github.com/rubydevi)
- LinkedIn: [@Chongtham Ruby Devi](https://www.linkedin.com/in/chongtham-bhoomika/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/rubydevi/webhook-notifier/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## <b>Show your support 🌟</b><a name="support"></a>

Thank you for taking the time to explore this project! Your support means a lot to me. If you find my project valuable and would like to contribute, here is one way you can support me:

- <b>Star the project ⭐️</b>: Show your appreciation by starring this GitHub repository. It helps increase visibility and lets others know that the project is well-received.

- <b>Fork the project 🍴 🎣</b>: If you're interested in making improvements or adding new features, feel free to fork the project. You can work on your own version and even submit pull requests to suggest changes.

- <b>Share with others 🗺️</b>: Spread the word about this project. Share it on social media, mention it in relevant forums or communities, or recommend it to colleagues and friends who might find it useful.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)

<p align="right">(<a href="#readme-top">back to top</a>)</p>