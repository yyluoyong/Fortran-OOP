module mod_BaseTimeSolver

!---------
! 抽象类 |
!---------
type, abstract, public :: BaseTimeSolver

contains

    procedure(abs_set_class_msg), deferred :: set_class_msg
    procedure(abs_get_class_msg), deferred :: get_class_msg
    procedure(abs_time_algorithm), deferred :: time_algorithm

end type BaseTimeSolver
!=========

!-----------------------
! 定义抽象类方法的接口 |
!-----------------------  
abstract interface

	subroutine abs_set_class_msg( this, msg )
	import BaseTimeSolver
	implicit none
		class(BaseTimeSolver), intent(inout) :: this
		character(len=*), intent(in) :: msg
			
	end subroutine abs_set_class_msg
	
	
	function abs_get_class_msg( this ) result( msg )
	import BaseTimeSolver
	implicit none
		class(BaseTimeSolver), intent(in) :: this
		
		character(len=180) :: msg
	
	end function abs_get_class_msg
	
	
	subroutine abs_time_algorithm( this )
	import BaseTimeSolver
	implicit none
		class(BaseTimeSolver), intent(inout) :: this
			
	end subroutine abs_time_algorithm

end interface
	

end module