<!DOCTYPE html>
<html>
<head>
    <style>
        .card {
            width: 100%;
            margin: 15px;
            padding: 16px;
            border-radius: 20px;
            background: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .container {
            width: calc(100% - 30px); /* Adjusting to accommodate the dropdown on the right side */
            padding: 16px;
            position: relative;
        }
        .text-large {
            font-size: 40px;
        }
        .text-small {
            font-size: 20px;
        }
        .options {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 24px;
            color: #555;
            cursor: pointer;
        }
        .dropdown {
            display: none;
            position: absolute;
            background: #fff;
            width: 120px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 4px;
            top: 50px; /* Position the dropdown below the three-dot icon */
            right: 0; /* Align the dropdown to the right side */
        }
        .dropdown a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #333;
        }
        .dropdown a:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>

<div class="card">
    <div class="container">
        <span class="options" onclick="toggleDropdown()">&#8942;</span>
        <span class="text-large">Year</span>
        <span class="text-small">Semester</span>
        <div class="dropdown" id="myDropdown">
            <a href="#">Option 1</a>
            <a href="#">Option 2</a>
            <a href="#">Option 3</a>
        </div>
    </div>
</div>

<script>
function toggleDropdown() {
    var dropdown = document.getElementById("myDropdown");
    if (dropdown.style.display === "block") {
        dropdown.style.display = "none";
    } else {
        dropdown.style.display = "block";
    }
}
</script>

</body>
</html>
