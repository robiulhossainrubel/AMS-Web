<!DOCTYPE html>
<html>
<head>
    <title>HTML Layout</title>
    <style>
        /* CSS for styling */
        /* Simulating the appearance of Android layout elements */
       
        #studentrecycle {
            width: 100%;
            border: 1px solid #ddd;
            /* styling RecyclerView */
        }
        .fab {
            background-color: #FFEA17;
            color: black;
            border: none;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            position: fixed;
            bottom: 20px;
        }
        #fab_student {
            right: 20px;
        }
        #fab_date {
            right: 90px;
        }
        #fab_sheet {
            left: 20px;
        }
    </style>
</head>
<body>

    <header>
        Toolbar (Header)
    </header>

    <main>
        <div id="studentrecycle">
            <!-- Simulating RecyclerView -->
            <!-- List of items goes here -->
        </div>

        <!-- Floating Action Buttons -->
        <button class="fab" id="fab_student">+</button>
        <button class="fab" id="fab_date">Cal</button>
        <button class="fab" id="fab_sheet">List</button>
    </main>

</body>
</html>
