   M S B A M L   `   `   `  ����K  GSimpleTrader.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:SimpleTrader.WPF.ViewsSimpleTrader.WPF.Views  5      J FPasswordBoxMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVMPasswordBoxMVVM.Components 5   L   &     SimpleTrader.WPF.Views.LoginView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:SimpleTrader.WPF.Views     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      X
componentsAclr-namespace:PasswordBoxMVVM.Components;assembly=PasswordBoxMVVM     6L   $��24(�5
        � 	Resources  5          BooleanToVisibilityConverter��%   &	        �� 5   
   6'   5      ��5      �� 5   
    �� ImageSource$% /Resources/login-background.jpg��5       �� Opacity$	 0.5Q�5       j� Stretch$ UniformToFill=�5      .��5      �� $��25q�6    �� Padding$ 50q�6   $��Center=�5   	   $��Center=�5   	   
�������  BrushPrimary2#��[ 5   	   $��3q�5   	    �� CornerRadius$ 10��5   	    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 10Q�6      Color$
 Gray��6/   ._�5   
   � 	 � IsSharedSizeScope$
	 True��6   
 � RowDefinitions
 5       �� 5!      $
��auto �6    �� 5"      $
��auto �6    �� 5#      $
��auto �6    .+�5&      �� $��0��6   $��Center=�5'      $��48(�5(      $��Simple Trader��5)      �� 5+      $��1��6   $
��0,10q�6%   $��Center=�5,      $��18(�5-      $
��Thin"�5.      $5��/The world's simplest stock trading application.��5/      � 51      $��2��6   $
��0,20q�6    
 52      �� 53      $
��auto �6$   �� 54      $
��auto �6$   �� 55      $
��auto �6$   �� 56      $
��auto �6$   �� 57      $
��auto �6$   .+�5:      � $��0��6   $
��0,10q�6$    � ColumnDefinitions 5;      �� 5<      $
��auto �6+    z� SharedSizeGroup$ Label��68   �� 5=      $	��300 �6+   .+�5@      �� $��0��6    $��Username��60   �� 5A      $��1��6   $��20,0,0,0q�6.   ��5B      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�5C      � 5E      $��1��6   $
��0,10q�6$    5F      �� 5G      $
��auto �6+   $ Label��68   �� 5H      $	��300 �6+   .+�5K      �� $��0��6    $��Password��60   4  .PasswordBoxMVVM.Components.BindablePasswordBox  5L      $��1��65   $��20,0,0,0q�6E      Password 5M      �� *
Password+5N      �� 5P      $��2��6   $
��0,10q�6&   $��Center=�5Q      $��Login��5S       �� 	IsDefault$
 True��5T      ��5R      �� *LoginCommand+5T      �� 5V      $��3��6   $��0,10,0,0q�6&   $��Center=�5W      
������ $��Don't have an account?��5Z      $��14(�5[      
����  ���5Y      �� *ViewRegisterCommand+5\      �� 5^      $��4��6   $��0,10,0,0q�6)   $��Center=�5_      
���  �� � DataContext 5`      �� *ErrorMessageViewModel+��5b      �� *	Message+y�5c      �� *
HasMessage+ �� 	Converter# [  5d      5e      5f      5g      