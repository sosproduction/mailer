import Ember from 'ember';

export function formattedDate(params/*, hash*/) {
  return params;
}

export default Ember.Handlebars.makeBoundHelper(function(date, format) {
  return moment(date).format(format);
});
