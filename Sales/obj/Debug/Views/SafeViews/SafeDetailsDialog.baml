   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4ffCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs  5      	 Sales-   'Sales.Views.SafeViews.SafeDetailsDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     5      R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      4   .MahApps.Metro.Controls.Dialogs.BaseMetroDialog    Title$E  ? تفاصيل الخزنة خلال الفترة المحددة��5      $��RightToLeft=�5      8   2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register 5	      �� .��5      ��  � 	Resources 5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $ ..\..\Skins\MainSkin.xaml?�6)   %    5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��0,5q�6.   .+�5      ��    TextBlockStyle#��[  6   $��0,5,5,5q�6@   سنود الخزنة:6_   �� 5      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *
SafeItem+ �� StringFormat$ {0:0.00;(0.00)}��6�   5      �� 5   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5      �� #��[  6   $��0,5,5,5q�6@    فواتير المبيعات:6c   �� 5      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *
SaleItem+$ {0:0.00;(0.00)}��6�   5      �� 5!   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5"      �� #��[  6   $��0,5,5,5q�6@   سنود قبض حساب:6a   �� 5#      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *AccountCatchItem+$ {0:0.00;(0.00)}��6�   5$      �� 5%   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5&      �� #��[  6   $��0,5,5,5q�6@   سنود قبض سلف :6b   �� 5'      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *DebtCatchItem+$ {0:0.00;(0.00)}��6�   5(      �� 5*   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5+      �� #��[  6   $��0,5,5,5q�6@   مصاريف:6Z   �� 5,      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *SpendingItem+$ {0:0.00;(0.00)}��6�   5-      �� 5.   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5/      �� #��[  6   $��0,5,5,5q�6@   " فواتير المشتريات:6d   �� 50      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *
SupplyItem+$ {0:0.00;(0.00)}��6�   51      �� 53   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�54      �� #��[  6   $��0,5,5,5q�6@   سنود دفع حساب:6a   �� 55      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *AccountPayItem+$ {0:0.00;(0.00)}��6�   56      �� 58   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�59      �� #��[  6   $��0,5,5,5q�6@   سنود دفع سلف:6`   �� 5:      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *DebtPayItem+$ {0:0.00;(0.00)}��6�   5;      �� 5=   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5>      �� #��[  6   $��0,5,5,5q�6@   سنود دفع قسط:6`   �� 5?      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *PremiumPayItem+$ {0:0.00;(0.00)}��6�   5@      �� 5B   
   $��0 10 0 0q�6   �� 5C   
   $ 
Horizontal=�6   $��	0 10 0 10q�6.   .+�5D      ��  �� IsCancel . $��Details��6E     SquareButtonStyle#��[ 6`   $	��100��6�   ��6%   �� *CloseDialog+.��5E      �� $ 
Horizontal=�6   .+�5F      �� $��
إلغاء��6!   #��[  6/   $
��10,0q�6W   6g   ,  &MahApps.Metro.IconPacks.PackIconModern  5G      �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Cancel=�6/   5H      5I      5J      5K      5L      