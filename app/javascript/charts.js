console.log("hi from charts.js ")
const displayChart = document.getElementById('lineChart');
if (displayChart) {
  const ctx = displayChart.getContext('2d');
  const lineChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: ['Mon', 'Tues', 'Weds', 'Thurs', 'Fri'],
          datasets: [{
              label: 'Level of stress before walk',
              data: [9, 8, 9, 10, 9],
              backgroundColor: [
                  'rgba(85, 85, 85, 1)'
              ],
              borderColor: [
                  'rgba(41, 155, 99)'
              ],
              borderWidth: 1
          },
          {
            label: 'Level of stress after walk',
            data: [6, 5, 6, 7, 6],
            backgroundColor: [
              'rgba(151,187,205,0.2)'
            ],
            borderColor: [
              'rgba(151, 187, 205, 1)'
            ],
            borderWidth: 1
          }
        ]
      },
      options: {
          responsive: true
      }
  });

}
   
