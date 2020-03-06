import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import { calcTotalPrice } from '../components/total_price';

const initFlatpickr = () => {
  flatpickr('#range_start', {
    dateFormat: "d/m/Y",
    plugins: [new rangePlugin({ input: '#range_end'})],
    onChange: (selectedDates, dateStr, instance) => {
      calcTotalPrice(selectedDates[0], selectedDates[1]);
    }
  });
}

export { initFlatpickr }
