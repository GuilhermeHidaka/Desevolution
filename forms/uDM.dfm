object DM: TDM
  Height = 279
  Width = 356
  object fbClient: TFDPhysFBDriverLink
    VendorLib = 'C:\Users\guiik\Desktop\Desevolution\dlls\fbclient.dll'
    Left = 72
    Top = 152
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Users\guiik\Desktop\Desevolution\DB\DESEVOLUTION.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=fB')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 32
  end
  object Parceiros: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from parceiros'
      '')
    Left = 144
    Top = 80
    object ParceirosPAR_COD: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PAR_COD'
      Origin = 'PAR_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ParceirosPAR_CPF: TStringField
      FieldName = 'PAR_CPF'
      Origin = 'PAR_CPF'
      Size = 11
    end
    object ParceirosPAR_RAZAO: TStringField
      FieldName = 'PAR_RAZAO'
      Origin = 'PAR_RAZAO'
      Size = 40
    end
    object ParceirosPAR_APELIDO: TStringField
      FieldName = 'PAR_APELIDO'
      Origin = 'PAR_APELIDO'
      Size = 25
    end
    object ParceirosPAR_EMAIL: TStringField
      FieldName = 'PAR_EMAIL'
      Origin = 'PAR_EMAIL'
      Size = 48
    end
    object ParceirosPAR_CELULAR: TStringField
      FieldName = 'PAR_CELULAR'
      Origin = 'PAR_CELULAR'
      Size = 16
    end
    object ParceirosPAR_BAIRRO: TStringField
      FieldName = 'PAR_BAIRRO'
      Origin = 'PAR_BAIRRO'
      Size = 30
    end
    object ParceirosPAR_LOGRADOURO: TStringField
      FieldName = 'PAR_LOGRADOURO'
      Origin = 'PAR_LOGRADOURO'
      Size = 35
    end
    object ParceirosPAR_CIDADE: TStringField
      FieldName = 'PAR_CIDADE'
      Origin = 'PAR_CIDADE'
      Size = 30
    end
    object ParceirosPAR_UF: TStringField
      FieldName = 'PAR_UF'
      Origin = 'PAR_UF'
      Size = 2
    end
  end
  object Produtos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 216
    Top = 72
    object ProdutosPRO_COD: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRO_COD'
      Origin = 'PRO_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ProdutosPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Origin = 'PRO_DESCRICAO'
      Size = 40
    end
    object ProdutosPRO_ESTOQUE: TIntegerField
      FieldName = 'PRO_ESTOQUE'
      Origin = 'PRO_ESTOQUE'
    end
    object ProdutosPRO_COMPRA: TFloatField
      FieldName = 'PRO_COMPRA'
      Origin = 'PRO_COMPRA'
    end
    object ProdutosPRO_VENDA: TFloatField
      FieldName = 'PRO_VENDA'
      Origin = 'PRO_VENDA'
    end
    object ProdutosPRO_REF: TStringField
      FieldName = 'PRO_REF'
      Origin = 'PRO_REF'
      Size = 40
    end
    object ProdutosPRO_COD_BARRA: TStringField
      FieldName = 'PRO_COD_BARRA'
      Origin = 'PRO_COD_BARRA'
      Size = 40
    end
  end
end
