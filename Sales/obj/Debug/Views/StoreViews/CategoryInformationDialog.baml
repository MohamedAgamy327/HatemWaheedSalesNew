   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4ffCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs  5      	 Sales6   0Sales.Views.StoreViews.CategoryInformationDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     5      R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	      f	 bGalaSoft.MvvmLight.Platform, Version=5.3.0.19032, Culture=neutral, PublicKeyToken=5f873c45e98af8a1-Custom http://www.galasoft.ch/mvvmlight 	 5
      1   +MahApps.Metro.Controls.Dialogs.CustomDialog   Language$  ar-EG�5      4   .MahApps.Metro.Controls.Dialogs.BaseMetroDialog   Title$ بيانات الصنف��5      $��RightToLeft=�5      8   2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register 5      �� .��5      �� -   5        $	��pnl��5      $��10q�6    � 	Resources 5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $ ..\..\Skins\MainSkin.xaml?�6)   %    5      .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��0,5q�6.   .+�5      ��    TextBlockStyle#��[  6   $��0,5,10,5q�6@   المخزن:6[   �� 5      #��[  6   $��0,5,50,5q�6@   ��6R   �� *#!SelectedCategoryInformation.Stock+6�   �� 5      #��[  6   $��0,5,10,5q�6@   الشركة:6[   �� 5      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *%#SelectedCategoryInformation.Company+6�   5       �� 5"   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5#      �� #��[  6   $��0,5,10,5q�6@   الصنف:6Z   �� 5$      #��[  6   $��0,5,50,5q�6@   ��6R   �� *&$SelectedCategoryInformation.Category+6�   �� 5%      #��[  6   $��0,5,10,5q�6@   اللون:6Z   �� 5&      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *#!SelectedCategoryInformation.Color+6�   5'      �� 5)   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5*      �� #��[  6   $��0,5,5,5q�6@   !رصيد بداية المدة:6d   �� 5+      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *&$SelectedCategoryInformation.QtyStart+6�   5,      �� 5.   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5/      �� #��[  6   $��0,5,5,5q�6@   الكمية:6Z   �� 50      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *!SelectedCategoryInformation.Qty+6�   51      �� 53   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�54      �� #��[  6   $��0,5,5,5q�6@   حد الطلب:6\   �� 55      #��[  6   $��0,5,5,5q�6@   ��6Q   �� **(SelectedCategoryInformation.RequestLimit+6�   56      �� 58   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�59      �� #��[  6   $��0,5,5,5q�6@   التكلفة:6[   �� 5:      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *" SelectedCategoryInformation.Cost+6�   5;      �� 5=   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5>      �� #��[  6   $��0,5,5,5q�6@   السعر:6Y   �� 5?      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *#!SelectedCategoryInformation.Price+6�   5@      �� 5B   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5C      �� #��[  6   $��0,5,5,5q�6@   إجمالى التكلفة:6b   �� 5D      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *'%SelectedCategoryInformation.TotalCost+ �� StringFormat$ {0:0.00;(0.00)}��6�   5E      �� 5G   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5H      �� #��[  6   $��0,5,5,5q�6@   إجمالى السعر:6`   �� 5I      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *(&SelectedCategoryInformation.TotalPrice+$ {0:0.00;(0.00)}��6�   5J      �� 5L   
   $��0 5 0 5q�6   �� 5N   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5O      �� #��[  6   $��Center=�6@   $
��10,0q�6[   من6m   (  "System.Windows.Controls.DatePicker  5P      $	��200��6`   $
��10,0q�6m     DatePickerStyle#��[ 6{      SelectedDate 6   �� *
DateFrom+	 �� UpdateSourceTrigger$	 PropertyChanged=�.  (System.Windows.Interactivity.Interaction
   Triggers
 5Q      /  )System.Windows.Interactivity.EventTrigger  5R         	EventName$ SelectedDateChanged��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5S      / 	 )GalaSoft.MvvmLight.Command.EventToCommand     Command 60   �� *GetInformation+5T      5V      �� 5W      #��[  6   $��Center=�6@   $
��10,0q�6[   إلى6n     5X      $	��200��6a   $
��10,0q�6n   #��[ 6|    6   �� *DateTo+$	 PropertyChanged=�
 5Y        5Z      $ SelectedDateChanged��6%   . 5[         60   �� *GetInformation+5\      5^      5_      �� 5a   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5b      �� #��[  6   $��0,5,5,5q�6@   ;9الكمية الموردة خلال فترة محددة:6r   �� 5c      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *'%SelectedCategoryInformation.SupplyQty+6�   5d      �� 5f   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5g      �� #��[  6   $��0,5,5,5q�6@   FDتكلفة الكمية الموردة خلال فترة محددة:6x   �� 5h      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *(&SelectedCategoryInformation.SupplyCost+6�   5i      �� 5k   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5l      �� #��[  6   $��0,5,5,5q�6@   ;9الكمية المباعة خلال فترة محددة:6r   �� 5m      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *%#SelectedCategoryInformation.SaleQty+6�   5n      �� 5p   
   $ 
Horizontal=�6   $	��0,5q�6.   .+�5q      �� #��[  6   $��0,5,5,5q�6@   B@سعر الكمية المباعة خلال فترة محددة:6v   �� 5r      #��[  6   $��0,5,5,5q�6@   ��6Q   �� *'%SelectedCategoryInformation.SalePrice+6�   5s      �� 5u   
   $��0 10 0 0q�6   �� 5v   
   $ 
Horizontal=�6   $��0 10 0 0q�6.   .+�5w      ��  �� IsCancel . $��Information��6E     SquareButtonStyle#��[ 6d   $	��100��6�   ��6%   �� *CloseDialog+.��5x      �� $ 
Horizontal=�6   .+�5y      �� $��
إلغاء��6!   #��[  6/   $
��10,0q�6W   6g   ,	  &MahApps.Metro.IconPacks.PackIconModern	  5z      �
  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]] 
  Kind$ Cancel=�6/   5{      5|      5}      5~      5      