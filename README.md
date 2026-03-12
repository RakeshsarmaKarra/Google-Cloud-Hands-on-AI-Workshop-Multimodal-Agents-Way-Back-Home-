# Google Cloud Hands-on AI: Multimodal Agents – Way Back Home
![Image1](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_0/Info1.jpg)

## 1. Project Overview
This repo documents my hands-on implementation of Google's 
**Way Back Home** multimodal, multi-agent Gen AI lab on Google Cloud.
It covers Level 0 (identity/avatar) and Level 1 (location inference) 
using Gemini, MCP, and agentic workflows.

![Image2](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_0/info2.jpg)

## 2. Original Google Resources
- Official lab repo: https://github.com/google-americas/way-back-home
- Workshop recording: https://www.youtube.com/watch?v=wiZkPAReXmI
- Workshop landing page: https://www.linkedin.com/events/hands-onaiworkshop-multimodalag7435456595460902912/theater/
- Lab instructions: https://goo.gle/handsonai-live (event code: `handsonai`)
- Game / geospatial UI: https://waybackhome.dev/e/handsonai

> This repo is **my personal implementation and notes**, not an 
> official Google project. All trademarks belong to their respective owners.

## 3. Architecture at a Glance
Level 0 – Identity and Avatar
- Generate explorer profile (username, avatar, config) using Gemini.

![Image3](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_0/Level0%2013.jpg)

- Register avatar with the Way Back Home mission backend.

![Image4](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_0/Level0%2014.jpg)

Level 1 – Location Detection with Agents and MCP
- Evidence generation: soil sample image, star field image, flora video.

![Image5](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%209.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%208.jpg)

**Click on the image to view/download the video**
[![Video](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/flora-recording_screenshot.jpg)](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/flora_recording.mp4)

- Custom MCP server for geological/botanical/astronomical tools on Cloud Run.

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2012.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2013.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2018.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2020.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2022.jpg)

- Specialist agents + orchestrator (parallel crew) using Google ADK.

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2030.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2031.jpg)

**Test with ADK Web UI**
In case you closed your terminal.cloud shell then run this command first.
```bash
gcloud config set project waybackhome-si35l62z308tymnk6f
```

```bash
cd $HOME/way-back-home/level_1
source $HOME/way-back-home/set_env.sh
# Verify environment is set
echo "PARTICIPANT_ID: $PARTICIPANT_ID"
echo "MCP Server: $MCP_SERVER_URL"
# Start ADK web server
uv run adk web
```


## 4. Repo Layout

```text
level_0/            # Avatar generator and identity setup
  generator.py
  customize.py
  create_identity.py

level_1/            # Location inference, evidence generation, agents & MCP
  setup/...
  mcp-server/...
  agent/...
  outputs/          # Sample evidence from my run (png/mp4)

docs/
  Google-Hands-on-AI-Multimodal-agents.pdf   # My detailed lab notes

scripts/
  verify_setup.py
  set_env.sh
  ...
