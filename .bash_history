clear
cd ~
rm -rf handsonai-credit
git clone https://github.com/google-americas/handsonai-credit.git
cd handsonai-credit
chmod +x init.sh
./init.sh
cd ~
rm -rf handsonai-credit
git clone https://github.com/google-americas/handsonai-credit.git
cd handsonai-credit
chmod +x init.sh
./init.sh
clear
gcloud auth list
git clone https://github.com/google-americas/way-back-home.git
ls
cd
cd $HOME
rm -rf way-back-home/
cd ~
git clone https://github.com/google-americas/way-back-home.git
rm -rf .cache/
git clone https://github.com/google-americas/way-back-home.git
ls
cd way-back-home/
cd level_0
uv sync
uv run python ../scripts/verify_setup.py
clear
uv run python ../scripts/verify_setup.py
Cd $HOME/way-back-home
Chmod +x scripts/setup.sh
./scripts/setup.sh
cd $HOME/way-back-home
chmod +x scripts/setup.sh
./scripts/setup.sh
cd level_0
cat ../config.json
cd $HOME/way-back-home
chmod +x scripts/setup.sh
./scripts/setup.sh
gcloud auth login
clear
cd $HOME/way-back-home
chmod +x scripts/setup.sh
./scripts/setup.sh
cd level_0
cat ../config.json
clear
uv run python customize.py
cat ../config.json
cloudshell edit generator.py
uv run python create_identity.py
cloudshell edit generator.py
uv run python create_identity.py
clear
cd $HOME/way-back-home/level_1
chmod +x setup/setup_env.sh
./setup/setup_env.sh
clear
source $HOME/way-back-home/set_env.sh
cd $HOME/way-back-home/level_1
uv sync
clear
uv run python setup/setup_star_catalog.py
cd $HOME/way-back-home/level_1
uv run python generate_evidence.py
cd $HOME/way-back-home/level_1
cd $HOME/way-back-home/level_1/mcp-server
pip install -r requirements.txt
python main.py
cd $HOME/way-back-home/level_1/mcp-server
source $HOME/way-back-home/set_env.sh
gcloud builds submit .   --config=cloudbuild.yaml   --substitutions=_REGION="$REGION",_REPO_NAME="$REPO_NAME",_SERVICE_ACCOUNT="$SERVICE_ACCOUNT"
clear
export MCP_SERVER_URL=$(gcloud run services describe location-analyzer \
  --region=$REGION --format='value(status.url)')
echo "MCP Server URL: $MCP_SERVER_URL"
# Add to set_env.sh for later use
echo "export MCP_SERVER_URL=\"$MCP_SERVER_URL\"" >> $HOME/way-back-home/set_env.sh
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
# Verify environment is set
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
# Start ADK web server
uv run adk web
clear
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
# Verify environment is set
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
# Start ADK web server
uv run adk web
clear
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
# Verify environment is set
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
uv run adk web
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
uv run adk web
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
git init
git add .
clear
git rm --cached -r .gemini/extensions/vertex
git rm --cached -r -f .gemini/extensions/vertex
git rm --cached -r -f .gemini/history
git rm --cached -r -f handsonai-credit
git rm --cached -r -f way-back-home
echo ".gemini/" >> .gitignore
echo "handsonai-credit/" >> .gitignore
echo "way-back-home/" >> .gitignore
cat .gitignore
