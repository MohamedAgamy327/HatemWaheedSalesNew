   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   @ <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=null?$clr-namespace:Sales.Views.StoreViewsSales.Views.StoreViews 5   	   S.clr-namespace:Sales.ViewModels.StoreViewModels Sales.ViewModels.StoreViewModels 5   	   (   "Sales.Views.StoreViews.StoreWindow   5      HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5   	   n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6views$clr-namespace:Sales.Views.StoreViews     5   	   E
viewModels.clr-namespace:Sales.ViewModels.StoreViewModels     5   	     � Title$  المخزن��5   	   $
��1000��5	   	   $
��1024��5
   	   (   "MahApps.Metro.Controls.MetroWindow   ShowTitleBar .  � WindowState$ 	Maximized=�5   	   $��RightToLeft=�5   	    � DataContext 5   	   �� *Store+   Locator �� Source# [   � 	Resources 5       �� DataType5  /Sales.ViewModels.StoreViewModels.StockViewModel-  'Sales.Views.StoreViews.StockUserControl7  1Sales.ViewModels.StoreViewModels.CompanyViewModel/  )Sales.Views.StoreViews.CompanyUserControl8  2Sales.ViewModels.StoreViewModels.CategoryViewModel0  *Sales.Views.StoreViews.CategoryUserControl@  :Sales.ViewModels.StoreViewModels.CategoryRequiredViewModel8	  2Sales.Views.StoreViews.CategoryRequiredUserControl �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ ..\..\Skins\MainSkin.xaml?�6%   %,  (��       5      *, +)(�� 2     5      *, +)(�� d     5      *, +)(�� �     5      *, +)�� 5      "  6   .R�5        5      �� 5      "  6   .R�5        5      �� 5      "  6   .R�5        5      �� 5      "  6   .R�5      	  5      5!      .��5$      � 	 � RowDefinitions	 5%   
   �� 5&      $
��1.8* �6   �� 5'      $
��8.2* �6   .+�5*   
   �� 
 �� Orientation$
 
Horizontal=�6   $��5q�6.   .+�5,      !
   MahApps.Metro.Controls.Tile
  $��Stock��6?    
  Title$ المخازن��6X    
  HorizontalTitleAlignment$ Center=�6h    
  VerticalTitleAlignment$ Center=�6�     
BlackBrush+   %MahApps.Metro.Controls.ControlsHelper   MouseOverBorderBrush# �  6�     NormalTileStyle#��[ 6�   ��6   �� *NavigateToView+5-      
  50      $��Company��6?   $ الشركات��6Z   $ Center=�6j   $ Center=�6�   # �  6�   #��[ 6�   ��6   �� *NavigateToView+51      
  53      $��Category��6?   $ الأصناف��6[   $ Center=�6k   $ Center=�6�   # �  6�   #��[ 6�   ��6   �� *NavigateToView+54      
  56      $��CategoryRequired��6?   $ النواقص��6c   $ Center=�6s   $ Center=�6�   # �  6�   #��[ 6  ��6   �� *NavigateToView+57      59      �� 5;   
   $��1��6   $	��Top=�6"   �� 5<   
   $��1��6?   ��6   �� *CurrentViewModel+6?   5=      5?      