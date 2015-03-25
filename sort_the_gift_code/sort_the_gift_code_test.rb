alphabet = "abcdefghijklmnopqrstuvwxyz";
alphabet = alphabet.split('');
10.times do
  alphabet = alphabet.shuffle();
  random = (rand * 26).floor || 1;
  code = alphabet.slice(0, random).join('');
  solution = code.split('').sort().join('');
  Test.assert_equals(sort_gift_code(code), solution);
end
puts ('Congratulations and Happy Holidays from xDranik!');
