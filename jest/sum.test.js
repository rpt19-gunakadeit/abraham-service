const server = require('../server/index')

test('expects server port to equal 3000', () => {
  expect(server(1, 2)).toBe(3);
});