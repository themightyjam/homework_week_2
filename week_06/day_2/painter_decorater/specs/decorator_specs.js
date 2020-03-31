const assert = require('assert');
const Decorator = require('../decorator.js');

describe('decorator', function(){
  let decorator

  beforeEach(function(){
    decorator = new Decorator();
  });

  it('check stock is empty', function(){
    const actual = decorator.stock;
    assert.deepStrictEqual(actual, []);

  });
});
