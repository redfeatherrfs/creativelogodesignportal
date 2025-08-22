(function ($) {
    ("use strict");

    var serviceDataTable;

   serviceDataTable =  $("#serviceDataTable").DataTable({
        pageLength: 10,
        ordering: false,
        serverSide: true,
        processing: true,
        searching: true,
        responsive: true,
        language: {
            paginate: {
                previous: "<i class='fa-solid fa-angles-left'></i>",
                next: "<i class='fa-solid fa-angles-right'></i>",
            }
        },
        ajax: {
            url: $('#service-route').val(),
            data: function (d) {
                d.search_key = $('#search-key').val();
            }
        },
        dom: '<>tr<"tableBottom"<"row align-items-center"<"col-sm-6"<"tableInfo"i>><"col-sm-6"<"tablePagi"p>>>><"clear">',
        columns: [
            {"data": "icon", "name": "icon", searchable: false, responsivePriority: 1},
            {"data": "banner_image", "name": "banner_image", searchable: false, responsivePriority: 1},
            {"data": "title", "name": "title"},
            {"data": "status", "name": "status", searchable: false},
            {"data": "action", searchable: false, responsivePriority: 2},
        ]
    });

    $(document).on('click', '#addOurTouchPoint', function () {
        let newOurTouchPoint = $('.our-touch-point-item').first().clone();

        let uniqueId = Date.now();

        newOurTouchPoint.find('[id]').each(function () {
            let oldId = $(this).attr('id');
            let newId = oldId + '_' + uniqueId;
            $(this).attr('id', newId);

            newOurTouchPoint.find(`label[for="${oldId}"]`).attr('for', newId);
        });

        newOurTouchPoint.find('input').val('');
        newOurTouchPoint.find('textarea').val('');
        newOurTouchPoint.find('.text-danger').remove();
        newOurTouchPoint.find('.is-invalid').removeClass('is-invalid');
        newOurTouchPoint.find('.old_our_touch_point_icon').val('');
        newOurTouchPoint.find('.preview-image-div').addClass('d-none');

        if (!newOurTouchPoint.find('.removeOurTouchPoint').length) {
            newOurTouchPoint.find('.icon-block').append(`
            <button type="button" class="removeOurTouchPoint top-0 end-0 bg-transparent border-0 p-0 m-2 rounded-circle d-flex justify-content-center align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                    <path d="M16.25 4.58334L15.7336 12.9376C15.6016 15.072 15.5357 16.1393 15.0007 16.9066C14.7361 17.2859 14.3956 17.6061 14.0006 17.8467C13.2017 18.3333 12.1325 18.3333 9.99392 18.3333C7.8526 18.3333 6.78192 18.3333 5.98254 17.8458C5.58733 17.6048 5.24667 17.284 4.98223 16.904C4.4474 16.1355 4.38287 15.0668 4.25384 12.9293L3.75 4.58334" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M2.5 4.58333H17.5M13.3797 4.58333L12.8109 3.40977C12.433 2.63021 12.244 2.24043 11.9181 1.99734C11.8458 1.94341 11.7693 1.89545 11.6892 1.85391C11.3283 1.66666 10.8951 1.66666 10.0287 1.66666C9.14067 1.66666 8.69667 1.66666 8.32973 1.86176C8.24842 1.90501 8.17082 1.95491 8.09774 2.01097C7.76803 2.26391 7.58386 2.66796 7.21551 3.47605L6.71077 4.58333" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M7.91669 13.75V8.75" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M12.0833 13.75V8.75" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                </svg>
            </button>
        `);
        }

        $('#our-touch-point-block').append(newOurTouchPoint);
        newOurTouchPoint.find('input[type=file]').trigger('change');
    });

    $(document).on('click', '.removeOurTouchPoint', function () {
        $(this).closest('.our-touch-point-item').remove();
    });

    $(document).on('change', '.fileUploadInput', function (){
        $(this).closest('.file-upload-one').find('.old_our_touch_point_icon').val('');
    });



    $(document).on('click', '#addOurApproach', function () {
        let newOurApproach = $('.our-approach-item').first().clone();

        let uniqueId = Date.now();

        newOurApproach.find('[id]').each(function () {
            let oldId = $(this).attr('id');
            let newId = oldId + '_' + uniqueId;
            $(this).attr('id', newId);

            newOurApproach.find(`label[for="${oldId}"]`).attr('for', newId);
        });

        newOurApproach.find('input').val('');
        newOurApproach.find('textarea').val('');
        newOurApproach.find('.text-danger').remove();
        newOurApproach.find('.is-invalid').removeClass('is-invalid');
        newOurApproach.find('.old_our_approach_icon').val('');
        newOurApproach.find('.preview-image-div').addClass('d-none');


        if (!newOurApproach.find('.removeOurApproach').length) {
            newOurApproach.find('.icon-block').append(`
            <button type="button" class="removeOurApproach top-0 end-0 bg-transparent border-0 p-0 m-2 rounded-circle d-flex justify-content-center align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                    <path d="M16.25 4.58334L15.7336 12.9376C15.6016 15.072 15.5357 16.1393 15.0007 16.9066C14.7361 17.2859 14.3956 17.6061 14.0006 17.8467C13.2017 18.3333 12.1325 18.3333 9.99392 18.3333C7.8526 18.3333 6.78192 18.3333 5.98254 17.8458C5.58733 17.6048 5.24667 17.284 4.98223 16.904C4.4474 16.1355 4.38287 15.0668 4.25384 12.9293L3.75 4.58334" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M2.5 4.58333H17.5M13.3797 4.58333L12.8109 3.40977C12.433 2.63021 12.244 2.24043 11.9181 1.99734C11.8458 1.94341 11.7693 1.89545 11.6892 1.85391C11.3283 1.66666 10.8951 1.66666 10.0287 1.66666C9.14067 1.66666 8.69667 1.66666 8.32973 1.86176C8.24842 1.90501 8.17082 1.95491 8.09774 2.01097C7.76803 2.26391 7.58386 2.66796 7.21551 3.47605L6.71077 4.58333" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M7.91669 13.75V8.75" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                    <path d="M12.0833 13.75V8.75" stroke="#EF4444" stroke-width="1.5" stroke-linecap="round" />
                </svg>
            </button>
        `);
        }

        $('#our-approach-block').append(newOurApproach);
        newOurApproach.find('input[type=file]').trigger('change');
    });

    $(document).on('click', '.removeOurApproach', function () {
        $(this).closest('.our-approach-item').remove();
    });

    $(document).on('change', '.fileUploadInput', function (){
        $(this).closest('.file-upload-one').find('.old_our_approach_icon').val('');
    });

    $('#search-key').on('keyup', function () {
        serviceDataTable.ajax.reload();
    });

    $(".sf-select-modal-label").select2({
        tags: true,
        dropdownCssClass: "sf-select-dropdown",
        selectionCssClass: "sf-select-section",
    });
})(jQuery);
