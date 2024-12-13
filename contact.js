const inputs = document.querySelectorAll('input, textarea');

inputs.forEach(input => {
  input.addEventListener('focus', () => {
    input.setAttribute('placeholder', '');
  });

