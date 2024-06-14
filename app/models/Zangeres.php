<?php

class Zangeres
{
    private $db;

    public function __construct()
    {
        /**
         * Maak een nieuw database object die verbinding maakt met de 
         * MySQL server
         */
        $this->db = new Database();
    }

    /**
     * Haal alle records op uit de Country-tabel
     */
    public function getZangeressen()
    {
        try {
            /**
             * Maak een sql-query die de gewenste informatie opvraagt uit de database
             */
            $sql = 'SELECT Id
                          ,Naam
                          ,NettoWaarde
                          ,Land
                          ,Mobiel
                          ,Leeftijd
                    FROM   Zangeres
                    ORDER BY NettoWaarde DESC';

            /**
             * Prepare de query voor het PDO object
             */
            $this->db->query($sql);

            /**
             * Geef de opgehaalde informatie terug aan de controller
             */
            return $this->db->resultSet();
            
        } catch (Exception $e) {
            // Behandel de uitzondering hier, bijvoorbeeld loggen of een foutmelding weergeven
            echo 'Er is een fout opgetreden: ' . $e->getMessage();
        }
    }

    public function deleteZangeresById($zangeresId)
    {
        /**
         * Maak een sql-query die het record met de opgegeven Id verwijderd
         */
        $sql = 'DELETE FROM Zangeres 
                WHERE Id = :zangeresId';

        /**
         * Prepare de query voor het PDO object
         */
        $this->db->query($sql);

        /**
         * Bind de parameter aan de query
         */
        $this->db->bind(':zangeresId', $zangeresId, PDO::PARAM_INT);

        /**
         * Voer de query uit
         */
        return $this->db->execute();
    }

}