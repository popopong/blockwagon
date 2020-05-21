import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#video_cassette_genre_ids').select2({ width: '100%' });
};



export { initSelect2 };
