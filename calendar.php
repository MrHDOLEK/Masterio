<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='./fullcalendar/packages/core/main.css' rel='stylesheet' />
<link href='./fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
<link href='./fullcalendar/packages/timegrid/main.css' rel='stylesheet' />
<script src='./fullcalendar/packages/core/main.js'></script>
<script src='./fullcalendar/packages/interaction/main.js'></script>
<script src='./fullcalendar/packages/daygrid/main.js'></script>
<script src='./fullcalendar/packages/timegrid/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
        
        
      },
      
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        
      ]
    });
    calendar.setOption('locale', 'pl');
    calendar.setOption('height', 700);
    calendar.render();
  });

</script>


</head>
<body>

  <div id='calendar'></div>

</body>
</html>
