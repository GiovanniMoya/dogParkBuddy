import express from 'express';
import { graphqlHTTP } from 'express-graphql';
import { buildSchema } from 'graphql';

 
const PORT = 8080;
const HOST = '0.0.0.0';

// var cors = require('cors')

// Construct a schema, using GraphQL schema language
var schema = buildSchema(`
  type Query {
    hello: String
    test: String
  }
`);
 
// The root provides a resolver function for each API endpoint
var root = {
  hello: () => {
    return 'Hello world!';
  },
  test: () => {
      return "test";
  }
};
 
var app = express();
// app.use(cors());
// app.options('*', cors());

app.use('/graphql', graphqlHTTP({
  schema: schema,
  rootValue: root,
  graphiql: true,
}));

app.get('/test', function (req, res) {
  res.send('Hello World')
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);