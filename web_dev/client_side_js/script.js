//First test to manipulate DOM using JS
//test = document.getElementById('test');
//test.style.border = "3px solid red";
//Second test to delay manipulating DOM until user action
cat = document.getElementById('cat');
hideButton = document.getElementById('hide');
showButton = document.getElementById('show');
function hideCat() {
    cat.hidden = true;
}
function showCat() {
    cat.hidden = false;
}
hideButton.addEventListener('click', hideCat);
showButton.addEventListener('click', showCat);