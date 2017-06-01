var copyTextareaBtn = document.querySelector('.js-textareacopybtn');
if (copyTextareaBtn) {
copyTextareaBtn.addEventListener('click', function(event) {
  var copyTextarea = document.querySelector('.js-copytextarea');
  copyTextarea.select();
  window.alert("Lien copié dans le presse-papier");
  try {
    var successful = document.execCommand('copy');
    var msg = successful ? 'successful' : 'unsuccessful';
    console.log('Copying text command was ' + msg);
  } catch (err) {
    console.log('Oops, unable to copy');
  }
});
}
