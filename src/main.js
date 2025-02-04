document.addEventListener('DOMContentLoaded', () => {
  const articleForm = document.getElementById('articleForm');
  const messageDiv = document.getElementById('message');
  const taxYesCheckbox = document.getElementById('taxYes');
  const taxNoCheckbox = document.getElementById('taxNo');

  // Sample article data (replace with actual database lookup in real app)
  const articles = {
    '12345': {
      name: 'Product 1',
      amount: '10',
      expirationDate: '2024-12-31',
      price: '19.99',
      type: 'Ushqimore',
      tax: '1',
      barcode: '12345'
    },
    '67890': {
      name: 'Product 2',
      amount: '5',
      expirationDate: '2024-11-15',
      price: '29.99',
      type: 'Pije',
      tax: '0',
      barcode: '67890'
    }
  };

  document.getElementById('saveBtn').addEventListener('click', () => {
    const formData = new FormData(articleForm);
    const articleData = {};
    formData.forEach((value, key) => {
      articleData[key] = value;
    });

    // Determine tax value from checkboxes
    if (taxYesCheckbox.checked) {
      articleData.tax = '1';
    } else if (taxNoCheckbox.checked) {
      articleData.tax = '0';
    } else {
      articleData.tax = '0'; // Default to 'No' if neither is checked
    }


    // Save article to the articles object using barcode as key
    const barcode = articleData.barcode;
    if (barcode) {
      articles[barcode] = articleData;
      messageDiv.textContent = `Article with barcode "${barcode}" Saved: ${JSON.stringify(articleData)}`;
    } else {
      messageDiv.textContent = 'Barcode is required to save an article.';
    }

    // Clear input fields and checkboxes
    articleForm.reset();
    taxYesCheckbox.checked = false;
    taxNoCheckbox.checked = false;
  });

  document.getElementById('searchBtn').addEventListener('click', () => {
    const barcode = document.getElementById('barcode').value;
    if (barcode) {
      const article = articles[barcode];
      if (article) {
        // Display article details
        let detailsHTML = '<h3>Article Details:</h3><ul>';
        for (const key in article) {
          // Display "Yes" or "No" for tax
          let displayValue = article[key];
          if (key === 'tax') {
            displayValue = article[key] === '1' ? 'Yes' : 'No';
          }
          detailsHTML += `<li><b>${key}:</b> ${displayValue}</li>`;
        }
        detailsHTML += '</ul>';
        messageDiv.innerHTML = detailsHTML; // Use innerHTML to render HTML content
      } else {
        messageDiv.textContent = `Article with barcode "${barcode}" not found.`;
      }
    } else {
      messageDiv.textContent = 'Please enter a barcode to search.';
    }
  });

  document.getElementById('deleteBtn').addEventListener('click', () => {
    const barcodeToDelete = document.getElementById('barcode').value;
    if (barcodeToDelete) {
      if (articles[barcodeToDelete]) {
        delete articles[barcodeToDelete]; // Delete article from the articles object
        messageDiv.textContent = `Article with barcode "${barcodeToDelete}" deleted successfully.`;
      } else {
        messageDiv.textContent = `Article with barcode "${barcodeToDelete}" not found.`;
      }
    } else {
      messageDiv.textContent = 'Please enter a barcode to delete.';
    }
  });

  document.getElementById('exitBtn').addEventListener('click', () => {
    // Try to close the window (may be blocked by browser)
    window.close();
    // Fallback message in case window.close() is blocked
    messageDiv.textContent = 'Exiting application...';
  });
});
