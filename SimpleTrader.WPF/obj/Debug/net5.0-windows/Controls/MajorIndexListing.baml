   M S B A M L   `   `   `  ����K  GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:SimpleTrader.WPF.ControlsSimpleTrader.WPF.Controls  5      P LLoadingSpinnerControl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControlLoadingSpinnerControl 6D   1    +SimpleTrader.WPF.Controls.MajorIndexListing   5      \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:SimpleTrader.WPF.Controls     5      UcustomBclr-namespace:LoadingSpinnerControl;assembly=LoadingSpinnerControl     6D   .��5	      �   � RowDefinitions  5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6   $��18(�6!   $��Major Indexes��6/   � 5   
   $��1��6   $
��0 10q�6   ��5      �� 5       �� 
TargetType" �6   .�5      ��  �� Property � y� �� Value$ 	Collapsed=�63    �� Triggers 5      �� 5       �� Binding 6&   �� *	IsLoading+ �� Value	 False6D   .a�5      ��  � y�$ Visible=�6;   6M   5      5       � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   �� 5       $��* �6#   .+�5#      .   (SimpleTrader.WPF.Controls.MajorIndexCard  $��0��6#   $��0 0 10 0q�63    � DataContext 6E   �� *Nasdaq+  5$      $��1��6#   $	��5 0q�63    6@   �� *
DowJones+  5%      $��2��6#   $��10 0 0 0q�63    6E   �� *SP500+5&      � 5'   
   $��1��6   $
��0 10q�6   ��5(      �� 5)      " �6   .�5*      ��  � y�$ 	Collapsed=�63    5+      �� 5,       6&   �� *	IsLoading+ True6D   .a�5-      ��  � y�$ Visible=�6;   6M   5.      50        52      �� 53      $
��Auto �6    �� 54      $
��Auto �6    .+�56      *  $LoadingSpinnerControl.LoadingSpinner  $��0��6$      BrushPrimary2	   Color#	 [  58   $   
   	Thickness$
 5Q�59   $      	IsLoading 57   $   �� *	IsLoading+59   $   �� 5:      $��1��6   $��14(�5;       �� TextAlignment$ Center=�5<      $��
Loading...��5=      5?      5@      5A      