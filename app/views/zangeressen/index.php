<?php require_once APPROOT . '/views/includes/header.php'; ?>

<div class="container mt-3">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <h3><?= $data['title']; ?></h3>            
        </div>
        <div class="col-2"></div>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Naam</th>
                        <th>Netto Waarde (miljoen)</th>
                        <th>Land</th>
                        <th>Mobiel</th>
                        <th>Leeftijd</th>
                        <th>Verwijder</th>
                    </tr>
                </thead>
                <tbody>
                    <?= $data['dataRows']; ?>
                </tbody>
            </table>        
        </div>
        <div class="col-2"></div>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <a href="<?= URLROOT; ?>/homepages/index">Homepage</a>     
        </div>
        <div class="col-2"></div>
    </div>
</div>

<?php require_once APPROOT . '/views/includes/footer.php'; ?>