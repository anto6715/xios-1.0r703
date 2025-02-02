MODULE IDATA
   USE, INTRINSIC :: ISO_C_BINDING
   USE ICONTEXT
   INTERFACE ! Ne pas appeler directement/Interface FORTRAN 2003 <-> C99
      SUBROUTINE cxios_init_server() BIND(C)
      END SUBROUTINE cxios_init_server
     SUBROUTINE cxios_init_client(client_id, len_client_id, f_local_comm, f_return_comm) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: client_id
         INTEGER (kind = C_INT) , VALUE :: len_client_id
         INTEGER (kind = C_INT) :: f_local_comm
         INTEGER (kind = C_INT) :: f_return_comm
      END SUBROUTINE cxios_init_client
      SUBROUTINE cxios_context_initialize(context_id,len_context_id,f_comm) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: context_id
         INTEGER (kind = C_INT) , VALUE :: len_context_id
         INTEGER (kind = C_INT) :: f_comm
      END SUBROUTINE cxios_context_initialize
      SUBROUTINE cxios_context_is_initialized(context_id,len_context_id,initialized) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: context_id
         INTEGER (kind = C_INT) , VALUE :: len_context_id
         LOGICAL (kind = C_BOOL) :: initialized
      END SUBROUTINE cxios_context_is_initialized
       SUBROUTINE cxios_context_close_definition() BIND(C)
         USE ISO_C_BINDING
      END SUBROUTINE cxios_context_close_definition
       SUBROUTINE cxios_context_finalize() BIND(C)
         USE ISO_C_BINDING
      END SUBROUTINE cxios_context_finalize
      SUBROUTINE cxios_finalize() BIND(C)
      END SUBROUTINE cxios_finalize
      SUBROUTINE cxios_solve_inheritance() BIND(C)
      END SUBROUTINE cxios_solve_inheritance
      SUBROUTINE cxios_write_data_k81(fieldid, fieldid_size, data_k8, data_Xsize) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: fieldid
         REAL (kind = C_DOUBLE), DIMENSION(*) :: data_k8
         INTEGER (kind = C_INT) , VALUE :: fieldid_size
         INTEGER (kind = C_INT) , VALUE :: data_Xsize
      END SUBROUTINE cxios_write_data_k81
      SUBROUTINE cxios_write_data_k82(fieldid, fieldid_size, data_k8, data_Xsize, data_Ysize) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: fieldid
         REAL (kind = C_DOUBLE), DIMENSION(*) :: data_k8
         INTEGER (kind = C_INT) , VALUE :: fieldid_size
         INTEGER (kind = C_INT) , VALUE :: data_Xsize, data_Ysize
      END SUBROUTINE cxios_write_data_k82
      SUBROUTINE cxios_write_data_k83(fieldid, fieldid_size, data_k8, data_Xsize, data_Ysize, data_Zsize) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: fieldid
         REAL (kind = C_DOUBLE), DIMENSION(*) :: data_k8
         INTEGER (kind = C_INT) , VALUE :: fieldid_size
         INTEGER (kind = C_INT) , VALUE :: data_Xsize, data_Ysize, data_Zsize
      END SUBROUTINE cxios_write_data_k83
      SUBROUTINE cxios_write_data_k41(fieldid, fieldid_size, data_k4, data_Xsize) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: fieldid
         REAL (kind = C_FLOAT) , DIMENSION(*) :: data_k4
         INTEGER (kind = C_INT) , VALUE :: fieldid_size
         INTEGER (kind = C_INT) , VALUE :: data_Xsize
      END SUBROUTINE cxios_write_data_k41
      SUBROUTINE cxios_write_data_k42(fieldid, fieldid_size, data_k4, data_Xsize, data_Ysize) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: fieldid
         REAL (kind = C_FLOAT) , DIMENSION(*) :: data_k4
         INTEGER (kind = C_INT) , VALUE :: fieldid_size
         INTEGER (kind = C_INT) , VALUE :: data_Xsize, data_Ysize
      END SUBROUTINE cxios_write_data_k42
      SUBROUTINE cxios_write_data_k43(fieldid, fieldid_size, data_k4, data_Xsize, data_Ysize, data_Zsize) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: fieldid
         REAL (kind = C_FLOAT) , DIMENSION(*) :: data_k4
         INTEGER (kind = C_INT) , VALUE :: fieldid_size
         INTEGER (kind = C_INT) , VALUE :: data_Xsize, data_Ysize, data_Zsize
      END SUBROUTINE cxios_write_data_k43
      ! Binding C and Fortran interface of get_variable (icdata.cpp)
      SUBROUTINE cxios_get_variable_data_k8(vardid, varid_size, data_k8, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         REAL (kind = C_DOUBLE) :: data_k8
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_get_variable_data_k8
      SUBROUTINE cxios_get_variable_data_k4(vardid, varid_size, data_k4, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         REAL (kind = C_FLOAT) :: data_k4
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_get_variable_data_k4
      SUBROUTINE cxios_get_variable_data_int(vardid, varid_size, data_int, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         INTEGER (kind = C_INT) :: data_int
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_get_variable_data_int
      SUBROUTINE cxios_get_variable_data_logic(vardid, varid_size, data_logic, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         LOGICAL (kind = 4) :: data_logic
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_get_variable_data_logic
      SUBROUTINE cxios_get_variable_data_char(vardid, varid_size, data_char, data_size_in, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         INTEGER (kind = C_INT) , VALUE :: data_size_in
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: data_char
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_get_variable_data_char
      ! Binding C and Fortran interface of set_variable (icdata.cpp)
      SUBROUTINE cxios_set_variable_data_k8(vardid, varid_size, data_k8, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         REAL (kind = C_DOUBLE), VALUE :: data_k8
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_set_variable_data_k8
      SUBROUTINE cxios_set_variable_data_k4(vardid, varid_size, data_k4, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         REAL (kind = C_FLOAT) , VALUE :: data_k4
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_set_variable_data_k4
      SUBROUTINE cxios_set_variable_data_int(vardid, varid_size, data_int, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         INTEGER (kind = C_INT) , VALUE :: data_int
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_set_variable_data_int
      SUBROUTINE cxios_set_variable_data_logic(vardid, varid_size, data_logic, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         LOGICAL (kind = 4) , VALUE :: data_logic
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_set_variable_data_logic
      SUBROUTINE cxios_set_variable_data_char(vardid, varid_size, data_char, data_size_in, is_var_existed) BIND(C)
         USE ISO_C_BINDING
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: vardid
         INTEGER (kind = C_INT) , VALUE :: varid_size
         INTEGER (kind = C_INT) , VALUE :: data_size_in
         CHARACTER(kind = C_CHAR) , DIMENSION(*) :: data_char
         LOGICAL (kind = C_BOOL) :: is_var_existed
      END SUBROUTINE cxios_set_variable_data_char
   END INTERFACE
   CONTAINS ! Fonctions disponibles pour les utilisateurs.
   SUBROUTINE xios_init_server()
   IMPLICIT NONE
     CALL cxios_init_server()
   END SUBROUTINE xios_init_server
   SUBROUTINE xios_initialize(client_id, local_comm, return_comm)
   IMPLICIT NONE
   INCLUDE 'mpif.h'
   CHARACTER(LEN=*),INTENT(IN) :: client_id
   INTEGER,INTENT(IN),OPTIONAL :: local_comm
   INTEGER,INTENT(OUT),OPTIONAL :: return_comm
   INTEGER :: f_local_comm
   INTEGER :: f_return_comm
      IF (PRESENT(local_comm)) THEN
        f_local_comm=local_comm
      ELSE
        f_local_comm = MPI_COMM_NULL
      ENDIF
      CALL cxios_init_client(client_id,LEN(client_id),f_local_comm,f_return_comm)
      IF (PRESENT(return_comm)) return_comm=f_return_comm
   END SUBROUTINE xios_initialize
   SUBROUTINE xios_context_initialize(context_id,comm)
   IMPLICIT NONE
   CHARACTER(LEN=*),INTENT(IN) :: context_id
   INTEGER, INTENT(IN) :: comm
      CALL cxios_context_initialize(context_id,LEN(context_id),comm)
    END SUBROUTINE xios_context_initialize
   LOGICAL FUNCTION xios_context_is_initialized(context_id)
   USE ISO_C_BINDING
   IMPLICIT NONE
   CHARACTER(LEN=*),INTENT(IN) :: context_id
   LOGICAL(KIND=C_BOOL) :: is_init
      CALL cxios_context_is_initialized(context_id, LEN(context_id), is_init)
      xios_context_is_initialized = is_init
    END FUNCTION xios_context_is_initialized
   SUBROUTINE xios_finalize
   IMPLICIT NONE
      CALL cxios_finalize
    END SUBROUTINE xios_finalize
   SUBROUTINE xios_close_context_definition()
   IMPLICIT NONE
      CALL cxios_context_close_definition()
   END SUBROUTINE xios_close_context_definition
   SUBROUTINE xios_context_finalize()
   IMPLICIT NONE
      CALL cxios_context_finalize()
   END SUBROUTINE xios_context_finalize
   SUBROUTINE xios_solve_inheritance()
   IMPLICIT NONE
      CALL cxios_solve_inheritance()
   END SUBROUTINE xios_solve_inheritance
   SUBROUTINE xios_send_field_r8_1d(fieldid, data1d_k8)
   IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: fieldid
      REAL (kind = 8), DIMENSION(*), INTENT(IN) :: data1d_k8(:)
      CALL cxios_write_data_k81(fieldid, len(fieldid), data1d_k8, size(data1d_k8, 1))
   END SUBROUTINE xios_send_field_r8_1d
   SUBROUTINE xios_send_field_r8_2d(fieldid, data2d_k8)
   IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: fieldid
      REAL (kind = 8), DIMENSION(*), INTENT(IN) :: data2d_k8(:,:)
      CALL cxios_write_data_k82(fieldid, len(fieldid), data2d_k8, size(data2d_k8, 1), size(data2d_k8, 2))
   END SUBROUTINE xios_send_field_r8_2d
   SUBROUTINE xios_send_field_r8_3d(fieldid, data3d_k8)
   IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: fieldid
      REAL (kind = 8), DIMENSION(*), INTENT(IN) :: data3d_k8(:,:,:)
      CALL cxios_write_data_k83(fieldid, len(fieldid), data3d_k8, size(data3d_k8, 1), size(data3d_k8, 2), size(data3d_k8, 3))
   END SUBROUTINE xios_send_field_r8_3d
   SUBROUTINE xios_send_field_r4_1d(fieldid, data1d_k4)
   IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: fieldid
      REAL (kind = 4), DIMENSION(*), INTENT(IN) :: data1d_k4(:)
      CALL cxios_write_data_k41(fieldid, len(fieldid), data1d_k4, size(data1d_k4, 1))
   END SUBROUTINE xios_send_field_r4_1d
   SUBROUTINE xios_send_field_r4_2d(fieldid, data2d_k4)
   IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: fieldid
      REAL (kind = 4), DIMENSION(*), INTENT(IN) :: data2d_k4(:,:)
      CALL cxios_write_data_k42(fieldid, len(fieldid), data2d_k4, size(data2d_k4, 1), size(data2d_k4, 2))
   END SUBROUTINE xios_send_field_r4_2d
   SUBROUTINE xios_send_field_r4_3d(fieldid, data3d_k4)
   IMPLICIT NONE
      CHARACTER(len = *) , INTENT(IN) :: fieldid
      REAL (kind = 4), DIMENSION(*), INTENT(IN) :: data3d_k4(:,:,:)
      CALL cxios_write_data_k43(fieldid, len(fieldid), data3d_k4, size(data3d_k4, 1), size(data3d_k4, 2), size(data3d_k4, 3))
   END SUBROUTINE xios_send_field_r4_3d
   ! Get variable functions
   LOGICAL FUNCTION xios_getVar_k8(varId, data_k8)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      REAL (kind = 8) , INTENT(OUT):: data_k8
      CALL cxios_get_variable_data_k8(varId, len(varId), data_k8, val)
      xios_getVar_k8 = val
   END FUNCTION xios_getVar_k8
   LOGICAL FUNCTION xios_getVar_k4(varId, data_k4)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      REAL (kind = 4) , INTENT(OUT):: data_k4
      CALL cxios_get_variable_data_k4(varId, len(varId), data_k4, val)
      xios_getVar_k4 = val
   END FUNCTION xios_getVar_k4
   LOGICAL FUNCTION xios_getVar_int(varId, data_int)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      INTEGER , INTENT(OUT):: data_int
      CALL cxios_get_variable_data_int(varId, len(varId), data_int, val)
      xios_getVar_int = val
   END FUNCTION xios_getVar_int
   LOGICAL FUNCTION xios_getVar_logic(varId, data_logic)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      LOGICAL (kind = 4) , INTENT(OUT):: data_logic
      CALL cxios_get_variable_data_logic(varId, len(varId), data_logic, val)
      xios_getVar_logic = val
   END FUNCTION xios_getVar_logic
   LOGICAL FUNCTION xios_getVar_char(varId, data_char)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      CHARACTER(len = *) , INTENT(OUT):: data_char
      CALL cxios_get_variable_data_char(varId, len(varId), data_char, len(data_char), val)
      xios_getVar_char = val
   END FUNCTION xios_getVar_char
   ! Set variable functions
   LOGICAL FUNCTION xios_setVar_k8(varId, data_k8)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      REAL (kind = 8) , INTENT(IN) :: data_k8
      CALL cxios_set_variable_data_k8(varId, len(varId), data_k8, val)
      xios_setVar_k8 = val
   END FUNCTION xios_setVar_k8
   LOGICAL FUNCTION xios_setVar_k4(varId, data_k4)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      REAL (kind = 4) , INTENT(IN) :: data_k4
      CALL cxios_set_variable_data_k4(varId, len(varId), data_k4, val)
      xios_setVar_k4 = val
   END FUNCTION xios_setVar_k4
   LOGICAL FUNCTION xios_setVar_int(varId, data_int)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      INTEGER , INTENT(IN) :: data_int
      CALL cxios_set_variable_data_int(varId, len(varId), data_int, val)
      xios_setVar_int = val
   END FUNCTION xios_setVar_int
   LOGICAL FUNCTION xios_setVar_logic(varId, data_logic)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      LOGICAL (kind = 4) , INTENT(IN) :: data_logic
      CALL cxios_set_variable_data_logic(varId, len(varId), data_logic, val)
      xios_setVar_logic = val
   END FUNCTION xios_setVar_logic
   LOGICAL FUNCTION xios_setVar_char(varId, data_char)
   IMPLICIT NONE
      LOGICAL (kind = 1) :: val
      CHARACTER(len = *) , INTENT(IN) :: varId
      CHARACTER(len = *) , INTENT(IN) :: data_char
      CALL cxios_set_variable_data_char(varId, len(varId), data_char, len(data_char), val)
      xios_setVar_char = val
   END FUNCTION xios_setVar_char
END MODULE IDATA
