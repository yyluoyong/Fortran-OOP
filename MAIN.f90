PROGRAM MAIN
use mod_MySolver
use mod_MyTimeSolver
use mod_MySpaceSolver
implicit none

    type(MySolver), pointer :: me_solver
    
    type(MyTimeSolver), pointer :: me_time_solver
    type(MySpaceSolver), pointer :: me_space_solver
    
    type(MyTimeSolver) :: test_time_solver
    
    
    call test_time_solver % set_class_msg('Hello World!')
    write(*, *) TRIM(ADJUSTL(test_time_solver % get_class_msg()))
    write(*, *) 
    
    allocate( me_solver )
    allocate( me_time_solver )
    allocate( me_space_solver )

    call me_time_solver % set_class_msg('time solver A')
    call me_space_solver % set_class_msg('space solver B')
    
    call me_solver % time_solver_init( me_time_solver )
    call me_solver % space_solver_init( me_space_solver )
    
    call me_solver % print_class_msg()
    
    call me_solver % some_algorithm()

END PROGRAM