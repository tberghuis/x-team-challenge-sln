var path = require("path");
var funcs = require("./funcs");
var encodeName = funcs.encodeName;

var session = {
  username: process.argv[2],
  lastMessageHash: process.argv[3]
};

if (!session.username) {
  console.log("Usage: node index.js <username> <hash>");
  process.exit(0);
}

if (!session.lastMessageHash) {
  session.lastMessageHash = null;
}

// 1. load the database
var dbFile = path.join(__dirname, "db", "index.json");
funcs.loadDb(dbFile, function(err, db) {
  // 2. encode the name
  var encoded = encodeName(session.username);

  // 3. find the user's inbox
  var inbox = funcs.findInbox(db, encoded);

  // 4. find the next message
  funcs
    .findNextMessage(inbox, session.lastMessageHash)
    .then(nextMessage => {
      // 5. print out the message.
      // Paste the console output into the "Solution" field and you're done!
      console.log(nextMessage);
    })
    .catch(err => {
      throw err;
    });
});
