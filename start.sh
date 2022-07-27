if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sahidmalik07/movies-house-bot-test.git /movies-house-bot-test
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /movies-house-bot-test
fi
cd /movies-house-bot-test
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
