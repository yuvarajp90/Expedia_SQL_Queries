
--Update T SET [VariableValue]='9b95111531be44df945ca516113c4c5709be447710e1406d83db3aaf4d311d6f'
 FROM AlphaProd.[dbo].[EnvironmentVariables] T
  where VariableName like '%token%'



  --Update T SET [VariableValue]='9b95111531be44df945ca516113c4c5709be447710e1406d83db3aaf4d311d6f'
  FROM AlphaStaging.[dbo].[EnvironmentVariables] T
  where VariableName like '%token%'


