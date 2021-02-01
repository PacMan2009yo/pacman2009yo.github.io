local data = syn.request({ -- syn.request is Synapse's custom request function, this also sends a header named 'Syn-Fingerprint' which is your HWID.
    Url = ('https://website.whitelist/whitelist/GetHWID.php'); -- This is where you put your authentication url.
    Method = 'GET';
})

if data.StatusCode == 200 then
    setclipboard(data.Body)
end
