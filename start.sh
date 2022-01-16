echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/ItzMeLucky/NewMusicBot /NewMusicBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/ItzMeLucky/NewMusicBot -b $BRANCH /NewMusicBot
fi
cd /NewMusicBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
