   M S B A M L   `   `   `  ���� @  <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null-clr-namespace:Sales.HelpersSales.Helpers  U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls fCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs 0    *Sales.Views.SupplyViews.SupplyRecallDialog   'Helpersclr-namespace:Sales.Helpers  HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     WdialogsCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     R NMahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null=	iconPacks-http://metro.mahapps.com/winfx/xaml/iconpacks  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  4  .MahApps.Metro.Controls.Dialogs.BaseMetroDialog    Title$%  مرتجعات الفاتورة��$��RightToLeft=�8  2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register �� .����  � 	Resources  �� MergedDictionaries �� Source��  �� $ ..\..\Skins\MainSkin.xaml?�%    .+��� -   $	��pnl�� �� Orientation$ 
Horizontal=�$	��0,5q�.+���    TextBlockStyle#��[  $��Center=�$	��5,0q�
الصنف�� -   $��First�� �� 
IsEditable . $	��5,0q�$	��180�� �� SelectedValuePath$ 
CategoryID�� �� DisplayMemberPath$ Category��  ComboBoxStyle#��[ "   Sales.Helpers.FocusExtension	   	IsFocused	 �� *	IsFocused+���� *
Categories+
 �� SelectedValue
 �� *NewRecall.CategoryID+ �� SelectedItem �� *	NewRecall+ �� UpdateSourceTrigger$ PropertyChanged=��� #��[  $��Center=�$	��5,0q�التاريخ(  "System.Windows.Controls.DatePicker  $	��100��$	��5,0q�  DatePickerStyle#��[    SelectedDate �� *NewRecall.Date+$ PropertyChanged=�*  $MahApps.Metro.Controls.NumericUpDown  {�.     HideUpDownButtons . $
��Left=�$	��5,0q�$��80��$��40��$��16(�$
��Bold"�$��Veranda)�   Minimum$
 0.01Q�$��Center=�*  $MahApps.Metro.Controls.TextBoxHelper   UseFloatingWatermark .    AutoWatermark .    	Watermark$ التكلفة��   Value �� *NewRecall.Cost+" �� ValidatesOnNotifyDataErrors . $ PropertyChanged=�   . $
��Left=�$	��5,0q�$��80��$��40��$��16(�$
��Bold"�$��Veranda)�$
 0.01Q�$��Center=� .  . $ الكمية�� �� *NewRecall.Qty+ . $ PropertyChanged=� J� InputBindings �� 
 �� Key$ Enter�� �� Command ��  �� Path$ 	AddRecall��� -   $	��btn��$��0q�  MetroCircleButtonStyle#���  $	��5,0q� +� FocusedElement ��  �� ElementName$ First������ *	AddRecall+.��,  &MahApps.Metro.IconPacks.PackIconEntypo  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconEntypoKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]]   Kind$ 	AddToList=�$��30��$��30��&	   System.Windows.Controls.DataGrid	  $	��0,5q�$	��600��$	��200�� 	  HeadersVisibility$	 All=� 	  SelectionUnit$ FullRow=� J� IsManipulationEnabled .   	  CanUserDeleteRows .    	  CanUserAddRows  .  ! 	  AutoGenerateColumns! .  ���� *SupplyRecalls+ �� *SelectedRecall+" 	  Columns" 0
  *System.Windows.Controls.DataGridTextColumn
  ,  &System.Windows.Controls.DataGridColumn#   
IsReadOnly# . $   Header$$ التاريخ��%   Width5  /System.Windows.Controls.DataGridLengthConverter$% 1*   ColumnHeaderStyle&   HeaderStyle#& [ 1  +System.Windows.Controls.DataGridBoundColumn'   Binding' �� *Date+( �� StringFormat$( {0:yyyy/MM/dd }��
  # . $$ 
الصنف��$% 3* #& [ ' �� *
Category+
  # . $$ التكلفة��$% 1* #& [ ' �� *Cost+
  # . $$ الكمية��$% 1* #& [ ' �� *Qty+
  # . $!$ إجمالى التكلفة��$% 1* #& [ ' �� *	CostTotal+$( {0:0.00;(0.00)}��4  .System.Windows.Controls.DataGridTemplateColumn  $$ حذف��$
% 0.5* #& [ )   CellTemplate) �� .R��� #���  $��0q����� *DataContext.DeleteRecall+* �� RelativeSource* �� + �� AncestorType1  +MahApps.Metro.Controls.Dialogs.CustomDialog"+  .��.  (MahApps.Metro.IconPacks.PackIconMaterial  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconMaterialKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]],   Kind$, DeleteForever=��� $	��0,5q�$ 
Horizontal=�$��Center=�$��Bottom=�.+��� - �� IsCancel- . $��Recall��  SquareButtonStyle#��[ $	��100��$
��10,0q����� *CloseDialog+.���� $ 
Horizontal=�.+��� $��
إلغاء��#��[  $
��10,0q�,  &MahApps.Metro.IconPacks.PackIconModern  �  �ControlzEx.PackIconBase`1[[MahApps.Metro.IconPacks.PackIconModernKind, MahApps.Metro.IconPacks, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null]].   Kind$. Cancel=�