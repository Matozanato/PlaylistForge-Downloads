const button = document.querySelector('#copy-sha');
const sha = document.querySelector('#sha');
button?.addEventListener('click', async () => {
  try {
    await navigator.clipboard.writeText(sha.textContent.trim());
    button.textContent = 'Copied';
    setTimeout(() => button.textContent = 'Copy', 1600);
  } catch {
    button.textContent = 'Select checksum';
  }
});