---
layout: post
title: Whiteboard
---
When working on web dev projects, I often find myself with the problem of communicating design ideas via text (gchat, emails, etc). Its very hard to concisely describe the appearance of a site without any sort of visual aids. To combat this problem, I created a colaborative drawing application. Visitors are directed to join a board, and then presented with a large, white box. Anything you draw in this box is mirrored, in real time, with anyone else looking at the same board.

Behind the scenes, the app is hosted on a nodeJS server, which communicates with the browser using socket.io. It uses a canvas for displaying the contents of the board, and persists the contents of the different boards using mongoDB. The app is being hosted on a free Heroku instance. Aside from being an exceptionally trendy stack, nodeJS was a good fit for a real-  time app, because of the simple integration of socket.io into the server, which made it really easy to keep the different clients in sync. In hindsight, I didn't get much from using MongoDB on the backend; but using mongo didn't hurt my progress (in fact, there were a couple of features that made it easier to use than a relational DB, but not enough to justify itself).

You can see the code on [Github](https://github.com/indspenceable/whiteboard), or view the app [online](http://whiteboard.indspenceable.com/).