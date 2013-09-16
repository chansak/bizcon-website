var imgCollections = [];
var previewCollections = [];
var swapImg = {
    init: function (group) {
        that = this;
        $("#" + group + " .thumbnails img.thumbnail").each(function (idx, ele) {
            if ($(this).is('img')) {
                imgCollections.push({ key: group, value: this });
            }
        });
        previewCollections.push({ key: group, value: $("#" + group + " .previewImg") });
        $(previewCollections).each(function (idx1, pcollections) {
            if (pcollections.key == group) {
                if (pcollections.value.prop("src").length == 0) {
                    $(imgCollections).each(function (idx2, icollections) {
                        if (icollections.key == group) {
                            $(pcollections.value).prop("src", $(icollections.value).prop("src"));
                            return false;
                        }
                    });
                }
            }
        });
    },
    swap: function (group, obj) {
        $(previewCollections).each(function (idx, pcollections) {
            if (pcollections.key == group) {
                $(imgCollections).each(function (idx, icollections) {
                    if (icollections.key == group) {
                        $(pcollections.value).prop("src", $(obj).prop("src"));
                        $(obj)[0].focus();
                    }
                });
            }
        });
    }
};