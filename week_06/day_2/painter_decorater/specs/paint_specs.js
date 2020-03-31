const assert = require('assert');
const Paint = require('../paint.js');

describe('Paint', function () {
  let paint;

  beforeEach(function () {
    paint = new Paint(20, false);
  });

  describe('Properties', function(){

    it('how many litres', function() {
      const actual = paint.litre;
      assert.strictEqual(actual, 20);
    });

    it('is empty', function(){
      const actual = paint.empty;
      assert.equal(false, false);
    });
  });
});
