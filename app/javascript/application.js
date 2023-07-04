// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

console.log("Hello from app/javascript/application.js")

// const startYearInput = document.querySelector('#booking_start_1i');
// const startMonthInput = document.querySelector('#booking_start_2i');
// const startDayInput = document.querySelector('#booking_start_3i');

// const endYearInput = document.querySelector('#booking_end_1i');
// const endMonthInput = document.querySelector('#booking_end_2i');
// const endDayInput = document.querySelector('#booking_end_3i');

// const price = document.querySelector('#price');
// const dateDiffdisplay = document.querySelector('#date-diff');
// const total = document.querySelector('#total');

// function timeDiff() {

//   const startYear = startYearInput.value;
//   const startMonth = startMonthInput.value;
//   const startDay = startDayInput.value;

//   const startDate = new Date(startYear, startMonth - 1, startDay);
//   console.log('Start Date:', startDate);

//   const endYear = endYearInput.value;
//   const endMonth = endMonthInput.value;
//   const endDay = endDayInput.value;

//   const endDate = new Date(endYear, endMonth - 1, endDay);
//   console.log('End Date:', endDate);

//   // Calculate the difference in milliseconds
//   const timeDiff = endDate.getTime() - startDate.getTime();

//   // Convert milliseconds to days
//   const daysDiff = Math.ceil(timeDiff / (1000 * 60 * 60 * 24));

//   // Update Values
//   dateDiffdisplay.innerHTML = daysDiff
//   total.innerHTML = daysDiff * parseInt(price.innerHTML)

//   console.log('Number of days between:', daysDiff);

// }

// startYearInput.addEventListener('change', timeDiff);
// startMonthInput.addEventListener('change', timeDiff);
// startDayInput.addEventListener('change', timeDiff);
// endYearInput.addEventListener('change', timeDiff);
// endMonthInput.addEventListener('change', timeDiff);
// endDayInput.addEventListener('change', timeDiff);
