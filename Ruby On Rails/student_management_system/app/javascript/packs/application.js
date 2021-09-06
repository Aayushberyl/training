// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
require('src/student_validation.js')
require('src/guardian_validation.js')
require('src/faculty_validation.js')
require('src/course_validation.js')
require('src/certification_validation.js')
require('src/feedback_validation.js')
//= require jquery3
//= require popper
//= require bootstrap
