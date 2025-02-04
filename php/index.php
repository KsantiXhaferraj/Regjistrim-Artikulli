<!DOCTYPE html>
<html>
<head>
    <title>Article Registration</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="app">
        <h1>Article Registration</h1>
        <form id="articleForm" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount">
            </div>
            <div class="form-group">
                <label for="expirationDate">Expiration Date:</label>
                <input type="date" id="expirationDate" name="expirationDate">
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" name="price">
            </div>
            <div class="form-group">
                <label for="type">Type:</label>
                <select id="type" name="type">
                    <option value="Ushqimore">Ushqimore</option>
                    <option value="Bulmet">Bulmet</option>
                    <option value="Pije">Pije</option>
                    <option value="Embelsire">Embelsire</option>
                </select>
            </div>
            <div class="form-group">
                <label for="tax">Tax:</label>
                <input type="checkbox" id="tax" name="tax" value="1"> Yes
            </div>
            <div class="form-group">
                <label for="barcode">Barcode/Code:</label>
                <input type="text" id="barcode" name="barcode">
            </div>
            <div class="form-actions">
                <button type="submit" id="saveBtn" name="saveBtn">Save</button>
                <button type="submit" id="searchBtn" name="searchBtn">Search</button>
                <button type="submit" id="deleteBtn" name="deleteBtn">Delete</button>
                <button type="submit" id="exitBtn" name="exitBtn">Exit</button>
            </div>
        </form>
        <div id="message">
            <?php
                if($_SERVER["REQUEST_METHOD"] == "POST") {
                    if(isset($_POST['saveBtn'])) {
                        echo "<p>Save button was clicked!</p>";
                        // Handle save logic here
                    }
                }
            ?>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
