// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery3
//= require popper
//= require bootstrap
//= require rails-ujs
//= require chartkick
//= require highcharts
//= require activestorage
//= require jquery/dist/jquery
//= require turbolinks
//= require_tree .
//= require jquery
//= require moment
//= require daterangepicker

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import JQuery from 'jquery';
window.$ = window.JQuery = JQuery;


Rails.start()
Turbolinks.start()
ActiveStorage.start()

var weekControl = document.querySelector('input[type="week"]');
weekControl.value = '2021-W01';