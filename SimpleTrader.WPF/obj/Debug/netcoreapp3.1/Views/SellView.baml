   M S B A M L   `   `   `  ����K  GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SimpleTrader.WPF.ViewsSimpleTrader.WPF.Views  5      E'clr-namespace:SimpleTrader.WPF.ControlsSimpleTrader.WPF.Controls  5      %    SimpleTrader.WPF.Views.SellView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:SimpleTrader.WPF.Views     5      <controls'clr-namespace:SimpleTrader.WPF.Controls     5        � 	Resources  5
          BooleanToVisibilityConverter��%   &	        �� 5   
   6'   5      .��5      � $��20q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ cbAssets��5      $��0��5      $	��300��5      ��5      �� *AssetListingViewModel.Assets+ �� SelectedItem 5      �� *SelectedAsset+��5      �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6!   .+�5      �� ��6$   �� *Symbol+�� 5      $
��10 0q�6!   
���   �$��1 0 0 0q�6C   �� 5       ��6$   �� *Shares+5!      5"      5$      �� 5&   
   $��1��6   $��0,10,0,0q�6!   $��Center=�5'      
���  �� � DataContext 5(      �� *ErrorMessageViewModel+��5*      �� *	Message+y�5+      �� *
HasMessage+ �� 	Converter# [  �� 5-   
   $��2��6   $��0,10,0,0q�6!   $��Center=�5.      
��� d � 5/      �� *StatusMessageViewModel+��51      �� *	Message+y�52      �� *
HasMessage+# [  7   1SimpleTrader.WPF.Controls.SearchSymbolResultPanel  54   
   $��3��6+   $��0,20,0,0q�68   .��55      �� $��Center=�6   .+�56      � $
��0,10q�6   .+�57      �� $	��150��6    $��Shares to sell:��6,   �� 58      $��50��6   ��6)   �� *SharesToSell+ �� UpdateSourceTrigger$ PropertyChanged=�59      � 5:      $
��0,10q�6   .+�5;      �� $	��150��6    $��Price per share:��6,   �� 5<      $��50��6    ��6+   �� *
StockPrice+ �� StringFormat$ {0:C}��5=      �� 5>      $
��0,10q�6   $��Center=�5?      $��32(�5@      ��5A      �� *
TotalPrice+$ {0:C}���� 5B      $
��0,10q�6   $
��20,5q�6'   $
��Sell��5D      $��24(�5E      ��5C      �� *SellStockCommand+5E      5F      5G      5H      5I      