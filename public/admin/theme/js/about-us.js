(function ($) {
    ("use strict");

    $(document).on('click', '#addAboutUs', function () {

        let newAboutUs = $('.about-us-item').first().clone();

        let uniqueId = Date.now();

        newAboutUs.find('[id]').each(function () {
            let oldId = $(this).attr('id');
            let newId = oldId + '_' + uniqueId;
            $(this).attr('id', newId);

            newAboutUs.find(`label[for="${oldId}"]`).attr('for', newId);
        });

        newAboutUs.find('input').val('');
        newAboutUs.find('textarea').val('');
        newAboutUs.find('.text-danger').remove();
        newAboutUs.find('.is-invalid').removeClass('is-invalid');
        newAboutUs.find('.old_team_member_image').val('');
        newAboutUs.find('.preview-image-div').addClass('d-none');


        if (!newAboutUs.find('.removeAboutUs').length) {
            newAboutUs.find('.image-block').append(`
            <button type="button" class="removeAboutUs top-0 end-0 bg-transparent border-0 p-0 m-2 rounded-circle d-flex justify-content-center align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                    <path d="M16.25 4.58334L15.7336 12.9376C15.6016 15.072 15.5357 16.1393 15.0007 16.9066C14.7361 17.2859 14.3956 17.6061 14.0006 17.8467C13.2017 18.3333 12.1325 18.3333 9.99392 18.3333C7.8526 18.3333 6.78192 18.3333 5.98254 17.8458C5.58733 17.6048 5.24667 17.284 4.98223 16.904C4.4474 16.1355 4.38287 15.0668 4.25384 12.9293L3.75 4.58334" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M2.5 4.58333H17.5M13.3797 4.58333L12.8109 3.40977C12.433 2.63021 12.244 2.24043 11.9181 1.99734C11.8458 1.94341 11.7693 1.89545 11.6892 1.85391C11.3283 1.66666 10.8951 1.66666 10.0287 1.66666C9.14067 1.66666 8.69667 1.66666 8.32973 1.86176C8.24842 1.90501 8.17082 1.95491 8.09774 2.01097C7.76803 2.26391 7.58386 2.66796 7.21551 3.47605L6.71077 4.58333" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M7.91669 13.75V8.75" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M12.0833 13.75V8.75" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                </svg>
            </button>
        `);
        }

        $('#about-us-block').append(newAboutUs);
        newAboutUs.find('input[type=file]').trigger('change');
    });

    $(document).on('click', '.removeAboutUs', function () {
        $(this).closest('.about-us-item').remove();
    });

    $(document).on('change', '.fileUploadInput', function (){
        $(this).closest('.file-upload-one').find('.old_team_member_image').val('');
    });

    $(".sf-select-modal-label").select2({
        tags: true,
        dropdownCssClass: "sf-select-dropdown",
        selectionCssClass: "sf-select-section",
    });
})(jQuery);
