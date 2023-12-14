<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programming Tools</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        nav {
            display: flex;
            justify-content: center;
            background-color: #f2f2f2;
            padding: 10px;
        }

        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        main {
            padding: 20px;
        }

        section {
            margin-top: 20px;
        }

        .tool-container {
            margin-bottom: 30px;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>CS 11030</h1>
    </header>

    <nav>
        <a href="#home">Home</a>
        <a href="#conversion">Unit Conversion</a>
        <a href="#looping">Looping</a>
        <a href="#incomeTax">Income Tax</a>
        <a href="#payroll">Payroll</a>
    </nav>

    <main>
        <section id="home">
            <h2>CS 11030</h2>
            <p>Website feature: Unit conversion, looping, income tax, payroll</p>
        </section>

        <section id="conversion" class="tool-container">
            <h2>Unit Conversion</h2>
            <label for="unitInput">Enter value:</label>
            <input type="number" id="unitInput" placeholder="Enter value">
            <button onclick="convertUnit()">Convert</button>
            <p id="conversionResult"></p>
        </section>

        <section id="looping" class="tool-container">
            <h2>Looping</h2>
            <button onclick="loopExample()">Start Loop</button>
            <p id="loopResult"></p>
        </section>

        <section id="incomeTax" class="tool-container">
            <h2>Income Tax Calculator</h2>
            <label for="income">Income:</label>
            <input type="number" id="income" placeholder="Enter income">
            <button onclick="calculateTax()">Calculate Tax</button>
            <p id="taxResult"></p>
        </section>

        <section id="payroll" class="tool-container">
            <h2>Payroll Calculator</h2>
            <label for="hours">Hours Worked:</label>
            <input type="number" id="hours" placeholder="Enter hours worked">
            <label for="rate">Hourly Rate:</label>
            <input type="number" id="rate" placeholder="Enter hourly rate">
            <button onclick="calculatePayroll()">Calculate Payroll</button>
            <p id="payrollResult"></p>
        </section>
    </main>

    <script>
        function convertUnit() {
            const inputValue = parseFloat(document.getElementById('unitInput').value);
            // Add your unit conversion logic here
            document.getElementById('conversionResult').innerHTML = `Conversion Result: ${inputValue}`;
        }

        function loopExample() {
            let result = '';
            for (let i = 1; i <= 5; i++) {
                result += `Loop iteration ${i}<br>`;
            }
            document.getElementById('loopResult').innerHTML = result;
        }

        function calculateTax() {
            const income = parseFloat(document.getElementById('income').value);
            // Add your income tax calculation logic here
            document.getElementById('taxResult').innerHTML = `Income Tax: ${income * 0.2}`;
        }

        function calculatePayroll() {
            const hours = parseFloat(document.getElementById('hours').value);
            const rate = parseFloat(document.getElementById('rate').value);
            // Add your payroll calculation logic here
            document.getElementById('payrollResult').innerHTML = `Net Pay: ${hours * rate}`;
        }
    </script>

</body>
</html>
