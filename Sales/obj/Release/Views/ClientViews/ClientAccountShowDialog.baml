   M S B A M L   `   `   `  ���� U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4ffCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs  	 Sales5   /Sales.Views.ClientViews.ClientAccountShowDialog   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  f	 bGalaSoft.MvvmLight.Platform, Version=5.3.0.19032, Culture=neutral, PublicKeyToken=5f873c45e98af8a1-Custom http://www.galasoft.ch/mvvmlight 	 1   +MahApps.Metro.Controls.Dialogs.CustomDialog   Language$  ar-EG�4   .MahApps.Metro.Controls.Dialogs.BaseMetroDialog   Title$" كشف حساب العميل��$��RightToLeft=�8   2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register �� .����  � 	Resources  �� MergedDictionaries �� Source��  �� $ ..\..\Skins\MainSkin.xaml?�%    .+���  �� Orientation$ 
Horizontal=�$	��0,5q�.+���    TextBlockStyle#��[  $��0,5,5,5q�العميل:�� #��[  $��0,5,5,5q����� *SelectedClient.Name+�� $ 
Horizontal=�$	��0,5q�.+��� #��[  $��Center=�$
��10,0q�من(  "System.Windows.Controls.DatePicker  $	��200��$
��10,0q�  DatePickerStyle#��[    SelectedDate �� *
DateFrom+ �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction	   Triggers	 /  )System.Windows.Interactivity.EventTrigger  
   	EventName$
 SelectedDateChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. / 	 )GalaSoft.MvvmLight.Command.EventToCommand     Command �� *GetClientAccounts+�� #��[  $��Center=�$
��10,0q�إلى  {�.  $	��200��$
��10,0q�#��[  �� *DateTo+$ PropertyChanged=�	   $
 SelectedDateChanged��.    �� *GetClientAccounts+&	   System.Windows.Controls.DataGrid	  $	��0,5q�$	��200��$	��600�� 	  HeadersVisibility$	 All=� 	  SelectionUnit$ FullRow=� J� IsManipulationEnabled .   	  CanUserDeleteRows .   	  CanUserAddRows .   	  AutoGenerateColumns .  ���� *ClientAccounts+ 	  Columns 0
  *System.Windows.Controls.DataGridTextColumn
  ,  &System.Windows.Controls.DataGridColumn   
IsReadOnly .    Header$ البيان��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 2*   ColumnHeaderStyle   HeaderStyle# [ 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *	Statement+
   . $ التاريخ��$ 1* # [  �� *Date+ �� StringFormat$ {0:yyyy/MM/dd }��
   . $
 له��$ 1* # [  �� *Credit+
   . $ عليه��$ 1* # [  �� *Debit+�� $ 
Horizontal=�$��Center=��� .+��� $ 
Horizontal=�$	��0,5q�.+��� #��[  $��0,5,10,5q�#!إجمالى الدائن (له):�� #��[  $��0,5,20,5q����� *#!SelectedClientAccount.TotalCredit+$ {0:0.00;(0.00)}���� $ 
Horizontal=�$	��0,5q�.+��� #��[  $��0,5,10,5q�&$إجمالى المدين(عليه):�� #��[  $��0,5,20,5q����� *" SelectedClientAccount.TotalDebit+$ {0:0.00;(0.00)}���� $ 
Horizontal=�$	��0,5q�.+��� #��[  $��0,5,10,5q�20الرصيد خلال المدة المحددة:�� #��[  $��0,5,20,5q����� *%#SelectedClientAccount.DuringAccount+$ {0:0.00;(0.00)}���� $ 
Horizontal=�$	��0,5q�.+��� #��[  $��0,5,10,5q�20الرصيد قبل الفترة المحددة:�� #��[  $��0,5,20,5q����� *" SelectedClientAccount.OldAccount+$ {0:0.00;(0.00)}���� $ 
Horizontal=�$	��0,5q�.+��� #��[  $��0,5,5,5q�الرصيد الحالى:�� #��[  $��0,5,5,5q����� *&$SelectedClientAccount.CurrentAccount+$ {0:0.00;(0.00)}���� $��0 10 0 0q��� $ 
Horizontal=�$��	0 10 0 10q�.+��� $��0 0 10 0q�  SquareButtonStyle#��[ $	��100������ *Print+.���� $ 
Horizontal=�.+��� $��
طباعة��#��[  $
��10,0q�1  +MahApps.Metro.IconPacks.PackIconFontAwesome  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconFontAwesomeKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Print=���  �� IsCancel . $��AccountShow��#��[ $	��100������ *CloseDialog+.���� $ 
Horizontal=�.+��� $��
إلغاء��#��[  $
��10,0q�,  &MahApps.Metro.IconPacks.PackIconModern  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Cancel=�