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
    if ($Key == '1234567890' and $HWID == 'a3cd4157c5d0ddccf16a3c0a81253aa4cef34dfd3bd3dbf9d98036f4a0aab304908e93475112a4b7d7477c41355b426fd3012444760686ef842893e9dd9f478c') {
        echo base64_encode($Key);
    } else {
        echo rString(rand(1, 999));
    }
?>
