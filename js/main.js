function right(){
  console.log(0);
}

function dark(){
  console.log(1);
}

window.addEventListener('myEvent', (event) => {
  console.log(event.detail.data);
  if(event.detail.data === "right"){
    right();
  }else if(event.detail.data === "dark"){
    dark();
  }
});