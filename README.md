# Monitfiles

This repo contains the Monit files I use for monitoring and reactive maintenance, plus some functions that allow Monit to integrate with Slack, offering readily available feedback to the team. 

**DISCLAIMER: This product is not maintained to be production-ready** -- that being said, if you like the project and I can help with your issue drop me a question.

### Dependencies

#### OS
Debian Jessie or newer

#### Packages
- monit
- mtr (optional, used in my reports)
- curl

#### other
- Slack

### Setup
- Download

```bash
git clone https://github.com/aorfanos/monitfiles.git
```
- [Setup a Slack incoming webhook](https://api.slack.com/incoming-webhooks)
- Run installer (this will set up the Slack webhooks)

```bash
./installer.sh
```
- Move the files that apply to you to conf.d (or any other dir monitrc reads)
- Check and reload monit

```bash
monit -t
Control file syntax OK

monit reload
```
You should shortly see messages like the following coming up on Slack!
![](https://imgur.com/9IbAkPK.png)

### Notifications
You can find more info regarding the notifications [here](https://imgur.com/a/ceCoVqH).

