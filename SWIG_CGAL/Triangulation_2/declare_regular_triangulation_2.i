#ifndef SWIG_CGAL_TRIANGULATION_2_DECLARE_REGULAR_TRIANGULATION_2_I
#define SWIG_CGAL_TRIANGULATION_2_DECLARE_REGULAR_TRIANGULATION_2_I

%import "declare_triangulation_2.i"


//Expose a Regular triangulation_2
// --EXPOSEDNAME is the name of the class exposed by SWIG
// --CLASSNAME_PREFIX is the prefixed of the final class exposed by SWIG (different from EXPOSEDNAME if used for a base class instantiation)
// --CPPTYPE is the c++ type of the triangulation
%define Declare_regular_triangulation_2_internal(EXPOSEDNAME,CLASSNAME_PREFIX,CPPTYPE)
  Declare_triangulation_2_internal(Internal_Triangulation_2_##EXPOSEDNAME,CLASSNAME_PREFIX,CPPTYPE,Weighted_point_2,CGAL::Tag_true)

  Iterator_for_java(CGAL_Hidden_vertices_iterator,CLASSNAME_PREFIX##_Vertex_handle,import CGAL.Kernel.Weighted_point_2;)
  %template(CLASSNAME_PREFIX##_Hidden_vertices_iterator) CGAL_Hidden_vertices_iterator<CPPTYPE,CGAL_Vertex_handle<CPPTYPE,Weighted_point_2> >;

  %typemap(javaimports)          Regular_triangulation_2_wrapper%{import CGAL.Kernel.Weighted_point_2; import CGAL.Kernel.Oriented_side; import java.util.Iterator; import java.util.Collection;%}
  %template(EXPOSEDNAME)         Regular_triangulation_2_wrapper<CPPTYPE,CGAL_Vertex_handle<CPPTYPE,Weighted_point_2>,CGAL_Face_handle<CPPTYPE,Weighted_point_2> >;  
%enddef


//Expose a Regular_triangulation_2
// --CLASSNAME  is the name of the class exposed by SWIG
// --CPPTYPE is the c++ type of the triangulation
%define Declare_regular_triangulation_2(CLASSNAME,CPPTYPE)
  Declare_regular_triangulation_2_internal(CLASSNAME,CLASSNAME,CPPTYPE)
%enddef

#endif //SWIG_CGAL_TRIANGULATION_2_DECLARE_REGULAR_TRIANGULATION_2_I