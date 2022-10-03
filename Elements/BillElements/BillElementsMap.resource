*** Variables ***
&{Bill}
...    SaveButton=//button[text()='Salvar']
...    BillCreateMsg=//div[text()='Conta adicionada com sucesso!']
...    DeleteBill=//span[@class='glyphicon glyphicon-remove-circle']
...    BillDeleteMsg=//div[text()='Conta removida com sucesso!']
...    EditBill=//span[@class='glyphicon glyphicon-edit']
...    BillEditMsg=//div[text()='Conta alterada com sucesso!']
...    DeleteEditBill=//td[text()='TestEdit']/..//span[@class='glyphicon glyphicon-remove-circle']