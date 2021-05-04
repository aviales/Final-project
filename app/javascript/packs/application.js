// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.



import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import JQuery from 'jquery';
window.$ = window.JQuery = JQuery;

import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

console.log('hella')

addEventListener('DOMContentLoaded',() =>{
    const btn_menu = document.querySelector('.btn_menu')
    if (btn_menu){
        btn_menu.addEventListener('click',()=>{
            const menu_items = document.querySelector('.navbar_menu_items')
            menu_items.classList.toggle('show')
        })
    }
})