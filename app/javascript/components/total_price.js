import moment from 'moment'

const calcTotalPrice = (startDate, endDate) => {
  // Chercher les elements date de debut et date de fin
  const startMoment = moment(startDate);
  const endMoment = moment(endDate);
  const rangeDate = endMoment.diff(startMoment, 'days');
  // Chercher le price_per_day
  const pricePerDay = document.getElementById("price-per-day").dataset.price; // string
  // Calculer le total_price
  const totalPrice = Number.parseInt(pricePerDay, 10) * rangeDate; // renvoie NaN
  // Insérer le total_price dans le HTML
  const totalPriceBox = document.querySelector("#total-price");
  if (totalPrice > 0) {
    totalPriceBox.innerHTML = totalPrice;
  } else {
    console.log(0);
  };
};
// ne pas afficher si totalPrice < 0
export { calcTotalPrice };
