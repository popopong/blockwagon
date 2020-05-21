import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#video_cassette_genre_ids').select2(); // (~ document.querySelectorAll)
};

export { initSelect2 };
