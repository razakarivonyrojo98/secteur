
 // Delete alert 

    document.querySelectorAll('.form-delete').forEach(form => {
        form.addEventListener('submit', function (e) {
            e.preventDefault(); // Empêche la soumission immédiate

            Swal.fire({
                title: 'Êtes-vous sûr ?',
                text: "Cette action est irréversible !",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#3085d6',
                confirmButtonText: 'Oui, supprimer !',
                cancelButtonText: 'Annuler'
            }).then((result) => {
                if (result.isConfirmed) {
                    form.submit(); // Soumet le formulaire si confirmé
                }
            });
        });
    });


// Tri de table 

document.addEventListener('DOMContentLoaded', function () {
    const table = document.getElementById('sortableTable');
    const headers = table.querySelectorAll('thead th');
    const tbody = table.querySelector('tbody');
    const sortDirections = new Array(headers.length).fill(1);

    headers.forEach((header, index) => {
        // Ignore colonne actions
        if (header.textContent.trim().toLowerCase() === 'actions') return;

        header.style.cursor = 'pointer';

        header.addEventListener('click', () => {
            const rowsArray = Array.from(tbody.querySelectorAll('tr'));

            rowsArray.sort((rowA, rowB) => {
                const cellA = rowA.children[index].textContent.trim();
                const cellB = rowB.children[index].textContent.trim();

                // Essayer de comparer comme des nombres
                const aVal = parseFloat(cellA.replace(',', '.'));
                const bVal = parseFloat(cellB.replace(',', '.'));

                const isNumeric = !isNaN(aVal) && !isNaN(bVal);

                if (isNumeric) {
                    return (aVal - bVal) * sortDirections[index];
                } else {
                    return cellA.localeCompare(cellB) * sortDirections[index];
                }
            });

            // Appliquer le tri dans le DOM
            rowsArray.forEach(row => tbody.appendChild(row));

            // Inverser la direction pour la prochaine fois
            sortDirections[index] *= -1;
        });
    });
});


//Bar de recherche de table 

document.addEventListener('DOMContentLoaded', function () {
    const select = document.getElementById('columnSelect');
    const searchInputWrapper = document.getElementById('searchColumnWrapper');
    const searchInput = document.getElementById('searchInput');
    const table = document.getElementById('sortableTable');
    const tbody = table.querySelector('tbody');

    let selectedColumn = null;

    select.addEventListener('change', function () {
        selectedColumn = this.value;
        if (selectedColumn !== "") {
            searchInputWrapper.classList.remove('d-none');
        } else {
            searchInputWrapper.classList.add('d-none');
            searchInput.value = "";
            showAllRows();
        }
    });

    searchInput.addEventListener('input', function () {
        const filter = this.value.toLowerCase();

        Array.from(tbody.rows).forEach(row => {
            const cell = row.cells[selectedColumn];
            if (!cell) return;

            const text = cell.textContent.toLowerCase();
            if (text.includes(filter)) {
                row.style.display = "";
            } else {
                row.style.display = "none";
            }
        });
    });

    function showAllRows() {
        Array.from(tbody.rows).forEach(row => {
            row.style.display = "";
        });
    }
});


//colonne select  

    document.getElementById('columnSelect').addEventListener('change', function () {
        const inputWrapper = document.getElementById('searchColumnWrapper');
        if (this.value) {
            inputWrapper.classList.remove('d-none');
        } else {
            inputWrapper.classList.add('d-none');
        }
    });

    // Tooltip pour les actions de la table
document.addEventListener('DOMContentLoaded', function () {
    const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    tooltipTriggerList.forEach(function (tooltipTriggerEl) {
        new bootstrap.Tooltip(tooltipTriggerEl);
    });
});


