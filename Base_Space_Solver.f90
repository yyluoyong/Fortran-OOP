module mod_BaseSpaceSolver

!---------
! 抽象类 |
!---------
type, abstract, public :: BaseSpaceSolver

contains

    procedure(abs_set_class_msg), deferred :: set_class_msg
    procedure(abs_get_class_msg), deferred :: get_class_msg
    procedure(abs_space_algorithm), deferred :: space_algorithm

end type BaseSpaceSolver
!=========

!-----------------------
! 定义抽象类方法的接口 |
!-----------------------  
abstract interface

	subroutine abs_set_class_msg( this, msg )
	import BaseSpaceSolver
	implicit none
		class(BaseSpaceSolver), intent(inout) :: this
		character(len=*), intent(in) :: msg
			
	end subroutine abs_set_class_msg
	
	
	function abs_get_class_msg( this ) result( msg )
	import BaseSpaceSolver
	implicit none
		class(BaseSpaceSolver), intent(in) :: this
		
		character(len=180) :: msg
	
	end function abs_get_class_msg
	
	
	subroutine abs_space_algorithm( this )
	import BaseSpaceSolver
	implicit none
		class(BaseSpaceSolver), intent(inout) :: this
			
	end subroutine abs_space_algorithm

end interface
	

end module