module mod_MyTimeSolver
use mod_BaseTimeSolver
implicit none

!---------------
! 继承自抽象类 |
!---------------
type, extends(BaseTimeSolver), public :: MyTimeSolver

	character(len=180), private :: class_msg = ''

contains

    procedure :: set_class_msg   => m_set_class_msg
    procedure :: get_class_msg   => m_get_class_msg
    procedure :: time_algorithm  => m_time_algorithm

end type MyTimeSolver
!===============

	private :: m_set_class_msg
	private :: m_get_class_msg
	private :: m_time_algorithm

contains
!-----------------------
! 继承类方法的具体实现 |
!-----------------------

	subroutine m_set_class_msg( this, msg )
	implicit none
		class(MyTimeSolver), intent(inout) :: this
		character(len=*), intent(in) :: msg
	
		this % class_msg = msg
	
		return
	end subroutine m_set_class_msg
	
	
	function m_get_class_msg( this ) result( msg )
	implicit none
		class(MyTimeSolver), intent(in) :: this
		
		character(len=180) :: msg
		
		msg = TRIM(ADJUSTL(this % class_msg))
	
		return
	end function m_get_class_msg
	
	
	subroutine m_time_algorithm( this )
	implicit none
		class(MyTimeSolver), intent(inout) :: this
		
		write(*, *) "... time algorithm ..."
		
		return
	end subroutine m_time_algorithm

end module