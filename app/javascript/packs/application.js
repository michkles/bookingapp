// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
document.addEventListener("DOMContentLoaded", () => {
  let url = "http://localhost:3000/api/v1/bookings/index"
  fetch (url)
  .then(resp => resp.json())
  .then(data => data.forEach(booking => {
    getSpaceName(booking.space_id, booking)
    }))
})

function getSpaceName(spaceId, booking)
{
  let url = `http://localhost:3000/api/v1/spaces/${spaceId}`
  fetch (url)
  .then(resp => resp.json())
  .then(data => displayRow(booking, data.id, data.name))
}

function displayRow(row, id, spaceName){
  const table = document.querySelector("#bookings-table")
  table.innerHTML +=
  `
  <tr>
    <td>${row.start_date}</td>
    <td>${row.end_date}</td>
    <td>${row.description}</td>
    <td>${spaceName}</td>
  </tr>
  `
  populateSelectSpacesList(id, spaceName)
}

function populateSelectSpacesList(id, spaceName) {
  const list = document.querySelector("#spaces-list")
  list.innerHTML +=
  `
  <option value="${id}">${id, spaceName}</option>
  `
}

