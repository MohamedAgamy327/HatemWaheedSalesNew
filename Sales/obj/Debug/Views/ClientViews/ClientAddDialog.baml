   M S B A M L   `   `   `  ����@  <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null-clr-namespace:Sales.HelpersSales.Helpers  5      U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5      Q MWPFTextBoxAutoComplete, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null_Dclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoCompleteWPFTextBoxAutoComplete 5      fCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs 5      -    'Sales.Views.ClientViews.ClientAddDialog   5      'Helpersclr-namespace:Sales.Helpers  5      HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z	behaviorsDclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoComplete     5      WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     5      R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  5	      Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5
      4  .MahApps.Metro.Controls.Dialogs.BaseMetroDialog    Title$  إضافة عميل��5      $��RightToLeft=�5      8  2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register 5      �� .��5      �� -   5        $	��pnl��5      $��10q�6    � 	Resources 5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $ ..\..\Skins\MainSkin.xaml?�6)   %    5      .+�5   
   ��    TextBlockStyle#��[  6   $	��0,5q�6<   العميل6Q   �� 5   
   -   5        $��First��5        TextBoxStyle#��[ 6  "   Sales.Helpers.FocusExtension   	IsFocused 6   �� *	IsFocused+��6W   �� *NewClient.Name+" �� ValidatesOnNotifyDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=�1  +WPFTextBoxAutoComplete.AutoCompleteBehavior   AutoCompleteItemsSource 6�   �� *NamesSuggestions+69  �� 5   
   #��[  6   $	��0,5q�6<   التليفون6S   �� 5   
   #��[ 69   ��6   �� *NewClient.Telephone+6a   �� 5   
   #��[  6   $	��0,5q�6<   الرقم الضريبى6X   �� 5   
   #��[ 69   ��6   �� *NewClient.VatNumber+6a   �� 5   
   #��[  6   $	��0,5q�6<   العنوان6R   �� 5    
   #��[ 6�   ��6   �� *NewClient.Address+ 67   �� *AddressSuggestions+6�   �� 5!   
   #��[  6   $	��0,5q�6<    رصيد بداية المدة6[   *  $MahApps.Metro.Controls.NumericUpDown  5"   
   	   Minimum$	 0Q�6!     NumericUpDownStyle#��[ 6�   
   Value
 6.   �� *AccountStart+ . $ PropertyChanged=� J� InputBindings 5#      �� 5$      
 �� Key$ Enter��6;    �� Command 6   ��  �� Path$
 Save�6;   5&      )  #MahApps.Metro.Controls.ToggleSwitch  5'   
   $��Center=�6H      OnLabel$
 له��6e      OffLabel$ عليه��6r     ToggleSwitchStyle#��[ 6�      	IsChecked 6    �� *AccountStartType+6�   �� 5)   
   $��0 15 0 0q�6   �� 5*   
    �� Orientation$ 
Horizontal=�6   $��0 10 0 0q�6.   .+�5+      �� -   5        $	��btn��5+        SquareButtonStyle#��[ 6s   $	��100��6�   ��6    �� *Save+ +� FocusedElement 69   ��  �� ElementName$ First��.��5,      �� $ 
Horizontal=�6   .+�5-      �� $��حفظ��6!   #��[  6-   $
��10,0q�6U   6e   ,  &MahApps.Metro.IconPacks.PackIconModern  5.      �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$
 Save=�6/   5/      50      �� 51       �� IsCancel . $	��Add��6E   #��[ 6\   $	��100��6�   $
��10,0q�6�   ��6%   �� *CloseDialog+.��52      �� $ 
Horizontal=�6   .+�53      �� $��
إلغاء��6!   #��[  6/   $
��10,0q�6W   6g     54      $ Cancel=�6/   55      56      57      58      5:      