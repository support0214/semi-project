        // JavaScript 코드를 여기에 추가하세요
        function generateCalendar(year, month) {
            var monthNames = [
                "January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"
            ];

            var date = new Date(year, month - 1, 1);
            var firstDay = date.getDay();

            var tableBody = document.getElementById("calendar-body");
            tableBody.innerHTML = "";

            var row = document.createElement("tr");

            for (var i = 0; i < firstDay; i++) {
                var cell = document.createElement("td");
                row.appendChild(cell);
            }

            var daysInMonth = new Date(year, month, 0).getDate();

            for (var day = 1; day <= daysInMonth; day++) {
                if (row.childElementCount === 7) {
                    tableBody.appendChild(row);
                    row = document.createElement("tr");
                }

                var cell = document.createElement("td");
                cell.innerText = day;
                row.appendChild(cell);
            }

            if (row.childElementCount > 0) {
                tableBody.appendChild(row);
            }

            var monthName = monthNames[month - 1];
            var calendarTitle = document.querySelector(".month");
            calendarTitle.innerText = monthName + " " + year;
        }

        var currentYear = new Date().getFullYear();
        var currentMonth = new Date().getMonth() + 1;

        generateCalendar(currentYear, currentMonth);