/**
 * Created by pc on 2018/4/14.
 */
function open_box(code,name,object,price){
    document.getElementById("box_2").setAttribute("style","display: block");

    document.getElementById("code").value = code;
    document.getElementById("name").value = name;
    document.getElementById("object").value = object;
    document.getElementById("price").value = price;

}
function delete_book(id){
    document.getElementById("box_2").setAttribute("style","display: block");
    document.getElementById("")
}
function close_box(){
    document.getElementById("box_2").removeAttribute("style","display: block");
    console.log("afsjioasj");
}
function SelectAll() {
    var box1 = document.getElementById("radio");
    var box2 = document.getElementsByName("checkbox");
    if (box1.checked == true){
        for(var i=0; i<box2.length; i++){
            box2[i].checked = true;
        }
    }
    else{
        for(var i=0; i<box2.length; i++){
            box2[i].checked = false;
        }
    }
}
function add_box(){
    document.getElementById("box_3").setAttribute("style","display: block");
}
function SelectOther(){
    var box1 = document.getElementById("radio");
    if (box1.checked == true)
        box1.checked = false;
    var box2 = document.getElementsByName("checkbox");
    var flag = true;
    for(var i=0; i<box2.length; i++){
        if(box2[i].checked == false) {
            flag = false;
            break;
        }
    }
    if (flag==true)
        box1.checked = true;
}
