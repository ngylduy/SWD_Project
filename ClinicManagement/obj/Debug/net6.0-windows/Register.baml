   M S B A M L   `   `   `  ����K  GClinicManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ClinicManagementClinicManagement  5   	       ClinicManagement.Register   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:ClinicManagement     5   	     � Title$  Register��5   	   $	��450��6   $	��800��6'   .��5	      � .+�5
   
   �� .+�5      �� -   5         ��Name$ lbName��5      $
��Name��6$   $��0 10 0 0q�63   $
��Bold"�6E   $	��300��6W   �� 5      -   5         ��Name$ txtName��5      $��0 0 0 0q�6'   $��Stretch=�68   $	��300��6V   $	��0 3q�6b   �� 5      $��Gender��6   $	��300��6%   $��0 10 0 0q�61   $
��Bold"�6C   �� 5      $	��300��6    �� Orientation$ 
Horizontal=�6%   .+�5      	� -   5         	�Name$ rbMale��5   -   $
��Male��6    d� 	IsChecked$
 TrueY�6=   	� 5      -   5        $ rbFemale��5   /   $��Female��6   $��10,0,0,0q�6A   5      �� 5      $��Date of Birth��6   $	��300��6,   $��0 10 0 0q�68   $
��Bold"�6J   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ dtpDOB��5      $	��300��6)   �� 5      -   5        $ lbPhone��5      $��Phone Number��6%   $��0 10 0 0q�6<   $
��Bold"�6N   $	��300��6`   �� 5      -   5        $ txtPhone��5      $��0 0 0 0q�6(   $��Stretch=�69   $	��300��6W   $	��0 3q�6c   �� 5      -   5        $ 	lbAddress��5      $��Address��6'   $��0 10 0 0q�69   $
��Bold"�6K   $	��300��6]   �� 5      -	   5        $ 
txtAddress��5      $��0 0 0 0q�6*   $��Stretch=�6;   $	��300��6Y   $	��0 3q�6e   �� 5      -
   5        $ 
lbPassword��5      $��Password��6(   $��0 10 0 0q�6;   $
��Bold"�6M   $	��300��6_   �� 5      -   5        $ txtPassword��5      $��0 0 0 0q�6+   $��Stretch=�6<   $	��300��6Z   $	��0 3q�6f   �� 5       -   5         ��Name$ btnRegister��5       $��Register��6*   $��90��6=   $��3q�6H   $��15q�6T   $��2,1,1,1q�5!      6/   5"      5#      5$      