   M S B A M L   `   `   `  ����K  GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SimpleTrader.WPF.ViewsSimpleTrader.WPF.Views  5      E'clr-namespace:SimpleTrader.WPF.ControlsSimpleTrader.WPF.Controls  5      $    SimpleTrader.WPF.Views.BuyView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:SimpleTrader.WPF.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      <controls'clr-namespace:SimpleTrader.WPF.Controls     5        � 	Resources  5          BooleanToVisibilityConverter��%   &	        �� 5   
   6'   5      .��5      � $��20q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   � $��0��6   $��Center=�6!   .+�5      �� $	��100��6   ��6"   �� *Symbol+ �� UpdateSourceTrigger$ PropertyChanged=��� 5      $��5,0,0,0q�6   $��Search��5      ��5      �� *SearchSymbolCommand+5      5      �� 5   
   $��1��6   $��0,10,0,0q�6!   $��Center=�5      
���  �� � DataContext 5       �� *ErrorMessageViewModel+��5"      �� *	Message+y�5#      �� *
HasMessage+ �� 	Converter# [  �� 5%   
   $��2��6   $��0,10,0,0q�6!   $��Center=�5&      
��� d � 5'      �� *StatusMessageViewModel+��5)      �� *	Message+y�5*      �� *
HasMessage+# [  7   1SimpleTrader.WPF.Controls.SearchSymbolResultPanel  5,   
   $��3��6+   $��0,20,0,0q�68   .��5-      �� $��Center=�6   .+�5.      � $
��0,10q�6   .+�5/      �� $	��150��6    $��Shares to buy:��6,   �� 50      $��50��6   ��6)   �� *SharesToBuy+$ PropertyChanged=�51      � 52      $
��0,10q�6   .+�53      �� $	��150��6    $��Price per share:��6,   �� 54      $��50��6    ��6+   �� *
StockPrice+ �� StringFormat$ {0:C}��55      �� 56      $
��0,10q�6   $��Center=�57      $��32(�58      ��59      �� *
TotalPrice+$ {0:C}���� 5:      $
��0,10q�6   $
��20,5q�6'   $	��Buy��5<      $��24(�5=      ��5;      �� *BuyStockCommand+5=      5>      5?      5@      5A      