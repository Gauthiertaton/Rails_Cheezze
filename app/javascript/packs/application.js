import "bootstrap";
import { calcTotalPrice } from "../components/total_price";
import "../plugins/init_mapbox";
// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import { initFlatpickr } from '../plugins/flatpickr';

initMapbox();
initFlatpickr();
