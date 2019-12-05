(()  => {
   console.log('fired!!!');
 })();


 let seeMoreButtons = document.querySelectorAll('.see-more'), 
      popOver = document.querySelector('.popover');

         
  function showPopover(cancerdata, el) {
    popOver.querySelector(".description").textContent = cancerdata.description;
    popOver.querySelector(".incidence-men").textContent = `Incidence-Men: ${cancerdata.incidencemen}`;
    popOver.querySelector(".incidence-women").textContent = `Incidence-Women: ${cancerdata.incidencewomen}`;
    popOver.querySelector(".death-men").textContent =`Mortality-Men: ${cancerdata.deathmen}`;
    popOver.querySelector(".death-women").textContent = `Mortality-Women: ${cancerdata.deathwomen}`;
         
    popOver.classList.add('show-popover');
    
    //el.appendChild(popOver);
}
  //do fetch call for database
  function fetchData() {
     let url = `/info/${this.dataset.target}`,
      targetElement = this; //refers to element being clicked
    
      fetch(url)
      .then(res => res.json())
      .then(data => {
        console.log(data);
        showPopover(data, targetElement);
      })
      .catch(function(error) {
        console.log(error);
     })
  }
    
  // EVENT HANDLERS
  seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));
   
