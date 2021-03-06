<?php
    require_once("Connection.class.php");
    include_once '../Dominio/Admin.class.php';
    class AdminAplicacao{
        public function BuscaLog($admLog){
            $connection = new Connection();
            $conn = $connection->getConn();
            $admVetor = [];
            $adm = new Admin();                                 
            $sql = "Select * From relatoriolog Where DescricaoLog Like '%".$admLog->DescA."%'";
            if (!empty($admLog->DtLogIniA)){
                $sql = $sql." and DthorLog >= '".$admLog->DtLogIniA." 00:00:00'";
            }
            if (!empty($admLog->DtLogFimA)){
                $sql = $sql." and DthorLog <= '".$admLog->DtLogFimA." 23:59:00'";
            }          
            if ($admLog->TipLogA != 'T'){
                $sql = $sql." and TipoLog = '".$admLog->TipLogA."'";
            }
            
            //Select CodUsu,EmaUsu ,NomUsu , SenUsu ,TipUsu from usuario Where EmaUsu = ? and SenUsu = md5(?)
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            if ($stmt->error) {
                $form_data['success'] = false;
                $form_data['erros']  = $stmt->error; 
            } else {
                $result = $stmt->get_result();
                if ($result->num_rows > 0) {
                    $i = 0;
                    while($row = $result->fetch_assoc()) {   
                        $adm = new Admin();                        
                        $form_data['success'] = true;
                        $adm->DescA = $row["DescricaoLog"];
                        $adm->DtLogIniA = date('d/m/Y', strtotime($row["DthorLog"]));
                        $adm->TipLogA = $row["TipoLog"];
                        array_push($admVetor,$adm);
                        $i++;
                    }
                    $form_data['admin'] = $admVetor;
                }else{
                    $form_data['success'] = false;
                    $form_data['erros']  = 'Dados Inexistentes...'; 
                }

            }
            $conn->close();	
            echo json_encode($form_data);
            die();
        }
    }  
?>