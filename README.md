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
  
![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2036.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2038.jpg)

![Image6](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/level_1/Level1%2040.jpg)

## 4. Walkthrough Notes (Step-by-step)

I documented every step I ran (Cloud Shell commands, screenshots, and outputs) in this PDF:

[Google Cloud - Hands on AI workshop: Multimodal agents (PDF)](https://github.com/RakeshsarmaKarra/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-/blob/main/Google%20Hands%20on%20AI%20-%20Multimodal%20agents.pdf)

It covers:
- Environment setup with `handsonai-credit` and Cloud Shell.
- Level 0: avatar generation and registration.
- Level 1: BigQuery star catalog setup, evidence generation, MCP server,
  specialist agents, orchestrator, and ADK web UI run.[1]

## 5. What I Implemented Myself

Beyond following the codelab instructions, I:                                                                                                                                                                                                   
- Structured the project as a reusable lab repo with clear levels and docs.                                                                                                                                                            
- Created detailed step-by-step notes and verified every step end-to-end.                                                                                                                                                            
- Understood and modified:                                                                                                                                                                                                   
  - MCP server                                                                                                                                                                                                                                           
  - Specialist agents                                                                                                                                                                                                                                           
  - MCP tools and star tools                                                                                                                                                                                                                                           
  - Orchestrator and callbacks                                                                                                                                                                                                                                           
- Deployed and validated the MCP server on Cloud Run and used ADK Web UI                                                                                                                                                                                                   
  to confirm the final rescue mission outcome                                                                                                                                                                                                    

## 6. Running This Project Yourself (High-level)

Prerequisites:
- Personal Gmail account, access to Google Cloud trial/credits.
- Cloud Shell enabled in the target GCP project.

High-level steps:
1. Claim credits and set up environment\n   using the official `handsonai-credit` repo (see instructions link above).
2. Clone this repo into Cloud Shell:
   ```bash
   git clone https://github.com/<your-username>/Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-.git
   cd Google-Cloud-Hands-on-AI-Workshop-Multimodal-Agents-Way-Back-Home-
   ```
## Acknowledgments

This project is based on the concepts and labs from the **Google Cloud – Hands on AI Workshop: Multimodal Agents** held on **Mar 10, 2026, 11:00 AM Central Time (US)**.

Special thanks to the speakers for this wonderful session and clear guidance:
- **Ayo Adedeji** – Google
- **Annie Wang** – Google

Workshop resources:
- LinkedIn event: https://www.linkedin.com/events/hands-onaiworkshop-multimodalag7435456595460902912/theater/
- Recording: https://www.youtube.com/watch?v=wiZkPAReXmI
- Lab environment & instructions: https://goo.gle/handsonai-live (event code: `handsonai`)
