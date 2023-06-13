const express = require('express');
const cors = require('cors');
const app = express();
const session = require("express-session");

const route = require('./routes')

// Function which parse the body on Json with bigInt
BigInt.prototype.toJSON = function () {
    return this.toString();
};

app.use(
    session({
        secret: "123456789azertyzza",
        saveUninitialized: true,
        resave: true,
        cookie: { httpOnly: true, secure: true, maxAge: 1000 * 60 * 60 * 24 },
    })
);

app.use(cors());
app.use(express.json());
app.use(route)

const port = 8000;

app.listen(port, () => {
    console.log(`server listening on port ${port}`);
})