const express = require('express');
const app = express();
const cors = require('cors')
const db = require('./db');
const path = require('path');
const Cost = require('./routes/routeClient');
const bodyParser = require('body-parser');
const jwt = require ('jsonwebtoken')

global.Application = app;

app.use(express.static(path.join(__dirname, 'public')))
app.use(express.json())
app.use(cors())
app.use(bodyParser.json());

db.Open(app).then((state) => {
    if (state) {
        console.log('DB Server connected')
    }
}).catch((err) => {
    console.log(err)
})

app.use('/register', require('./routes/routeClient'))
app.use('', require('./routes/routeClient'))
app.use('/store', require('./routes/routeStore'))


app.get('/db', (req, res) => {
    Cost.getDBs(req, res, app.get('CONNECTION'))
});


app.listen(3000, () => console.log(`Server is running on port 3000`))