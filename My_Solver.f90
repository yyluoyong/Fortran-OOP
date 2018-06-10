module mod_MySolver
use mod_BaseSolver
use mod_BaseSpaceSolver
use mod_BaseTimeSolver
implicit none

!---------------
! 继承自抽象类 |
!---------------
type, extends(BaseSolver), public :: MySolver

	character(len=180), private :: class_msg = ''
	class(BaseTimeSolver),  pointer, private :: me_time_solver
	class(BaseSpaceSolver), pointer, private :: me_space_solver

contains
 
    procedure :: time_solver_init  => m_time_solver_init
    procedure :: space_solver_init => m_space_solver_init
	procedure :: print_class_msg   => m_print_class_msg
    procedure :: some_algorithm    => m_some_algorithm 

end type MySolver
!===============

	private :: m_time_solver_init
	private :: m_space_solver_init
	private :: m_print_class_msg
	private :: m_some_algorithm

contains
!-----------------------
! 继承类方法的具体实现 |
!-----------------------

	subroutine m_time_solver_init( this, time_solver )
	implicit none
		class(MySolver), intent(inout) :: this
		class(BaseTimeSolver), target, intent(in) :: time_solver
			
		this % me_time_solver => time_solver
			
		return
	end subroutine m_time_solver_init
	
	
	subroutine m_space_solver_init( this, space_solver )
	implicit none
		class(MySolver), intent(inout) :: this
		class(BaseSpaceSolver), target, intent(in) :: space_solver
		
		this % me_space_solver => space_solver
		
		return
	end subroutine m_space_solver_init
	
	
	subroutine m_print_class_msg( this )
	implicit none
		class(MySolver), intent(inout) :: this
		
		this % class_msg =                                          &
			TRIM(ADJUSTL(this % me_time_solver % get_class_msg()))  &
			// ' + ' //                                             &
			TRIM(ADJUSTL(this % me_space_solver % get_class_msg()))
		
        write(*, *) "CLASS Msg:"
		write(*, *) TRIM(ADJUSTL(this % class_msg))
        write(*, *)
		
		return
	end subroutine m_print_class_msg
	
	
	subroutine m_some_algorithm( this )
	implicit none
		class(MySolver), intent(inout) :: this
		
        write(*, *) "Some algorithm:"
		call this % me_time_solver % time_algorithm()
		call this % me_space_solver % space_algorithm()
        write(*, *)
		
		return
	end subroutine m_some_algorithm
    
end module