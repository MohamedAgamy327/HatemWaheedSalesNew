   M S B A M L   `   `   `  ���� @  <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null-clr-namespace:Sales.HelpersSales.Helpers  U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls Q MWPFTextBoxAutoComplete, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null_Dclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoCompleteWPFTextBoxAutoComplete 0    *Sales.Views.SupplyViews.SupplyUpdateWindow   'Helpersclr-namespace:Sales.Helpers  HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  T	behaviorsDclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoComplete  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     (  "MahApps.Metro.Controls.MetroWindow   Language$  ar-EG� � Title$, &تعديل فاتورة مشتريات��$	��600��$
��1100�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�   ShowTitleBar .    ControlBorderBrush#���   $��RightToLeft=� � DataContext �� *SupplyUpdate+  Locator �� Source# [  � 	Resources  �� MergedDictionaries	 �� Source��  �� $	 ..\..\Skins\MainSkin.xaml?�%    .��� 
 � RowDefinitions
 �� $��1* ��� $
��1.5* ��� $��4* ��� $��2* ��� $��1* �.+���  �� Orientation$ 
Horizontal=�$��0��.+���   TextBlockAddUpdateStyle#��[ $	��5,0q�العميل�� $	��300��$	��5,0q�{�.    TextBoxStyle#��[ ���� *SelectedSupply.Client.Name+1  +WPFTextBoxAutoComplete.AutoCompleteBehavior   AutoCompleteItemsSource �� *PlacesSuggestions+�� #��[ $	��5,0q�التاريخ(  "System.Windows.Controls.DatePicker  $	��5,0q�$��Center=�$	��300��  DatePickerStyle#��[    SelectedDate �� *SelectedSupply.Date+�� -   $
��pnl1��$ 
Horizontal=�$��1��.+��� $��0q�  MetroCircleButtonStyle#���  $	��5,0q� +� FocusedElement ��  �� ElementName$ 	CostFocus������ *BrowseCategories+.��.  (MahApps.Metro.IconPacks.PackIconOcticons  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconOcticonsKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ Browser=�$��40��$��40���� $	��5,0q�$	��200��$��40��$��16(�$
��Bold"�$��calibri)�{�.  $��Center=�*  $MahApps.Metro.Controls.TextBoxHelper   UseFloatingWatermark .    AutoWatermark .    	Watermark$ الشركة������ *NewSupplyCategory.Company+" �� ValidatesOnNotifyDataErrors .  �� UpdateSourceTrigger$ PropertyChanged=��� $	��5,0q�$	��300��$��40��$��16(�$
��Bold"�$��calibri)�{�.  $��Center=� .  . $ 
الصنف������ *NewSupplyCategory.Category+ . $ PropertyChanged=�*  $MahApps.Metro.Controls.NumericUpDown  -   $��	CostFocus��   HideUpDownButtons . $
��Left=�$	��5,0q�$	��120��$��40��$��16(�$
��Bold"�$��Veranda)�   Minimum$
 0.01Q�$��Center=� .  . $ التكلفة��   Value �� *NewSupplyCategory.Cost+ . $ PropertyChanged=� J� InputBindings �� 
 �� Key$ Enter�� �� Command ��  �� Path$ 	AddToBill�   . $
��Left=�$	��5,0q�$	��120��$��40��$��16(�$
��Bold"�$��Veranda)�$
 0.01Q�$��Center=� .  . $ الكمية�� �� *NewSupplyCategory.Qty+ . $ PropertyChanged=� �� $ Enter�� �� $ 	AddToBill�   . $
��Left=�$	��5,0q�$	��120��$��40��$��16(�$
��Bold"�$��Veranda)�$ 0Q�$��Center=� .  . $ 
السعر�� �� *NewSupplyCategory.Price+ . $ PropertyChanged=� �� $ Enter�� �� $ 	AddToBill��� -   $
��btn1��$��0q�#���  $	��5,0q����� *	AddToBill+.��,  &MahApps.Metro.IconPacks.PackIconEntypo  �	  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconEntypoKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]] 	  Kind$ 	AddToList=�$��40��$��40��� $��2�� � ColumnDefinitions �� $��8* ��� $��2* �.+�&
   System.Windows.Controls.DataGrid
  $��0��$	��5,0q� 
  HeadersVisibility$	 All=�  
  SelectionUnit$  FullRow=�! J� IsManipulationEnabled! .  " 
  CanUserDeleteRows" .  # 
  CanUserAddRows# .  $ 
  AutoGenerateColumns$ .  ���� *SupplyCategories+% �� SelectedItem% �� *SelectedSupplyCategory+& 
  Columns& 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn'   
IsReadOnly' . (   Header$( الشركة��)   Width5  /System.Windows.Controls.DataGridLengthConverter$
) 1.5*   ColumnHeaderStyle*   HeaderStyle#* [ 1  +System.Windows.Controls.DataGridBoundColumn+   Binding+ �� *	Company+  ' . $( 
الصنف��$) 3* #* [ + �� *
Category+  ' . $( التكلفة��$) 1* #* [ + �� *Cost+  ' . $( الكمية��$) 1* #* [ + �� *Qty+  ' . $( الإجمالى��$) 1* #* [ + �� *	CostTotal+, �� StringFormat$, {0:0.00;(0.00)}��4  .System.Windows.Controls.DataGridTemplateColumn  $( 
تعديل��$) 0.75* #* [ -   CellTemplate- �� .R��� #���  $��0q����� *DataContext.Edit+. �� RelativeSource. �� / �� AncestorType"/  .��  $
 Edit=�  $( حذف��$) 0.75* #* [ - �� .R��� #���  $��0q����� *DataContext.Delete+. �� "/  .��.  (MahApps.Metro.IconPacks.PackIconMaterial  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconMaterialKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]0   Kind$0 DeleteForever=�����   MetroDataGrid1 �� BasedOn#1 [ 2 �� 
TargetType"2 
 .��� 3 �� Property 3 �@
 AlternatingRowBackground  GrayBrush104 �� Value#4 �  
  $��1��$	��5,0q�$	 All=�$  FullRow=�$5 �� IsSynchronizedWithCurrentItem$
5 TrueY�! .  " .  # .  $ .  ���� *
OldCosts+% �� *SelectedOldCost+ d� 6 d� MouseAction$6 LeftDoubleClicke� �� *
SelectCost+7 �� CommandParameter7 �� *	OldCosts/+&   ' . $( التكلفة��$) 0.75* #* [ + �� *Cost+  $( اختيار��$
) 0.5* #* [ - �� .R��� #���  $��0q����� *DataContext.SelectCost+. �� "/  .��  $0 SelectInverse=����� #1 [ "2 
 .���  3 �@
 AlternatingRowBackground#4 �  � $��3��
 �� $��1* ��� $��1* � �� $��1* ��� $��2* ��� $��1* ��� $��2* ��� $��1* ��� $��2* �.+��� $��0��$��0��#��[ إجمالى التكلفة  -   $
��Cost��$��0��$��1��$	��5,0q�{�.  $	��200�� 	 NumericUpDownStyle#��[	  �� *SelectedSupply.Cost+ . $ PropertyChanged=��� #��[ $��0��$��2��المدفوع نقداً  -   $��CashPaid��$ 0Q�$��0��$��3��$	��200��#��[	  �� *SelectedSupply.CashPaid+ . $ PropertyChanged=��� #��[ $��0��$��4��
الخصم  -   $��DiscountPaid��$ 0Q�$��0��$��5��$	��200��#��[	  �� *SelectedSupply.DiscountPaid+ . $ PropertyChanged=��� #��[ $��1��$��0��المتبقى  $��1��$��1��{�.  $	��200��#��[	  �� *SelectedSupply.Change+ . $ PropertyChanged=��� #��[ $��1��$��2��الرصيد السابق  -   $��OldDebt��$��1��$��3��{�.  $	��200��#��[	  �� *SelectedSupply.OldDebt+ . $ PropertyChanged=��� #��[ $��1��$��4��إجمالى المتبقى  $��1��$��5��{�.  $	��200��#��[	  �� *SelectedSupply.NewDebt+ . $ PropertyChanged=��� $��Center=�$��Center=�$ 
Horizontal=�$��5��.+��� -   $
��btn2��$��30�� 
 SquareButtonStyle#��[
 $	��100������ *Save+ �� $ Focus��.���� $ 
Horizontal=�.+��� $��حفظ��  TextBlockStyle#��[ $
��10,0q�,  &MahApps.Metro.IconPacks.PackIconModern  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]8   Kind$
8 Save=�