$('a[href="#ex7"]').click(function(event) {
    event.preventDefault();

    $(this).modal({
        fadeDuration: 250
    });
});