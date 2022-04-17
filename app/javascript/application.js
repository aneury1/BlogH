// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"

 

document.addEventListener('turbo:load', ()=>{
    document.addEventListener('click', (event)=>{
      
        let element = event.target.closest('.paragraph-content')
        if(!element)return;
        event.preventDefault();
        element.classList.add('d-none');
        element.nextElementSibling.classList.remove('d-none')
  
    });


     document.addEventListener('click', (event)=>{
       
         if(!event.target.matches('.cancel'))return;
         event.preventDefault();
         let element = event.target.closest('.paragraph-form')
         element.classList.add('d-none');
         element.nextElementSibling.classList.remove('d-none')
    })




});