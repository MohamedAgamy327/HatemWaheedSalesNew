   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   @ <Sales, Version=0.0.0.1, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Sales.Views.SpendingViewsSales.Views.SpendingViews 5   	   Y1clr-namespace:Sales.ViewModels.SpendingViewModels#Sales.ViewModels.SpendingViewModels 5   	   .   (Sales.Views.SpendingViews.SpendingWindow   5      HControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35n jSAPBusinessObjects.WPF.ViewerShared, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   9views'clr-namespace:Sales.Views.SpendingViews     5   	   H
viewModels1clr-namespace:Sales.ViewModels.SpendingViewModels     5   	     � Title$  المصاريف��5   	   $
��1000��5	   	   $
��1024��5
   	   (   "MahApps.Metro.Controls.MetroWindow   ShowTitleBar .  � WindowState$ 	Maximized=�5   	   $��RightToLeft=�5   	    � DataContext 5   	   �� *
Spending+   Locator �� Source# [   � 	Resources 5       �� DataTypeB  <Sales.ViewModels.SpendingViewModels.SpendingDisplayViewModel:  4Sales.Views.SpendingViews.SpendingDisplayUserControlA  ;Sales.ViewModels.SpendingViewModels.SpendingReportViewModel9  3Sales.Views.SpendingViews.SpendingReportUserControl �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ ..\..\Skins\MainSkin.xaml?�6%   %�   (��       5      *, +)(�� 2     5      *, +)�� 5      "  6   .R�5        5      �� 5      "  6   .R�5        5      5      .��5      � 	 � RowDefinitions	 5   
   �� 5       $
��1.8* �6   �� 5!      $
��8.2* �6   .+�5$   
   �� 
 �� Orientation$
 
Horizontal=�6   $��5q�6.   .+�5&      !   MahApps.Metro.Controls.Tile  $��SpendingDisplay��6?      Title$ 
العرض��6b      HorizontalTitleAlignment$ Center=�6p      VerticalTitleAlignment$ Center=�6�     
BlackBrush+   %MahApps.Metro.Controls.ControlsHelper   MouseOverBorderBrush# �  6�     NormalTileStyle#��[ 6   ��6   �� *NavigateToView+5'        5)      $��SpendingReport��6?   $ التقارير��6a   $ Center=�6r   $ Center=�6�   # �  6�   #��[ 6  ��6   �� *NavigateToView+5*      5,      �� 5.   
   $��1��6   $	��Top=�6"   �� 5/   
   $��1��6?   ��6   �� *CurrentViewModel+6?   50      52      