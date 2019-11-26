object Service1: TService1
  OldCreateOrder = False
  AllowPause = False
  DisplayName = 'autoTimeServer'
  OnStart = ServiceStart
  Height = 150
  Width = 215
  object Timer1: TTimer
    Enabled = False
    Interval = 6000
    OnTimer = Timer1Timer
    Left = 88
    Top = 56
  end
end
