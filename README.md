## AskBot Q&A forum - Docker image

Hi interested person,

This is Askbot in a container so you can quickly check it out. It exposes a data volume so you could make the data persistant.

The Dockerfile installs the askbot from pip. See Dockerfile for more info.

### Run
Do this:

    docker run -v /tmp/askbot:/data/ -p 8080:80 -d zout84/askbot-docker
    
It will download the image, and run it on port 8080. Data will be stored in /tmp/askbot. You can also use a datacontainer o.c.

Happy testing!

### Production
It's not intended for production usage. Mainly because it's running through Django's testserver. You can leave SQLite in. We use it all the time, and it's no problem at all for small teams.

### About Askbot
This is Askbot project - open source Q&A system, like StackOverflow, Yahoo Answers and some others. Askbot is based on code of CNPROG, originally created by Mike Chen and Sailing Cai and some code written for OSQA.

Demos and hosting are available at http://askbot.com.

### Support
No

### Contact
[@joshuapeper](https://twitter.com/joshuapeper)