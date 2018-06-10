module mod_BaseSolver
use mod_BaseSpaceSolver
use mod_BaseTimeSolver
implicit none

!---------
! 抽象类 |
!---------
type, abstract, public :: BaseSolver

contains

    procedure(abs_time_solver_init),  deferred :: time_solver_init
    procedure(abs_space_solver_init), deferred :: space_solver_init
	procedure(abs_print_class_msg),   deferred :: print_class_msg
    procedure(abs_some_algorithm),    deferred :: some_algorithm

end type BaseSolver
!=========

!-----------------------
! 定义抽象类方法的接口 |
!-----------------------  
abstract interface

	subroutine abs_time_solver_init( this, time_solver )
	import :: BaseSolver, BaseTimeSolver
	implicit none
		class(BaseSolver), intent(inout) :: this
		class(BaseTimeSolver), target, intent(in) :: time_solver
			
	end subroutine abs_time_solver_init
	
	
	subroutine abs_space_solver_init( this, space_solver )
	import :: BaseSolver, BaseSpaceSolver
	implicit none
		class(BaseSolver), intent(inout) :: this
		class(BaseSpaceSolver), target, intent(in) :: space_solver
			
	end subroutine abs_space_solver_init
	
	
	subroutine abs_print_class_msg( this )
	import :: BaseSolver
	implicit none
		class(BaseSolver), intent(inout) :: this
			
	end subroutine abs_print_class_msg
	
	
	subroutine abs_some_algorithm( this )
	import :: BaseSolver
	implicit none
		class(BaseSolver), intent(inout) :: this
			
	end subroutine abs_some_algorithm

end interface    
    
    
end module