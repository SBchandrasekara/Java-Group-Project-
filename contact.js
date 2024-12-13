const inputs = document.querySelectorAll('input, textarea');

inputs.forEach(input => {
  input.addEventListener('focus', () => {
    input.setAttribute('placeholder', '');
  });

  input.addEventListener('blur', () => {
    if (input.id === 'first-name') input.setAttribute('placeholder', 'First name');
    if (input.id === 'last-name') input.setAttribute('placeholder', 'Last name');
    if (input.id === 'email') input.setAttribute('placeholder', 'Your Email');
    if (input.id === 'phone') input.setAttribute('placeholder', 'Phone Number');
    if (input.id === 'message') input.setAttribute('placeholder', 'How can we help?');
  });
});
