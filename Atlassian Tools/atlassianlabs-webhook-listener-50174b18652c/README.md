This repository sets up a simple Flask server to receive [Bitbucket](https://bitbucket.com) webhooks and notifies you via Mac OS X Notification Center

# Requirements

- Mac OS X 10.8+
- Python
- Pip
- [ngrok](https://ngrok.com/) (Note: `brew install ngrok` installs an old version. Use latest ngrok download instead.)
- virtualenv (optional)

# Installation

1. Clone this repository and set it as the current working directory.
2. *(Optional, but good practice)* Create a [virtual environment](http://docs.python-guide.org/en/latest/dev/virtualenvs/). `mkvirtualenv webhook-listener` Once created, use `workon webhook-listener` to restore the virtual environment.
3. `pip install -r REQUIREMENTS.txt` loads required libraries.
4. Edit `.env` for a ngrok subdomain of your choosing. If you are using a free ngrok account, just `rm .env`.
5. `honcho start` to start the ngrok tunnel and Flask server (`python listener.py` to start without ngrok)
6. Configure your webhook (default: `http://bbwebhook.ngrok.io/webhook`) on your repo in Bitbucket. If you are using a free ngrok account, you can find an assigned URL on the [ngrok dashboard](https://dashboard.ngrok.com/) under the Tunnels Online section. If you copy from the dashboard, be sure to add `/webhook` to the end when you paste into Bitbucket.

# Access

- Access locally on http://localhost:5000
- Access remotely on http://bbwebhook.ngrok.io (subdomain is set in `.env`)
- Access ngrok interface on http://localhost:4040

# Thanks

This repo uses:

- Microframework: [Flask](http://flask.pocoo.org/)
- Python Foreman clone: [Honcho](https://github.com/nickstenning/honcho)
- Python wrapper for Mac OS 10.8 Notification Center: [pync](https://github.com/setem/pync/)
- Secure tunneling to localhost: [ngrok](https://ngrok.com/)
