<?php

class Zangeressen extends BaseController
{
    private $zangeresModel;

    public function __construct()
    {
        $this->zangeresModel = $this->model('Zangeres');
    }

    public function index()
    {
        $zangeressen = $this->zangeresModel->getZangeressen();
        
        // var_dump($zangeressen);exit();

        $dataRows = "";

        foreach ($zangeressen as $zangeres) {
            $dataRows .= "<tr>
                            <td>{$zangeres->Naam}</td>
                            <td>{$zangeres->NettoWaarde}</td>
                            <td>{$zangeres->Land}</td>
                            <td>{$zangeres->Mobiel}</td>
                            <td>{$zangeres->Leeftijd}</td>
                            <td class='text-center'>
                                <a href='" . URLROOT . "/Zangeressen/delete/{$zangeres->Id}'>
                                    <i class='bi bi-trash'></i>
                                </a>
                            </td>            
                        </tr>";
        }

        $data = [
            'title' => 'De Top 5 rijkste zangeressen ter wereld',
            'dataRows' => $dataRows
        ];

        $this->view('zangeressen/index', $data);
    }

    public function delete($zangeresId)
    {
        /**
         * Verwijder het record met de opgegeven Id
         */
        $result = $this->zangeresModel->deleteZangeresById($zangeresId);

        /**
         * Maak een boodschap voor de gebruiker als het is gelukt
         */
        $data = [
            'message' => 'Het record is verwijderd'
        ];

        /**
         * Laat de boodschap zien aan de gebruiker
         */
        $this->view('zangeressen/delete', $data);

        /**
         * Stuur de gebruiker terug naar de index-pagina
         */
        header("Refresh:2; url=" . URLROOT . "/Zangeressen/index");
    }
}