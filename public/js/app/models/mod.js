define(function (require) {

  "use strict";

  var $                   = require('jquery'),
      _                   = require('underscore'),
      Backbone            = require('backbone');

  return Backbone.Model.extend({
    defaults: {
      id: '',
      downloading: false,
      name: '',
      path: '',
      installed: false,
    },
    idAttribute: 'id',
    urlRoot: '/api/mods/',
  });

});
