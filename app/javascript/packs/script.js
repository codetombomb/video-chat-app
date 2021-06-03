// import { $, fileInputSelector } from "@rails/ujs";

document.addEventListener("DOMContentLoaded", (event) => {
    const readURL = function(input) {
        if (input.files && input.files[0]){
            let reader = new FileReader();

            reader.onload = function (e) {
                $('.profile-pic').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $('.file-upload').on('change', function(){
        readURL(this);
    });

    $('.upload-button').on('click', function(){
        $('.file-upload').click();
    });
    // Initialize tooltip from bootstrap 
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })
})