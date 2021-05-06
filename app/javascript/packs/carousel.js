// (function(window) {
//   let blocks;
//   let currentStage = 1;

//   // Initialize and setup carousel when DOM is ready
//   document.addEventListener("DOMContentLoaded", () => {
//     const carousel = document.getElementById("carousel");
//     const carouselStage = document.getElementById("carousel-stage");
//     const carouselItems = document.getElementsByClassName("carousel-item");

//     // carousel control buttons
//     const prevButton =  document.getElementById("prev-button");
//     const nextButton =  document.getElementById("next-button");

//     const carouselItemWidth = carouselItems[0].clientWidth
//       + parseInt(window.getComputedStyle(carouselItems[0]).getPropertyValue("margin-right").replace("px",""));
//     const carouselWidth = carousel.clientWidth;
//     const carouselItemsLength = carouselItems.length;

//     // setup carousel
//     setupCarousel();

//     prevButton.addEventListener("click", function () {
//       if (currentStage !== 1) {
//         const prevValue = currentStage - 1;
//         moveCarousel(prevValue);
//         return prevValue === 1
//           ? disableButton(prevButton)
//           : enableButton(prevButton);
//       }
//     });

//     nextButton.addEventListener("click", function () {
//       if (currentStage + 1 <= blocks) {
//         const nextValue = currentStage + 1;
//         moveCarousel(nextValue);
//         return nextValue >= blocks
//           ? disableButton(nextButton)
//           : enableButton(nextButton);
//       }
//     });

//     // setting up carousel
//     function setupCarousel () {
//       const itemsPerBlock = carouselWidth / carouselItemWidth;
//       blocks = Math.ceil(carouselItemsLength / itemsPerBlock);

//       const stageLeftValue = Math.abs(
//         parseInt(window.getComputedStyle(carouselStage).getPropertyValue("left").replace("px",""))
//       );

//       if (stageLeftValue === 0) {
//         currentStage = 1;
//       } else {
//         currentStage = Math.round((stageLeftValue / carouselWidth) + 1);
//       }

//       prevButton.disabled = false;
//       nextButton.disabled = false;
//     }

//     // move carousel function from left to right
//     function moveCarousel (blocks) {
//       const currentValue = parseInt(window.getComputedStyle(carouselStage).getPropertyValue("left").replace("px",""));

//       if (blocks < currentStage) {
//         carouselStage.style.left = `${currentValue + carouselWidth}px`;
//       } else {
//         carouselStage.style.left = `${currentValue - carouselWidth}px`;
//       }

//       setupCarousel();
//     }

//     // utility function for disabling a button
//     function disableButton (button) {
//       return button.disabled = true;
//     }

//     // utility function for enabling a button
//     function enableButton (button) {
//       return button.disabled = false;
//     }

//   });
// })(window);
