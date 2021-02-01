<?php
    function rString($n) { 
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'; 
        $randomString = ''; 
    
        for ($i = 0; $i < $n; $i++) { 
            $index = rand(0, strlen($characters) - 1); 
            $randomString .= $characters[$index]; 
        } 
    
        return $randomString; 
    } 
    $Key = $_GET['key'];
    $HWID = getallheaders()["Syn-Fingerprint"];
    
    // This method is really bad, use arrays.
    if ($Key == '1234567890' and $HWID == 'ed0a5102a78f69a74e26fabbca4c9dee21425aca560ac71f459f43b8b5bc0065d2636c53a23e4da55b8b9b43893cf7e781d22d5e295f30909df9757eac211cd99') {
        echo base64_encode($Key);
    } else {
        echo rString(rand(1, 999));
    }
?>
