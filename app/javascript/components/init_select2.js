import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#video_cassette_genre_ids').select2({ width: '100%', placeholder: "Select a genre" });
};



export { initSelect2 };
