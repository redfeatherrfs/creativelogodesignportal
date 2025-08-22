(function ($) {
    "use strict";

    $(document).ready(function () {
        $('.selectOrderList').on('change', function () {
            $(".payableAmount").show();
            $(".invoiceCreateForm").hide();
        });
    });



    $(document).ready(function () {
        dataTable('all');
    });

    $(document).on('click', '.orderStatusTab', function (e) {
        var status = $(this).data('status');
        dataTable(status);
    });

    function dataTable(status) {
        $("#orderTable-" + status).DataTable({
            pageLength: 10,
            ordering: false,
            serverSide: false,
            processing: true,
            responsive: true,
            searching: false,
            ajax: {
                url: $('#client-order-list-route').val(),
                data: function (data) {
                    data.status = status;
                }
            },
            language: {
                paginate: {
                    previous: "<i class='fa-solid fa-angles-left'></i>",
                    next: "<i class='fa-solid fa-angles-right'></i>",
                },
                searchPlaceholder: "Search event",
                search: "<span class='searchIcon'><i class='fa-solid fa-magnifying-glass'></i></span>",
            },
            dom: '<>tr<"tableBottom"<"row align-items-center"<"col-sm-6"<"tableInfo"i>><"col-sm-6"<"tablePagi"p>>>><"clear">',
            columns: [
                {data: 'order_id', name: 'order_id'},
                {data: 'plan_name', name: 'plan_name'},
                {data: "total_price", name: "total_price"},
                {data: "working_status", name: "working_status"},
                {data: "payment_status", name: "payment_status"},
                {data: "end_date", name: "end_date"},
                {data: "progress", name: "progress", responsivePriority:2},
            ],
            stateSave: true,
            "bDestroy": true
        });
    }


    window.chatResponse = function (response) {
        $('.error-message').remove();
        $('.is-invalid').removeClass('is-invalid');
        if (response['status'] === true) {
            $(".conversation-text").val('');
            $("#files-names").html('');
            $("#files-names2").html('');
            $("#mAttachment").val('');
            dt = new DataTransfer();
            $(".client-chat").html(response.data.conversationClientTypeData);
            $('.client-chat').scrollTop($('.client-chat')[0]?.scrollHeight);
        } else {
            commonHandler(response)
        }
    }

    $(window).on('load', function () {
        $('.client-chat').scrollTop($('.client-chat')[0]?.scrollHeight);
    });

})(jQuery);
