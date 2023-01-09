if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Greymattersbot/url-auto-delete-shortener-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO
fi
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
