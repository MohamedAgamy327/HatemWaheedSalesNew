   M S B A M L   `   `   `  ���� @  <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null-clr-namespace:Sales.HelpersSales.Helpers  U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls )    #Sales.Views.SaleViews.SaleAddWindow   'Helpersclr-namespace:Sales.Helpers  HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  f bGalaSoft.MvvmLight.Platform, Version=5.3.0.19032, Culture=neutral, PublicKeyToken=5f873c45e98af8a1-Custom http://www.galasoft.ch/mvvmlight  R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml    	 (  "MahApps.Metro.Controls.MetroWindow   Language$  ar-EG� � Title$* $إضافة فاتورة مبيعات��$	��600��$
��1000�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=�   ShowTitleBar .    ControlBorderBrush#���   $��RightToLeft=� � DataContext �� *	SaleAdd+  Locator �� Source# [  � 	Resources  �� MergedDictionaries	 �� Source��  �� $	 ..\..\Skins\MainSkin.xaml?�%    .��� 
 � RowDefinitions
 �� $��1* ��� $��1* ��� $
��1.5* ��� $��4* ��� $��2* ��� $��1* �.+���  �� Orientation$ 
Horizontal=�$��0��.+���   TextBlockAddUpdateStyle#��[ $	��5,0q�العميل�� -   $��First��$	��300��$	��5,0q� �� SelectedValuePath$ ID�� �� DisplayMemberPath$
 Name�� �� 
IsEditable .   ComboBoxStyle#��[ "   Sales.Helpers.FocusExtension   	IsFocused �� *	IsFocused+���� *	Clients+ �� SelectedItem �� *SelectedClient+ �� SelectedValue �� *NewSale.ClientID+ �� UpdateSourceTrigger$ PropertyChanged=�.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��.  (System.Windows.Interactivity.TriggerBase   Actions. /  )GalaSoft.MvvmLight.Command.EventToCommand     Command �� *GetClientAccount+�� #��[ $	��5,0q�التاريخ(  "System.Windows.Controls.DatePicker  $	��5,0q�$��Center=�$	��300��  DatePickerStyle#��[    SelectedDate �� *NewSale.Date+�� $ 
Horizontal=�$��1��.+��� #��[ $	��5,0q�المندوب�� $	��300��$	��5,0q�$ ID��$
 Name�� . #��[ ���� *Salespersons+ �� *SelectedSalesperson+ �� *NewSale.SalespersonID+$ PropertyChanged=��� -   $
��pnl1��$ 
Horizontal=�$��2��.+��� $��0q�  MetroCircleButtonStyle#���  $	��5,0q� +� FocusedElement ��  �� ElementName$ 
PriceFocus������ *BrowseCategories+.��.  (MahApps.Metro.IconPacks.PackIconOcticons  �	  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconOcticonsKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]] 	  Kind$ Browser=�$��40��$��40���� $	��5,0q�$	��120��$��40��$��16(�$
��Bold"�$��calibri)�{�.  $��Center=�*
  $MahApps.Metro.Controls.TextBoxHelper 
  UseFloatingWatermark .  
  AutoWatermark .  
  	Watermark$ الشركة������ *NewSaleCategory.Company+" �� ValidatesOnNotifyDataErrors . $ PropertyChanged=��� $	��5,0q�$	��250��$��40��$��16(�$
��Bold"�$��calibri)�{�.  $��Center=� .  . $ 
الصنف������ *NewSaleCategory.Category+ . $ PropertyChanged=�*  $MahApps.Metro.Controls.NumericUpDown  -   $��
PriceFocus��   HideUpDownButtons . $
��Left=�$	��5,0q�$	��100��$��40��$��16(�$
��Bold"�$��Veranda)�    Minimum$
  0.01Q�$��Center=� .  . $ 
السعر��!   Value! �� *NewSaleCategory.Price+ . $ PropertyChanged=�" J� InputBindings" �� 
# �� Key$# Enter��$ �� Command$ �� % �� Path$% 	AddToBill�   . $
��Left=�$	��5,0q�$	��100��$��40��$��16(�$
��Bold"�$��Veranda)�$
  0.01Q�$��Center=� .  . $ الكمية��! �� *NewSaleCategory.Qty+ . $ PropertyChanged=�" �� $# Enter��$ �� $% 	AddToBill��� -   $
��btn1��$��0q�#���  $	��5,0q����� *	AddToBill+.��,  &MahApps.Metro.IconPacks.PackIconEntypo  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconEntypoKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]&   Kind$& 	AddToList=�$��40��$��40��� $��3��' � ColumnDefinitions' �� $��8* ��� $��2* �.+�&   System.Windows.Controls.DataGrid  $��0��$	��5,0q�(   HeadersVisibility$	( All=�)   SelectionUnit$) FullRow=�* J� IsManipulationEnabled* .  +   CanUserDeleteRows+ .  ,   CanUserAddRows, .  -   AutoGenerateColumns- .  ���� *SaleCategories+ �� *SelectedSaleCategory+.   Columns. 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn/   
IsReadOnly/ . 0   Header$0 الشركة��1   Width5  /System.Windows.Controls.DataGridLengthConverter$
1 1.5*   ColumnHeaderStyle2   HeaderStyle#2 [ 1  +System.Windows.Controls.DataGridBoundColumn3   Binding3 �� *	Company+  / . $0 
الصنف��$1 3* #2 [ 3 �� *
Category+  / . $0 
السعر��$1 1* #2 [ 3 �� *Price+  / . $0 الكمية��$1 1* #2 [ 3 �� *Qty+  / . $0 الإجمالى��$
1 1.5* #2 [ 3 �� *
PriceTotal+4 �� StringFormat$4 {0:0.00;(0.00)}��4  .System.Windows.Controls.DataGridTemplateColumn  $0 
تعديل��$1 0.75* #2 [ 5   CellTemplate5 �� .R��� #���  $��0q����� *DataContext.Edit+6 �� RelativeSource6 �� 7 �� AncestorType"7  .��  $
& Edit=�  $0 حذف��$1 0.75* #2 [ 5 �� .R��� #���  $��0q����� *DataContext.Delete+6 �� "7  .��.  (MahApps.Metro.IconPacks.PackIconMaterial  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconMaterialKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]8   Kind$8 DeleteForever=�����   MetroDataGrid9 �� BasedOn#9 [ : �� 
TargetType":  .��� ; �� Property ; �@ AlternatingRowBackground  GrayBrush10< �� Value#< �    $��1��$	��5,0q�$= �� IsSynchronizedWithCurrentItem$
= TrueY�$	( All=�$) FullRow=�* .  + .  , .  - .  ���� *	OldPrices+ �� *SelectedOldPrice+" d� > d� MouseAction$> LeftDoubleClicke�$ �� *SelectPrice+? �� CommandParameter? �� *
OldPrices/+.   / . $0 
السعر��$1 1* #2 [ 3 �� *Price+  $0 اختيار��$
1 0.5* #2 [ 5 �� .R��� #���  $��0q����� *DataContext.SelectPrice+6 �� "7  .��  $8 SelectInverse=����� #9 [ ":  .���  ; �@ AlternatingRowBackground#< �  � $��4��
 �� $��1* ��� $��1* �' �� $��1* ��� $��2* ��� $��1* ��� $��2* ��� $��1* ��� $��2* �.+��� $��0��$��0��#��[ إجمالى الفاتورة  -   $��Price��$��0��$��1��$	��5,0q�{�.  $	��200�� 	 NumericUpDownStyle#��[	 ! �� *NewSale.Price+ . $ PropertyChanged=��� $��0��$��2��#��[ الرصيد السابق  -   $��OldDebt��$��0��$��3��{�.  $	��200��#��[	 ! �� *NewSale.OldDebt+ . $ PropertyChanged=��� #��[ $��0��$��4��إجمالى المطلوب  $��0��$��35��$	��200��{�.  #��[	 ! �� *NewSale.PriceTotal+$ PropertyChanged=��� #��[ $��1��$��0��المدفوع نقداً  -   $��CashPaid��$��1��$��1��$	��200��#��[	 ! �� *NewSale.CashPaid+ . $ PropertyChanged=��� #��[ $��1��$��2��
الخصم  -   $��DiscountPaid��$  0Q�$��1��$��3��$	��200��#��[	 ! �� *NewSale.DiscountPaid+ . $ PropertyChanged=��� #��[ $��1��$��4��المتبقى  $��1��$��5��{�.  $	��200��#��[	 ! �� *NewSale.NewDebt+ . $ PropertyChanged=��� $��Center=�$��Center=�$ 
Horizontal=�$��5��.+��� -	   $
��btn2��$
��10,0q�$��30��$��Client�� 
 SquareButtonStyle#��[
 $	��180������ *Save+ �� $ First��.���� $ 
Horizontal=�.+��� $$��حفظ وطباعة عادية��  TextBlockStyle#��[ $
��10,0q�,  &MahApps.Metro.IconPacks.PackIconModern  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]@   Kind$
@ Save=��� -
   $
��btn3��$
��10,0q�$��30��$��Location��#��[
 $	��180������ *Save+ �� $ First��.���� $ 
Horizontal=�.+��� $$��حفظ وطباعة مواقع��#��[ $
��10,0q�  $
@ Save=��� -   $
��btn4��$
��10,0q�$��30��$	��Vat��#��[
 $	��180������ *Save+ �� $ First��.���� $ 
Horizontal=�.+��� $&�� حفظ وطباعة ضريبية��#��[ $
��10,0q�  $
@ Save=��� $��	20,0,20,0q�#��[ ���� *Report+   $ 
MouseEnter��. 6  0System.Windows.Interactivity.InvokeCommandAction  A   CommandA �� *
ShowReport+  $ 
MouseLeave��.   A �� *
HideReport+