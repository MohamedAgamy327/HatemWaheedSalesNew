   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4ffCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs  5      	 Sales5   /Sales.Views.ClientViews.ClientAccountShowDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     5      R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5	      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5
      f	 bGalaSoft.MvvmLight.Platform, Version=5.3.0.19032, Culture=neutral, PublicKeyToken=5f873c45e98af8a1-Custom http://www.galasoft.ch/mvvmlight 	 5      1   +MahApps.Metro.Controls.Dialogs.CustomDialog   Language$  ar-EG�5      4   .MahApps.Metro.Controls.Dialogs.BaseMetroDialog   Title$" كشف حساب العميل��5      $��RightToLeft=�5      8   2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register 5      �� .��5      ��  � 	Resources 5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $ ..\..\Skins\MainSkin.xaml?�6)   %    5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��0,5q�6.   .+�5      ��    TextBlockStyle#��[  6   $��0,5,5,5q�6@   العميل:6Z   �� 5      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *SelectedClient.Name+6x   5      �� 5   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5       �� #��[  6   $��Center=�6@   $
��10,0q�6[   من6m   (  "System.Windows.Controls.DatePicker  5!      $	��200��6`   $
��10,0q�6m     DatePickerStyle#��[ 6{      SelectedDate 6   �� *
DateFrom+ �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction	   Triggers	 5"      /  )System.Windows.Interactivity.EventTrigger  5#      
   	EventName$
 SelectedDateChanged��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5$      / 	 )GalaSoft.MvvmLight.Command.EventToCommand     Command 60   �� *GetClientAccounts+5%      5'      �� 5(      #��[  6   $��Center=�6@   $
��10,0q�6[   إلى6n     5)      {�.  $	��200��6r   $
��10,0q�6   #��[ 6�    6.   �� *DateTo+$ PropertyChanged=�	 5*        5+      $
 SelectedDateChanged��6%   . 5,         60   �� *GetClientAccounts+5-      5/      50      &	   System.Windows.Controls.DataGrid	  52   
   $	��0,5q�53      $	��200��55      $	��600��56       	  HeadersVisibility$	 All=�57       	  SelectionUnit$ FullRow=�58       J� IsManipulationEnabled .   	  CanUserDeleteRows .   	  CanUserAddRows .   	  AutoGenerateColumns .  ��54      �� *ClientAccounts+ 	  Columns 5?      0
  *System.Windows.Controls.DataGridTextColumn
  5@      ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Header$ البيان��68      Width5  /System.Windows.Controls.DataGridLengthConverter$ 2* 6H     ColumnHeaderStyle   HeaderStyle# [ 6S   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5A   %   �� *	Statement+
  5B       . $ التاريخ��68   $ 1* 6I   # [ 6T    5C   %   �� *Date+ �� StringFormat$ {0:yyyy/MM/dd }��
  5D       . $
 له��68   $ 1* 6D   # [ 6O    5E   %   �� *Credit+
  5F       . $ عليه��68   $ 1* 6F   # [ 6Q    5G   %   �� *Debit+5I      �� 5L   
   $ 
Horizontal=�6   $��Center=�6.   5N      �� 5P   
   .+�5R      �� $ 
Horizontal=�6   $	��0,5q�62   .+�5S      �� #��[  6   $��0,5,10,5q�6D   #!إجمالى الدائن (له):6k   �� 5T      #��[  6   $��0,5,20,5q�6D   ��6V   �� *#!SelectedClientAccount.TotalCredit+$ {0:0.00;(0.00)}��6�   5U      �� 5W      $ 
Horizontal=�6   $	��0,5q�62   .+�5X      �� #��[  6   $��0,5,10,5q�6D   &$إجمالى المدين(عليه):6l   �� 5Y      #��[  6   $��0,5,20,5q�6D   ��6V   �� *" SelectedClientAccount.TotalDebit+$ {0:0.00;(0.00)}��6�   5Z      �� 5\      $ 
Horizontal=�6   $	��0,5q�62   .+�5]      �� #��[  6   $��0,5,10,5q�6D   20الرصيد خلال المدة المحددة:6r   �� 5^      #��[  6   $��0,5,20,5q�6D   ��6V   �� *%#SelectedClientAccount.DuringAccount+$ {0:0.00;(0.00)}��6�   5_      �� 5`      $ 
Horizontal=�6   $	��0,5q�62   .+�5a      �� #��[  6   $��0,5,10,5q�6D   20الرصيد قبل الفترة المحددة:6r   �� 5b      #��[  6   $��0,5,20,5q�6D   ��6V   �� *" SelectedClientAccount.OldAccount+$ {0:0.00;(0.00)}��6�   5c      �� 5e      $ 
Horizontal=�6   $	��0,5q�62   .+�5f      �� #��[  6   $��0,5,5,5q�6D   الرصيد الحالى:6e   �� 5g      #��[  6   $��0,5,5,5q�6D   ��6U   �� *&$SelectedClientAccount.CurrentAccount+$ {0:0.00;(0.00)}��6�   5h      5k      �� 5m   
   $��0 10 0 0q�6   �� 5n   
   $ 
Horizontal=�6   $��	0 10 0 10q�6.   .+�5p      �� $��0 0 10 0q�6     SquareButtonStyle#��[ 6A   $	��100��6l   ��6'   �� *Print+.��5q      �� $ 
Horizontal=�6   .+�5r      �� $��
طباعة��6!   #��[  6/   $
��10,0q�6W   6g   1  +MahApps.Metro.IconPacks.PackIconFontAwesome  5s      �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconFontAwesomeKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Print=�64   5t      5u      �� 5w       �� IsCancel . $��AccountShow��6E   #��[ 6d   $	��100��6�   ��6%   �� *CloseDialog+.��5x      �� $ 
Horizontal=�6   .+�5y      �� $��
إلغاء��6!   #��[  6/   $
��10,0q�6W   6g   ,  &MahApps.Metro.IconPacks.PackIconModern  5z      �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Cancel=�6/   5{      5|      5}      5~      5      