const fs = require('fs');
const jwt = require('jsonwebtoken');

// Read the private key from the PEM file
const privateKey = fs.readFileSync('config/private-auth.pem');

console.log(privateKey);

// Payload for the JWT token
const payload = {
  userId: '123456',
  username: 'john.doe@example.com',
};

// Generate the JWT token
const token = jwt.sign(payload, privateKey, { algorithm: 'RS256' });

console.log('JWT Token:', token);
