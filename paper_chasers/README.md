# README

Paper Chasers help users learn what prospective colleges, majors, and career paths to pursue provided a query. This app will be powered by Rails front end and a MySQL backend. It is work [to be] done for UIUC Spring '20 CS411 Database Systems course project.

## Installation

Assumptions:

- You are using Mac OSX operating system. Didn't try this Windows or Linux.
- You are familiar with the command line terminal. A good introduction can be found at https://www.codecademy.com/learn/learn-the-command-line


### Homebrew

First we need to install Homebrew https://brew.sh/. Homebrew allow us to install and compile software packages easily from source. Homebrew comes with a very simple install script. When it asks you to install XCode CommandLine Tools, say yes.

Open Terminal and run the following command:

`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

### Installing Ruby

Now that we have Homebrew installed, we can use it to install Ruby.
We are going to use rbenv https://github.com/rbenv/rbenv to install and manage our Ruby versions.

To do this, run the following commands in your terminal:

```
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc

# Install Ruby
rbenv install 2.7.0
rbenv global 2.7.0
ruby -v

```
### Configuring Git

We'll be using Git for our version control system so we're going to set it up to match our Github https://github.com account. If you don't already have a Github account, make sure to register. It will come in handy soon :)

Replace the example name and email address in the following steps with the ones you used for your Github account.

```
git config --global color.ui true
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```
The next step is to take the newly generated SSH key and add it to your Github account. You want to copy and paste the output of the following command and paste it here https://github.com/settings/keys.

`cat ~/.ssh/id_rsa.pub`

Once you've done this, you can check and see if it worked:

`ssh -T git@github.com`

You should get a message like this:

`Hi ...! You've successfully authenticated, but Github does not provide shell access.`

### Installing Rails

Installing Rails is as simple as running the following command in your Terminal.

`gem install rails -v 6.0.2.1`

Rails is now installed, but in order for us to use the `rails` executable, we need to tell `rbenv` to see it:

`rbenv rehash`

And now we can verify Rails is installed:

`rails -v`
`# Rails 6.0.2.1`

### Installing MySQL

You can install MySQL server and client from Homebrew.

`brew install mysql`

Once this command is finished, it gives you a couple of commands to run. Follow the instructions and run them:

```
# To have launchd start mysql at login:
brew services start mysql
```
By default the mysql user is `root` with no password.

### Setting up the app on your machine

1. Clone the Database-Systems-Project

`git clone https://github.com/byooooo/Database-Systems-Project.git`


2. Go into the app directory

`cd paper_chasers`

3. Bundle the app

`bundle install`

4. Create the database

`rails db:create`

5. Launch the app server

`rails server`

6. Go to your browser at http://localhost:3000, Yay! You're on Rails!



