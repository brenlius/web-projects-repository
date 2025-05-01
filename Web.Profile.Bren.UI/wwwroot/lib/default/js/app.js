$(window).on('load', function () {
    //listen for the Bootstrap dropdown 'show' event
    $('.dropdown').on('show.bs.dropdown', function (e) {
        //first the dropdown menu within the current dropdown
        //use .first() in case of nested dropdowns or other elements
        $(this).find('.dropdown-menu').first().stop(true, true).slideDown(300);
    });

    //listen for the Bootstrap dropdown 'hide' event
    $('.dropdown').on('hide.bs.dropdown', function (e) {
        //prevent the default Bootstrap hide behavior (which is instant)
        e.preventDefault();

        //find the dropdown menu and slide it up
        //use a callback function to remove the 'show' class after the animation
        $(this).find('.dropdown-menu').first().stop(true, true).slideUp(300, function () {
            //'this' inside the callback refers to the dropdown-menu element
            //get the parent (.dropdown) and remove the 'show' class
            $(this).removeClass('show');
        });
    });
});