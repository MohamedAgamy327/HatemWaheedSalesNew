   M S B A M L   `   `   `  ���� @  <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null-clr-namespace:Sales.HelpersSales.Helpers  U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls fCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs Q MWPFTextBoxAutoComplete, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null_Dclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoCompleteWPFTextBoxAutoComplete 1    +Sales.Views.StoreViews.CategoryUpdateDialog   'Helpersclr-namespace:Sales.Helpers  HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     Z	behaviorsDclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoComplete     R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  4  .MahApps.Metro.Controls.Dialogs.BaseMetroDialog    Title$  تعديل صنف��$��RightToLeft=�8  2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register �� .���� -   $	��pnl��$��10q� � 	Resources  �� MergedDictionaries �� Source��  �� $ ..\..\Skins\MainSkin.xaml?�%    .+���    TextBlockStyle#��[  $	��0,5q�المخزن��  �� SelectedValuePath$ ID�� �� DisplayMemberPath$
 Name�� �� 
IsEditable .   ComboBoxStyle#��[ ���� *Stocks+ �� SelectedItem �� *SelectedStock+	 �� SelectedValue	 �� *SelectedCategory.StockID+"
 �� ValidatesOnNotifyDataErrors
 .  �� UpdateSourceTrigger$ PropertyChanged=��� #��[  $	��0,5q�الشركة�� {�.  $ ID��$
 Name�� . #��[ ���� *	Companies+ �� *SelectedCompany+	 �� *SelectedCategory.CompanyID+
 . $ PropertyChanged=��� #��[  $	��0,5q�
الصنف�� {�.    TextBoxStyle#��[ ���� *SelectedCategory.Name+
 . $ PropertyChanged=��� #��[  $	��0,5q�
اللون�� #��[ ���� *SelectedCategory.Color+
 . $ PropertyChanged=�1  +WPFTextBoxAutoComplete.AutoCompleteBehavior   AutoCompleteItemsSource �� *ColorsSuggestions+�� #��[  $	��0,5q� رصيد بداية المدة*  $MahApps.Metro.Controls.NumericUpDown     Minimum$ 0Q�  NumericUpDownStyle#��[ {��� *	CanEdit+   Value �� *SelectedCategory.QtyStart+
 . $ PropertyChanged=� J� InputBindings �� 
 �� Key$ Enter�� �� Command ��  �� Path$ Update��� #��[  $	��0,5q�التكلفة  $ 0Q�#��[  �� *SelectedCategory.Cost+
 . $ PropertyChanged=� �� $ Enter�� �� $ Update��� #��[  $	��0,5q�
السعر  $ 0Q�#��[ "   Sales.Helpers.FocusExtension   	IsFocused �� *	IsFocused+ �� *SelectedCategory.Price+
 . $ PropertyChanged=� �� $ Enter�� �� $ Update��� #��[  $	��0,5q�حد الطلب  $ 0Q�#��[  �� *SelectedCategory.RequestLimit+
 . $ PropertyChanged=� �� $ Enter�� �� $ Update�)  #MahApps.Metro.Controls.ToggleSwitch  $��Center=�   OnLabel$ ملغى��   OffLabel$ غير ملغى��  ToggleSwitchStyle#��[    	IsChecked �� *SelectedCategory.Isarchived+�� $��0 15 0 0q���  �� Orientation$ 
Horizontal=�$��0 10 0 0q�.+��� -   $	��btn��  SquareButtonStyle#��[ $	��100������ *Update+.���� $ 
Horizontal=�.+��� $��
تحديث��#��[  $
��10,0q�.  (MahApps.Metro.IconPacks.PackIconMaterial  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconMaterialKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Update=���  �� IsCancel . $��Update��#��[ $	��100��$
��10,0q����� *CloseDialog+.���� $ 
Horizontal=�.+��� $��
إلغاء��#��[  $
��10,0q�,	  &MahApps.Metro.IconPacks.PackIconModern	  �
  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]] 
  Kind$ Cancel=�