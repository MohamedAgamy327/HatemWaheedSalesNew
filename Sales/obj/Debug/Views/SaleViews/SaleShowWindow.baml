   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5      	 Sales*   $Sales.Views.SaleViews.SaleShowWindow   5      HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  فاتورة مبيعات��5   	   $	��560��5	   	   $
��1000��5
   	    � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5   	   (   "MahApps.Metro.Controls.MetroWindow   ShowTitleBar .    ControlBorderBrush#���   5      $��RightToLeft=�5   	    � WindowState 5      �� *State+ � DataContext 5   	   �� *
SaleShow+  Locator �� Source# [  � 	Resources 5       �� MergedDictionaries	 �� Source�� 5   
    5      �� 5      $	 ..\..\Skins\MainSkin.xaml?�6%   %    5      .��5      � 
 � RowDefinitions
 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��4* �6   �� 5       $��2* �6   �� 5!      $��1* �6   .+�5$   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6.   .+�5%      ��   TextBlockAddUpdateStyle#��[ 6   $	��5,0q�6I   العميل6^   �� 5&      $	��300��6   $	��5,0q�6#   {�.    TextBoxStyle#��[ 6m   ��6C   �� *SelectedSale.Client.Name+6�   �� 5'      #��[ 6   $	��5,0q�6I   التاريخ6_   (  "System.Windows.Controls.DatePicker  5(      {�.  $	��5,0q�6+   $��Center=�68   $	��300��6S     DatePickerStyle#��[ 6�      SelectedDate 6_   �� *SelectedSale.Date+6�   5)      �� 5+   
   $ 
Horizontal=�6   $��1��6.   .+�5-      �� #��[ 6   $	��5,0q�6I   المندوب6_   �� 5.      $	��300��6   $	��5,0q�6#   {�.  #��[ 6s   ��6C   �� *SelectedSale.Salesperson.Name+6�   50      &   System.Windows.Controls.DataGrid  52   
   $��2��6   $	��5,0q�6       HeadersVisibility$	 All=�55         SelectionUnit$ FullRow=�56       J� IsManipulationEnabled .     CanUserDeleteRows .     CanUserAddRows .     AutoGenerateColumns .  ��53      �� *SaleCategories+ �� SelectedItem 54      �� *SelectedSaleCategory+   Columns 5;      0  *System.Windows.Controls.DataGridTextColumn  5<      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Header$ الشركة��68      Width5  /System.Windows.Controls.DataGridLengthConverter$
 1.5* 6H     ColumnHeaderStyle   HeaderStyle# [ 6V   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6�   �� *	Company+  5=       . $ 
الصنف��68   $ 3* 6G   # [ 6S    6�   �� *
Category+  5>       . $ 
السعر��68   $ 1* 6G   # [ 6S    6�   �� *Price+  5?       . $ الكمية��68   $ 1* 6H   # [ 6T    6�   �� *Qty+  5@       . $ الإجمالى��68   $
 1.5* 6J   # [ 6X    6�   �� *
PriceTotal+ �� StringFormat$ {0:0.00;(0.00)}����5C      �� 5D        MetroDataGrid �� BasedOn# [ 6    �� 
TargetType"  5E      .�5F      ��  �� Property  �@ AlternatingRowBackground  GrayBrush10 �� Value# �  5G      5H      5J      � 5L   
   $��3��6   
 5M      �� 5N      $��1* �6    �� 5O      $��1* �6     � ColumnDefinitions 5Q      �� 5R      $��1* �6#   �� 5S      $��2* �6#   �� 5T      $��1* �6#   �� 5U      $��2* �6#   �� 5V      $��1* �6#   �� 5W      $��2* �6#   .+�5Y      �� $��0��6   $��0��6%   #��[ 65   إجمالى الفاتورة6x   *   $MahApps.Metro.Controls.NumericUpDown  5Z      -   5        $��Price��5Z   C   $��0��6%   $��1��62   $	��5,0q�6P   {�.  $	��200��6o     NumericUpDownStyle#��[ 6�       Value  6|   �� *SelectedSale.Price+"! �� ValidatesOnNotifyDataErrors! . " �� UpdateSourceTrigger$" PropertyChanged=�6  �� 5\      $��0��6   $��2��6%   #��[ 66   الرصيد السابق6w     5]      $��0��6&   $��3��63   {�.  $	��200��6V   #��[ 6�     6c   �� *SelectedSale.OldDebt+$" PropertyChanged=�6�   �� 5_      #��[ 6   $��0��6I   $��4��6V   إجمالى المطلوب6v     5`      $��0��6&   $��5��63   $	��200��6D   {�.  #��[ 6�     6c   �� *SelectedSale.PriceTotal+$" PropertyChanged=�6�   �� 5b      #��[ 6   $��1��6I   $��0��6V   المدفوع نقداً6u     5c      -   5        $��CashPaid��5c   7   {�.  $��1��6G   $��1��6T   $	��200��6e   #��[ 6�     6r   �� *SelectedSale.CashPaid+! . $" PropertyChanged=�6  �� 5e      #��[ 6   $��1��6I   $��2��6V   
الخصم6m     5f      -   5        $��DiscountPaid��5f   7   {�.  #   Minimum$# 0Q�6K   $��1��6W   $��3��6d   $	��200��6u   #��[ 6�     6�   �� *SelectedSale.DiscountPaid+! . $" PropertyChanged=�6"  �� 5h      #��[ 6   $��1��6I   $��4��6V   المتبقى6p     5i      $��1��6&   $��5��63   {�.  $	��200��6U   #��[ 6�     6b   �� *SelectedSale.NewDebt+! . $" PropertyChanged=�6�   5k      �� 5m   
   $��Center=�6   $��Center=�63   $ 
Horizontal=�6N   $��4��6g   .+�5o      �� $��0,0,20,0q�6   $��Client��6E    	 SquareButtonStyle#��[	 6_   $	��150��6�   $��30��6�   ��6)   �� *Print+.��5p      �� $ 
Horizontal=�6   .+�5q      �� $��طباعة عادية��6!    
 TextBlockStyle#��[
 65   $
��10,0q�6]   6m   1	  +MahApps.Metro.IconPacks.PackIconFontAwesome	  5r      �
  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconFontAwesomeKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]$ 
  Kind$$ Print=�64   5s      5t      �� 5v      $��0,0,20,0q�6   $��Location��6E   #��[	 6a   $	��150��6�   $��30��6�   ��6)   �� *Print+.��5w      �� $ 
Horizontal=�6   .+�5x      �� $��طباعة مواقع��6!   #��[
 65   $
��10,0q�6]   6m   	  5y      $$ Print=�64   5z      5{      �� 5}      $
��10,0q�6   $��30��6$   $	��Vat��6J   #��[	 6�   $	��180��6�   ��60   �� *Print+% +� FocusedElement% 6a   �� & �� ElementName$& First��.��5~      �� $ 
Horizontal=�6   .+�5      �� $��طباعة ضريبية��6!   #��[
 66   $
��10,0q�6^   6n   	  5�      $$ Print=�64   5�      5�      #   MahApps.Metro.Controls.Badged  5�      $	��100��6      ControlzEx.BadgedEx'   Badge' 5�      �� *
RecallsQty+.��5�      �� $	��100��69   $��30��6E   #��[	 6Q   ��6   �� *
ShowRecall+.��5�      �� $ 
Horizontal=�6!   .+�5�      �� $��المرتجعات��6%   $	��5,0q�66   #��[
 6C   6n   ,  &MahApps.Metro.IconPacks.PackIconEntypo  5�      �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconEntypoKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]](   Kind$
( Back=�63   5�      5�      5�      �� 5�      $
��20,0q�6   #��[ 6&   ��6W   �� *Report+.  (System.Windows.Interactivity.Interaction)   Triggers) 5�      /  )System.Windows.Interactivity.EventTrigger  5�   
   *   	EventName$* 
MouseEnter��6   .  (System.Windows.Interactivity.TriggerBase+   Actions.+ 5�      6  0System.Windows.Interactivity.InvokeCommandAction  ,   Command, 6$   �� *
ShowReport+5�        5�      $* 
MouseLeave��6   .+ 5�        , 6   �� *
HideReport+5�   
   5�      5�      5�      5�      