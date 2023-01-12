const express = require("express");
const hostname = require("os").hostname();

const app = express()
const port = 
    process.env.PORT ??
    process.env.Port ??
    process.env.port ??
    3000;




app.set("views", "./pug");
app.set("view engine", "pug");


app.get("/", (req, res) => {
    res.render('index', {
        hostname: hostname
    });
})

app.use("/static", express.static("./static"));






app.listen(port, "0.0.0.0", () => {
    console.log("listening on (container) port: " + port);
});