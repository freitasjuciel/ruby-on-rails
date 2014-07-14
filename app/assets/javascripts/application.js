// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

$.rails.allowAction = function(link) {
    if (!link.attr('data-confirm')) {
        return true;
    }
    $.rails.showConfirmDialog(link);
    return false;
};

$.rails.confirmed = function(link) {
    link.removeAttr('data-confirm');
    return link.trigger('click.rails');
};

$.rails.showConfirmDialog = function(link) {
    var html, message;
    message = link.attr('data-confirm');
    title = link.attr('data-title');
    html = "<div class=\"modal fade\" id=\"confirmationDialog\">\n  <div class=\"modal-dialog\">\n    <div class=\"modal-content\">\n     <div class=\"modal-header\">\n       <a class=\"close\" data-dismiss=\"modal\">×</a>\n       <h3>" + title + "</h3>\n     </div>\n     <div class=\"modal-body\">\n       <p>" + message + "</p>\n     </div>\n     <div class=\"modal-footer\">\n       <a data-dismiss=\"modal\" class=\"btn btn-default\">Cancelar</a>\n       <a data-dismiss=\"modal\" class=\"btn btn-primary confirm\">Excluir</a>\n     </div>\n    </div>\n  </div>\n</div>";
    $(html).modal();
    return $('body').on('click', '#confirmationDialog .confirm', function() {
        return $.rails.confirmed(link);
    });
};
