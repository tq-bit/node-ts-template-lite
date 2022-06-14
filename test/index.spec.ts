import hello from '../src/index';
import { expect } from 'chai';

describe('log', () => {
  it('Should return the string "Hello World"', () => {
    const msg = hello();
    expect(msg).to.equal('Hello World');
  });
});
