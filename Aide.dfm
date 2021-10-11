object Form2: TForm2
  Left = 223
  Top = 174
  Width = 582
  Height = 353
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Aide Draw Pocker'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 554
    Height = 366
    Align = alTop
    TabOrder = 0
    Tabs.Strings = (
      'Les regles du jeu Draw Pocker'
      'Les touches '#39'raccourcis'#39' du jeu')
    TabIndex = 0
    OnChange = TabControl1Change
    object Memo1: TMemo
      Left = 4
      Top = 27
      Width = 546
      Height = 335
      Align = alClient
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Les regles du jeu Draw Pocker:'
        
          ' Ce jeu est en fait un video pocker que l'#39'on peut trouver dans u' +
          'n casino '
        'quelconque.'
        
          'Les regles sont simples il suffit, a l'#39'aide des cartes a jouer d' +
          'e realiser des '
        'combinaisons en '
        'selectionnant ces cartes.'
        
          'Il y a une premiere donne ou l'#39'on peut modifier la mise et selec' +
          'tionner les '
        'cartes en cliquant '
        'dessus ou en se servant '
        
          'des touches '#39'raccourcis'#39'. La mise peut etre augmentee de un en u' +
          'n ('#39'bet '
        'one'#39') ou etre mise au '
        'maximum ('#39'bet max'#39'), c'#39'est '
        'a dire 5 ou votre credit restant inferieur a 5.'
        ''
        'Voici la liste des combinaisons a realiser:'
        
          '    -Royal Flush  : Suite de couleur a l'#39'as (mise multipliee par' +
          ' 250 si vous '
        'misez de 1 a 4 et par '
        '800 si vous misez 5)'
        '    -Straight Flush  : Suite de couleur (mise multipliee par 50)'
        '    -Four of a Kind  : Carre (mise multipliee par 25)'
        '    -Full House  : Brelan + Paire (mise multipliee par 9)'
        '    -Flush  : Suite (mise multipliee par 6)'
        '    -Straight  : Couleur (mise multipliee par 4)'
        '    -Three of a Kind  : Brelan (mise multipliee par 3)'
        '    -Two Pair  : Deux Paires (mise multipliee par 2)'
        
          '    -Jacks or Better  : Paire de valet ou mieux (mise multipliee' +
          ' par 1) '
        ''
        
          'Apres avoir selectionner les cartes vous relancer les cartes en ' +
          'appuyant '
        'sur '#39'Deal'#39'.La partie se '
        'termine lorsque votre '
        'credit est epuise. ')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 4
      Top = 27
      Width = 546
      Height = 335
      Align = alClient
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Les touches '#39'raccourcis'#39' du jeu:'
        
          '     -'#39'1'#39' , '#39'2'#39' , '#39'3'#39' , '#39'4'#39' , '#39'5'#39' : ces touches permettent de se' +
          'lectionner ou '
        'deselectionner les cartes a '
        'jouer (elles se trouvent '
        'au dessus des touches alphabetiques) '
        '     -'#39'o'#39' : cette touche permet de miser de un en un '
        '     -'#39'p'#39' : cette touche permet de miser le maximum '
        '     -'#39'Entree'#39' : cette touche permet de relancer les cartes ')
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
  end
  object Button1: TButton
    Left = 305
    Top = 368
    Width = 90
    Height = 31
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
