function right_h(){
  document.body.style.background = "#fff";
  img.src="/images/header/0/logo.png";
}

function dark_h(){
  document.body.style.background = "#000";
  img.src="/images/header/1/logo.png";
}

const switchBtn = document.getElementById("switch");
const img = document.getElementById("logo");

let isDark = false;
switchBtn.addEventListener("click", () => {
  isDark = !isDark;
  isDark ? dark_h() : right_h();
  const myEvent = isDark ? new CustomEvent('myEvent', { detail: { data: 'dark' } }) : new CustomEvent('myEvent', { detail: { data: 'right' } });
  window.dispatchEvent(myEvent);
});