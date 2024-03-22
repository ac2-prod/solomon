
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-amdgcn-amd-amdhsa--gfx90a
; ModuleID = 'YAML_Element.cpp'
source_filename = "YAML_Element.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@__omp_rtl_debug_kind = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@__omp_rtl_assume_teams_oversubscription = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@__omp_rtl_assume_threads_oversubscription = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@__omp_rtl_assume_no_thread_state = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0
@__omp_rtl_assume_no_nested_parallelism = weak_odr hidden local_unnamed_addr addrspace(1) constant i32 0

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "YAML_Element.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!2 = !{i32 4, !"amdgpu_hostcall", i32 1}
!3 = !{i32 1, !"amdgpu_code_object_version", i32 500}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"openmp", i32 50}
!7 = !{i32 7, !"openmp-device", i32 50}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)"}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-amdgcn-amd-amdhsa--gfx90a

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-pc-linux-gnu-
; ModuleID = '/tmp/YAML_Element-94fc2a.bc'
source_filename = "YAML_Element.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.YAML_Element = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl" = type { %"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<YAML_Element *, std::allocator<YAML_Element *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_YAML_Element.cpp, ptr null }]

@_ZN12YAML_ElementC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_
@_ZN12YAML_ElementD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12YAML_ElementD2Ev

declare dso_local void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !7 {
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !10
  store ptr %4, ptr %0, align 8, !dbg !16, !tbaa !19
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !24
  store i64 0, ptr %5, align 8, !dbg !29, !tbaa !30
  store i8 0, ptr %4, align 8, !dbg !33, !tbaa !37
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !38
  %7 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 2, !dbg !39
  store ptr %7, ptr %6, align 8, !dbg !42, !tbaa !19
  %8 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1, !dbg !44
  store i64 0, ptr %8, align 8, !dbg !47, !tbaa !30
  store i8 0, ptr %7, align 8, !dbg !48, !tbaa !37
  %9 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, !dbg !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !dbg !50
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %10, !dbg !60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4 unwind label %10, !dbg !65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  ret void, !dbg !68

10:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %3
  %11 = landingpad { ptr, i32 }
          cleanup, !dbg !68
  %12 = load ptr, ptr %9, align 8, !dbg !69, !tbaa !74
  %.not.i.i.i = icmp eq ptr %12, null, !dbg !76
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %13, !dbg !76

13:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef nonnull %12) #14, !dbg !79
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, !dbg !86

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %10, %13
  %14 = load ptr, ptr %6, align 8, !dbg !87, !tbaa !96
  %15 = icmp eq ptr %14, %7, !dbg !97
  br i1 %15, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %16, !dbg !98

16:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %14) #14, !dbg !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, %16
  %17 = load ptr, ptr %0, align 8, !dbg !107, !tbaa !96
  %18 = icmp eq ptr %17, %4, !dbg !112
  br i1 %18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %19, !dbg !113

19:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %17) #14, !dbg !114
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, !dbg !118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %19
  resume { ptr, i32 } %11, !dbg !68
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_ZN12YAML_ElementD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !dbg !119 {
  %2 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !dbg !120, !tbaa !123
  %5 = load ptr, ptr %2, align 8, !dbg !124, !tbaa !74
  %.not = icmp eq ptr %4, %5, !dbg !125
  br i1 %.not, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, label %.lr.ph, !dbg !126

._crit_edge:                                      ; preds = %23
  %.not.i.i = icmp eq ptr %25, %24, !dbg !127
  br i1 %.not.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, label %6, !dbg !127

6:                                                ; preds = %._crit_edge
  store ptr %24, ptr %3, align 8, !dbg !132, !tbaa !123
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, !dbg !133

_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit: ; preds = %1, %._crit_edge, %6
  %.lcssa15 = phi ptr [ %24, %._crit_edge ], [ %24, %6 ], [ %4, %1 ]
  %.not.i.i.i = icmp eq ptr %.lcssa15, null, !dbg !134
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, label %7, !dbg !134

7:                                                ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa15) #14, !dbg !138
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, !dbg !141

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE5clearEv.exit, %7
  %8 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !142
  %9 = load ptr, ptr %8, align 8, !dbg !143, !tbaa !96
  %10 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 2, !dbg !148
  %11 = icmp eq ptr %9, %10, !dbg !151
  br i1 %11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %12, !dbg !152

12:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %9) #14, !dbg !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit, %12
  %13 = load ptr, ptr %0, align 8, !dbg !158, !tbaa !96
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !163
  %15 = icmp eq ptr %13, %14, !dbg !165
  br i1 %15, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %16, !dbg !166

16:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %13) #14, !dbg !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, !dbg !171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %16
  ret void, !dbg !142

.lr.ph:                                           ; preds = %1, %23
  %17 = phi ptr [ %24, %23 ], [ %5, %1 ]
  %18 = phi ptr [ %25, %23 ], [ %4, %1 ]
  %.07 = phi i64 [ %26, %23 ], [ 0, %1 ]
  %19 = getelementptr inbounds ptr, ptr %17, i64 %.07, !dbg !172
  %20 = load ptr, ptr %19, align 8, !dbg !175, !tbaa !176
  %21 = icmp eq ptr %20, null, !dbg !177
  br i1 %21, label %23, label %22, !dbg !177

22:                                               ; preds = %.lr.ph
  tail call void @_ZN12YAML_ElementD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %20) #15, !dbg !177
  tail call void @_ZdlPv(ptr noundef nonnull %20) #14, !dbg !177
  %.pre = load ptr, ptr %3, align 8, !dbg !120, !tbaa !123
  %.pre11 = load ptr, ptr %2, align 8, !dbg !124, !tbaa !74
  br label %23, !dbg !177

23:                                               ; preds = %.lr.ph, %22
  %24 = phi ptr [ %17, %.lr.ph ], [ %.pre11, %22 ], !dbg !124
  %25 = phi ptr [ %18, %.lr.ph ], [ %.pre, %22 ], !dbg !120
  %26 = add nuw i64 %.07, 1, !dbg !178
  %27 = ptrtoint ptr %25 to i64, !dbg !179
  %28 = ptrtoint ptr %24 to i64, !dbg !179
  %29 = sub i64 %27, %28, !dbg !179
  %30 = ashr exact i64 %29, 3, !dbg !179
  %31 = icmp ult i64 %26, %30, !dbg !125
  br i1 %31, label %.lr.ph, label %._crit_edge, !dbg !126, !llvm.loop !180
}

; Function Attrs: uwtable
define dso_local noundef nonnull ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !183 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !184
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1, !dbg !185
  %7 = load i64, ptr %6, align 8, !dbg !185, !tbaa !30
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str, i64 noundef 0), !dbg !192
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15, !dbg !193
  call void @_ZN12YAML_Element24convert_double_to_stringB5cxx11Ed(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, double noundef %2), !dbg !194
  %9 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16
          to label %10 unwind label %60, !dbg !195

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, !dbg !196
  store ptr %11, ptr %9, align 8, !dbg !200, !tbaa !19
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1, !dbg !202
  store i64 0, ptr %12, align 8, !dbg !205, !tbaa !30
  store i8 0, ptr %11, align 8, !dbg !206, !tbaa !37
  %13 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, !dbg !208
  %14 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 2, !dbg !209
  store ptr %14, ptr %13, align 8, !dbg !212, !tbaa !19
  %15 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 1, !dbg !214
  store i64 0, ptr %15, align 8, !dbg !217, !tbaa !30
  store i8 0, ptr %14, align 8, !dbg !218, !tbaa !37
  %16 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 2, !dbg !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !dbg !220
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %17, !dbg !225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %17, !dbg !228

17:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %10
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !231
  %19 = load ptr, ptr %16, align 8, !dbg !232, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %19, null, !dbg !235
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %20, !dbg !235

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef nonnull %19) #14, !dbg !237
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, !dbg !240

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %20, %17
  %21 = load ptr, ptr %13, align 8, !dbg !241, !tbaa !96
  %22 = icmp eq ptr %21, %14, !dbg !246
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %23, !dbg !247

23:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %21) #14, !dbg !248
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, !dbg !252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %23, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %24 = load ptr, ptr %9, align 8, !dbg !253, !tbaa !96
  %25 = icmp eq ptr %24, %11, !dbg !258
  br i1 %25, label %.body, label %26, !dbg !259

26:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %24) #14, !dbg !260
  br label %.body, !dbg !264

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %27 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, !dbg !265
  %28 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1, !dbg !266
  %29 = load ptr, ptr %28, align 8, !dbg !266, !tbaa !123
  %30 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2, !dbg !269
  %31 = load ptr, ptr %30, align 8, !dbg !269, !tbaa !270
  %.not.i = icmp eq ptr %29, %31, !dbg !271
  br i1 %.not.i, label %35, label %32, !dbg !272

32:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  store ptr %9, ptr %29, align 8, !dbg !273, !tbaa !176
  %33 = load ptr, ptr %28, align 8, !dbg !278, !tbaa !123
  %34 = getelementptr inbounds ptr, ptr %33, i64 1, !dbg !278
  store ptr %34, ptr %28, align 8, !dbg !278, !tbaa !123
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, !dbg !279

35:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %36 = load ptr, ptr %27, align 8, !dbg !280, !tbaa !74
  %37 = ptrtoint ptr %29 to i64, !dbg !287
  %38 = ptrtoint ptr %36 to i64, !dbg !287
  %39 = sub i64 %37, %38, !dbg !287
  %40 = icmp eq i64 %39, 9223372036854775800, !dbg !288
  br i1 %40, label %41, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i, !dbg !289

41:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
          to label %.noexc unwind label %60, !dbg !290

.noexc:                                           ; preds = %41
  unreachable, !dbg !290

_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %35
  %42 = ashr exact i64 %39, 3, !dbg !287
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %42, i64 1), !dbg !291
  %43 = add i64 %.sroa.speculated.i.i.i, %42, !dbg !292
  %44 = icmp ult i64 %43, %42, !dbg !293
  %45 = icmp ugt i64 %43, 1152921504606846975
  %or.cond.i.i.i = or i1 %44, %45, !dbg !294
  %46 = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %43, !dbg !294
  %.not.i.i.i = icmp eq i64 %46, 0, !dbg !295
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, !dbg !298

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %47 = shl nuw nsw i64 %46, 3, !dbg !299
  %48 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %47) #16
          to label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i unwind label %60, !dbg !304

_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %49 = phi ptr [ null, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %48, %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i ], !dbg !298
  %50 = getelementptr inbounds ptr, ptr %49, i64 %42, !dbg !305
  store ptr %9, ptr %50, align 8, !dbg !306, !tbaa !176
  %51 = icmp sgt i64 %39, 0, !dbg !309
  br i1 %51, label %52, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !317

52:                                               ; preds = %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %36, i64 %39, i1 false), !dbg !318
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !319

_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %52, %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  %53 = getelementptr inbounds ptr, ptr %50, i64 1, !dbg !320
  %.not.i17.i.i = icmp eq ptr %36, null, !dbg !321
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %54, !dbg !321

54:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %36) #14, !dbg !323
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, !dbg !326

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %54, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %49, ptr %27, align 8, !dbg !327, !tbaa !74
  store ptr %53, ptr %28, align 8, !dbg !328, !tbaa !123
  %55 = getelementptr inbounds ptr, ptr %49, i64 %46, !dbg !329
  store ptr %55, ptr %30, align 8, !dbg !330, !tbaa !270
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %32
  %56 = load ptr, ptr %4, align 8, !dbg !331, !tbaa !96
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !336
  %58 = icmp eq ptr %56, %57, !dbg !338
  br i1 %58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %59, !dbg !339

59:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef %56) #14, !dbg !340
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !345
  ret ptr %9, !dbg !345

60:                                               ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %41, %3
  %61 = landingpad { ptr, i32 }
          cleanup, !dbg !345
  br label %62, !dbg !345

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %26
  call void @_ZdlPv(ptr noundef nonnull %9) #14, !dbg !195
  br label %62, !dbg !195

62:                                               ; preds = %.body, %60
  %.pn = phi { ptr, i32 } [ %61, %60 ], [ %18, %.body ]
  %63 = load ptr, ptr %4, align 8, !dbg !346, !tbaa !96
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !351
  %65 = icmp eq ptr %63, %64, !dbg !353
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %66, !dbg !354

66:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #14, !dbg !355
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, !dbg !359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %62, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !345
  resume { ptr, i32 } %.pn, !dbg !345
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element24convert_double_to_stringB5cxx11Ed(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, double noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !360 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #15, !dbg !361
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4), !dbg !362
  %5 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !363
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %2)
          to label %_ZNSolsEd.exit unwind label %48, !dbg !364

_ZNSolsEd.exit:                                   ; preds = %3
  call void @llvm.experimental.noalias.scope.decl(metadata !368), !dbg !371
  call void @llvm.experimental.noalias.scope.decl(metadata !372), !dbg !375
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !379
  store ptr %7, ptr %0, align 8, !dbg !385, !tbaa !19, !alias.scope !388
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !389
  store i64 0, ptr %8, align 8, !dbg !392, !tbaa !30, !alias.scope !388
  store i8 0, ptr %7, align 8, !dbg !393, !tbaa !37, !alias.scope !388
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 5, !dbg !395
  %10 = load ptr, ptr %9, align 8, !dbg !395, !tbaa !401, !noalias !388
  %.not.not.i.i.i = icmp eq ptr %10, null, !dbg !404
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 3, !dbg !404
  %12 = load ptr, ptr %11, align 8, !dbg !404, !noalias !388
  %13 = icmp ugt ptr %10, %12, !dbg !404
  %.08.i.i.i = select i1 %13, ptr %10, ptr %12, !dbg !404
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null, !dbg !405
  %.not.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not5.i.i, !dbg !405
  br i1 %.not.i.i, label %26, label %14, !dbg !405

14:                                               ; preds = %_ZNSolsEd.exit
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 4, !dbg !406
  %16 = load ptr, ptr %15, align 8, !dbg !406, !tbaa !409, !noalias !388
  %17 = ptrtoint ptr %.08.i.i.i to i64, !dbg !410
  %18 = ptrtoint ptr %16 to i64, !dbg !410
  %19 = sub i64 %17, %18, !dbg !410
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %16, i64 noundef %19)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %21, !dbg !415

21:                                               ; preds = %26, %14
  %22 = landingpad { ptr, i32 }
          cleanup, !dbg !418
  %23 = load ptr, ptr %0, align 8, !dbg !419, !tbaa !96, !alias.scope !388
  %24 = icmp eq ptr %23, %7, !dbg !424
  br i1 %24, label %.body, label %25, !dbg !425

25:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %23) #14, !dbg !426
  br label %.body, !dbg !430

26:                                               ; preds = %_ZNSolsEd.exit
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !431
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %21, !dbg !432

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %26, %14
  %28 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !dbg !435
  store ptr %28, ptr %4, align 8, !dbg !435, !tbaa !440
  %29 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8, !dbg !435
  %30 = getelementptr i8, ptr %28, i64 -24, !dbg !435
  %31 = load i64, ptr %30, align 8, !dbg !435
  %32 = getelementptr inbounds i8, ptr %4, i64 %31, !dbg !435
  store ptr %29, ptr %32, align 8, !dbg !435, !tbaa !440
  %33 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8, !dbg !435
  store ptr %33, ptr %5, align 8, !dbg !435, !tbaa !440
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, !dbg !442
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %34, align 8, !dbg !443, !tbaa !440
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !443
  %36 = load ptr, ptr %35, align 8, !dbg !447, !tbaa !96
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, i32 2, !dbg !452
  %38 = icmp eq ptr %36, %37, !dbg !454
  br i1 %38, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %39, !dbg !455

39:                                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %36) #14, !dbg !456
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, !dbg !460

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %39
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %34, align 8, !dbg !461, !tbaa !440
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 7, !dbg !464
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40) #15, !dbg !464
  %41 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8, !dbg !465
  store ptr %41, ptr %4, align 8, !dbg !465, !tbaa !440
  %42 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8, !dbg !465
  %43 = getelementptr i8, ptr %41, i64 -24, !dbg !465
  %44 = load i64, ptr %43, align 8, !dbg !465
  %45 = getelementptr inbounds i8, ptr %4, i64 %44, !dbg !465
  store ptr %42, ptr %45, align 8, !dbg !465, !tbaa !440
  %46 = getelementptr inbounds %"class.std::basic_istream", ptr %4, i64 0, i32 1, !dbg !471
  store i64 0, ptr %46, align 8, !dbg !472, !tbaa !473
  %47 = getelementptr inbounds i8, ptr %4, i64 128, !dbg !475
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %47) #15, !dbg !475
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !476
  ret void, !dbg !476

48:                                               ; preds = %3
  %49 = landingpad { ptr, i32 }
          cleanup, !dbg !476
  br label %.body, !dbg !476

.body:                                            ; preds = %21, %25, %48
  %eh.lpad-body = phi { ptr, i32 } [ %49, %48 ], [ %22, %25 ], [ %22, %21 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #15, !dbg !476
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !476
  resume { ptr, i32 } %eh.lpad-body, !dbg !476
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: uwtable
define dso_local noundef nonnull ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !477 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !478
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1, !dbg !479
  %7 = load i64, ptr %6, align 8, !dbg !479, !tbaa !30
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str, i64 noundef 0), !dbg !483
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15, !dbg !484
  call void @_ZN12YAML_Element21convert_int_to_stringB5cxx11Ei(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, i32 noundef %2), !dbg !485
  %9 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16
          to label %10 unwind label %60, !dbg !486

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, !dbg !487
  store ptr %11, ptr %9, align 8, !dbg !491, !tbaa !19
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1, !dbg !493
  store i64 0, ptr %12, align 8, !dbg !496, !tbaa !30
  store i8 0, ptr %11, align 8, !dbg !497, !tbaa !37
  %13 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, !dbg !499
  %14 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 2, !dbg !500
  store ptr %14, ptr %13, align 8, !dbg !503, !tbaa !19
  %15 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 1, !dbg !505
  store i64 0, ptr %15, align 8, !dbg !508, !tbaa !30
  store i8 0, ptr %14, align 8, !dbg !509, !tbaa !37
  %16 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 2, !dbg !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !dbg !511
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %17, !dbg !516

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %17, !dbg !519

17:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %10
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !522
  %19 = load ptr, ptr %16, align 8, !dbg !523, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %19, null, !dbg !526
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %20, !dbg !526

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef nonnull %19) #14, !dbg !528
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, !dbg !531

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %20, %17
  %21 = load ptr, ptr %13, align 8, !dbg !532, !tbaa !96
  %22 = icmp eq ptr %21, %14, !dbg !537
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %23, !dbg !538

23:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %21) #14, !dbg !539
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, !dbg !543

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %23, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %24 = load ptr, ptr %9, align 8, !dbg !544, !tbaa !96
  %25 = icmp eq ptr %24, %11, !dbg !549
  br i1 %25, label %.body, label %26, !dbg !550

26:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %24) #14, !dbg !551
  br label %.body, !dbg !555

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %27 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, !dbg !556
  %28 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1, !dbg !557
  %29 = load ptr, ptr %28, align 8, !dbg !557, !tbaa !123
  %30 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2, !dbg !559
  %31 = load ptr, ptr %30, align 8, !dbg !559, !tbaa !270
  %.not.i = icmp eq ptr %29, %31, !dbg !560
  br i1 %.not.i, label %35, label %32, !dbg !561

32:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  store ptr %9, ptr %29, align 8, !dbg !562, !tbaa !176
  %33 = load ptr, ptr %28, align 8, !dbg !565, !tbaa !123
  %34 = getelementptr inbounds ptr, ptr %33, i64 1, !dbg !565
  store ptr %34, ptr %28, align 8, !dbg !565, !tbaa !123
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, !dbg !566

35:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %36 = load ptr, ptr %27, align 8, !dbg !567, !tbaa !74
  %37 = ptrtoint ptr %29 to i64, !dbg !571
  %38 = ptrtoint ptr %36 to i64, !dbg !571
  %39 = sub i64 %37, %38, !dbg !571
  %40 = icmp eq i64 %39, 9223372036854775800, !dbg !572
  br i1 %40, label %41, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i, !dbg !573

41:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
          to label %.noexc unwind label %60, !dbg !574

.noexc:                                           ; preds = %41
  unreachable, !dbg !574

_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %35
  %42 = ashr exact i64 %39, 3, !dbg !571
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %42, i64 1), !dbg !575
  %43 = add i64 %.sroa.speculated.i.i.i, %42, !dbg !576
  %44 = icmp ult i64 %43, %42, !dbg !577
  %45 = icmp ugt i64 %43, 1152921504606846975
  %or.cond.i.i.i = or i1 %44, %45, !dbg !578
  %46 = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %43, !dbg !578
  %.not.i.i.i = icmp eq i64 %46, 0, !dbg !579
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, !dbg !581

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %47 = shl nuw nsw i64 %46, 3, !dbg !582
  %48 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %47) #16
          to label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i unwind label %60, !dbg !585

_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %49 = phi ptr [ null, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %48, %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i ], !dbg !581
  %50 = getelementptr inbounds ptr, ptr %49, i64 %42, !dbg !586
  store ptr %9, ptr %50, align 8, !dbg !587, !tbaa !176
  %51 = icmp sgt i64 %39, 0, !dbg !590
  br i1 %51, label %52, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !594

52:                                               ; preds = %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %36, i64 %39, i1 false), !dbg !595
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !596

_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %52, %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  %53 = getelementptr inbounds ptr, ptr %50, i64 1, !dbg !597
  %.not.i17.i.i = icmp eq ptr %36, null, !dbg !598
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %54, !dbg !598

54:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %36) #14, !dbg !600
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, !dbg !603

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %54, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %49, ptr %27, align 8, !dbg !604, !tbaa !74
  store ptr %53, ptr %28, align 8, !dbg !605, !tbaa !123
  %55 = getelementptr inbounds ptr, ptr %49, i64 %46, !dbg !606
  store ptr %55, ptr %30, align 8, !dbg !607, !tbaa !270
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %32
  %56 = load ptr, ptr %4, align 8, !dbg !608, !tbaa !96
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !613
  %58 = icmp eq ptr %56, %57, !dbg !615
  br i1 %58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %59, !dbg !616

59:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef %56) #14, !dbg !617
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !622
  ret ptr %9, !dbg !622

60:                                               ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %41, %3
  %61 = landingpad { ptr, i32 }
          cleanup, !dbg !622
  br label %62, !dbg !622

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %26
  call void @_ZdlPv(ptr noundef nonnull %9) #14, !dbg !486
  br label %62, !dbg !486

62:                                               ; preds = %.body, %60
  %.pn = phi { ptr, i32 } [ %61, %60 ], [ %18, %.body ]
  %63 = load ptr, ptr %4, align 8, !dbg !623, !tbaa !96
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !628
  %65 = icmp eq ptr %63, %64, !dbg !630
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %66, !dbg !631

66:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #14, !dbg !632
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, !dbg !636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %62, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !622
  resume { ptr, i32 } %.pn, !dbg !622
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element21convert_int_to_stringB5cxx11Ei(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !637 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #15, !dbg !638
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4), !dbg !639
  %5 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !640
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2)
          to label %7 unwind label %49, !dbg !641

7:                                                ; preds = %3
  call void @llvm.experimental.noalias.scope.decl(metadata !642), !dbg !645
  call void @llvm.experimental.noalias.scope.decl(metadata !646), !dbg !649
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !651
  store ptr %8, ptr %0, align 8, !dbg !655, !tbaa !19, !alias.scope !657
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !658
  store i64 0, ptr %9, align 8, !dbg !661, !tbaa !30, !alias.scope !657
  store i8 0, ptr %8, align 8, !dbg !662, !tbaa !37, !alias.scope !657
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 5, !dbg !664
  %11 = load ptr, ptr %10, align 8, !dbg !664, !tbaa !401, !noalias !657
  %.not.not.i.i.i = icmp eq ptr %11, null, !dbg !667
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 3, !dbg !667
  %13 = load ptr, ptr %12, align 8, !dbg !667, !noalias !657
  %14 = icmp ugt ptr %11, %13, !dbg !667
  %.08.i.i.i = select i1 %14, ptr %11, ptr %13, !dbg !667
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null, !dbg !668
  %.not.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not5.i.i, !dbg !668
  br i1 %.not.i.i, label %27, label %15, !dbg !668

15:                                               ; preds = %7
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 4, !dbg !669
  %17 = load ptr, ptr %16, align 8, !dbg !669, !tbaa !409, !noalias !657
  %18 = ptrtoint ptr %.08.i.i.i to i64, !dbg !671
  %19 = ptrtoint ptr %17 to i64, !dbg !671
  %20 = sub i64 %18, %19, !dbg !671
  %21 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %17, i64 noundef %20)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %22, !dbg !674

22:                                               ; preds = %27, %15
  %23 = landingpad { ptr, i32 }
          cleanup, !dbg !676
  %24 = load ptr, ptr %0, align 8, !dbg !677, !tbaa !96, !alias.scope !657
  %25 = icmp eq ptr %24, %8, !dbg !682
  br i1 %25, label %.body, label %26, !dbg !683

26:                                               ; preds = %22
  call void @_ZdlPv(ptr noundef %24) #14, !dbg !684
  br label %.body, !dbg !688

27:                                               ; preds = %7
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !689
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %22, !dbg !690

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %27, %15
  %29 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !dbg !693
  store ptr %29, ptr %4, align 8, !dbg !693, !tbaa !440
  %30 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8, !dbg !693
  %31 = getelementptr i8, ptr %29, i64 -24, !dbg !693
  %32 = load i64, ptr %31, align 8, !dbg !693
  %33 = getelementptr inbounds i8, ptr %4, i64 %32, !dbg !693
  store ptr %30, ptr %33, align 8, !dbg !693, !tbaa !440
  %34 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8, !dbg !693
  store ptr %34, ptr %5, align 8, !dbg !693, !tbaa !440
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, !dbg !696
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %35, align 8, !dbg !697, !tbaa !440
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !697
  %37 = load ptr, ptr %36, align 8, !dbg !699, !tbaa !96
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, i32 2, !dbg !704
  %39 = icmp eq ptr %37, %38, !dbg !706
  br i1 %39, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %40, !dbg !707

40:                                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %37) #14, !dbg !708
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, !dbg !712

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %40
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %35, align 8, !dbg !713, !tbaa !440
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 7, !dbg !715
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %41) #15, !dbg !715
  %42 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8, !dbg !716
  store ptr %42, ptr %4, align 8, !dbg !716, !tbaa !440
  %43 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8, !dbg !716
  %44 = getelementptr i8, ptr %42, i64 -24, !dbg !716
  %45 = load i64, ptr %44, align 8, !dbg !716
  %46 = getelementptr inbounds i8, ptr %4, i64 %45, !dbg !716
  store ptr %43, ptr %46, align 8, !dbg !716, !tbaa !440
  %47 = getelementptr inbounds %"class.std::basic_istream", ptr %4, i64 0, i32 1, !dbg !719
  store i64 0, ptr %47, align 8, !dbg !720, !tbaa !473
  %48 = getelementptr inbounds i8, ptr %4, i64 128, !dbg !721
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %48) #15, !dbg !721
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !722
  ret void, !dbg !722

49:                                               ; preds = %3
  %50 = landingpad { ptr, i32 }
          cleanup, !dbg !722
  br label %.body, !dbg !722

.body:                                            ; preds = %22, %26, %49
  %eh.lpad-body = phi { ptr, i32 } [ %50, %49 ], [ %23, %26 ], [ %23, %22 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #15, !dbg !722
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !722
  resume { ptr, i32 } %eh.lpad-body, !dbg !722
}

; Function Attrs: uwtable
define dso_local noundef nonnull ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !723 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !724
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1, !dbg !725
  %7 = load i64, ptr %6, align 8, !dbg !725, !tbaa !30
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str, i64 noundef 0), !dbg !729
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15, !dbg !730
  call void @_ZN12YAML_Element27convert_long_long_to_stringB5cxx11Ex(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, i64 noundef %2), !dbg !731
  %9 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16
          to label %10 unwind label %60, !dbg !732

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, !dbg !733
  store ptr %11, ptr %9, align 8, !dbg !737, !tbaa !19
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1, !dbg !739
  store i64 0, ptr %12, align 8, !dbg !742, !tbaa !30
  store i8 0, ptr %11, align 8, !dbg !743, !tbaa !37
  %13 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, !dbg !745
  %14 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 2, !dbg !746
  store ptr %14, ptr %13, align 8, !dbg !749, !tbaa !19
  %15 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 1, !dbg !751
  store i64 0, ptr %15, align 8, !dbg !754, !tbaa !30
  store i8 0, ptr %14, align 8, !dbg !755, !tbaa !37
  %16 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 2, !dbg !745
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !dbg !757
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %17, !dbg !762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %17, !dbg !765

17:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %10
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !768
  %19 = load ptr, ptr %16, align 8, !dbg !769, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %19, null, !dbg !772
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %20, !dbg !772

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef nonnull %19) #14, !dbg !774
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, !dbg !777

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %20, %17
  %21 = load ptr, ptr %13, align 8, !dbg !778, !tbaa !96
  %22 = icmp eq ptr %21, %14, !dbg !783
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %23, !dbg !784

23:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %21) #14, !dbg !785
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, !dbg !789

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %23, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %24 = load ptr, ptr %9, align 8, !dbg !790, !tbaa !96
  %25 = icmp eq ptr %24, %11, !dbg !795
  br i1 %25, label %.body, label %26, !dbg !796

26:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %24) #14, !dbg !797
  br label %.body, !dbg !801

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %27 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, !dbg !802
  %28 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1, !dbg !803
  %29 = load ptr, ptr %28, align 8, !dbg !803, !tbaa !123
  %30 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2, !dbg !805
  %31 = load ptr, ptr %30, align 8, !dbg !805, !tbaa !270
  %.not.i = icmp eq ptr %29, %31, !dbg !806
  br i1 %.not.i, label %35, label %32, !dbg !807

32:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  store ptr %9, ptr %29, align 8, !dbg !808, !tbaa !176
  %33 = load ptr, ptr %28, align 8, !dbg !811, !tbaa !123
  %34 = getelementptr inbounds ptr, ptr %33, i64 1, !dbg !811
  store ptr %34, ptr %28, align 8, !dbg !811, !tbaa !123
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, !dbg !812

35:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %36 = load ptr, ptr %27, align 8, !dbg !813, !tbaa !74
  %37 = ptrtoint ptr %29 to i64, !dbg !817
  %38 = ptrtoint ptr %36 to i64, !dbg !817
  %39 = sub i64 %37, %38, !dbg !817
  %40 = icmp eq i64 %39, 9223372036854775800, !dbg !818
  br i1 %40, label %41, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i, !dbg !819

41:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
          to label %.noexc unwind label %60, !dbg !820

.noexc:                                           ; preds = %41
  unreachable, !dbg !820

_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %35
  %42 = ashr exact i64 %39, 3, !dbg !817
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %42, i64 1), !dbg !821
  %43 = add i64 %.sroa.speculated.i.i.i, %42, !dbg !822
  %44 = icmp ult i64 %43, %42, !dbg !823
  %45 = icmp ugt i64 %43, 1152921504606846975
  %or.cond.i.i.i = or i1 %44, %45, !dbg !824
  %46 = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %43, !dbg !824
  %.not.i.i.i = icmp eq i64 %46, 0, !dbg !825
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, !dbg !827

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %47 = shl nuw nsw i64 %46, 3, !dbg !828
  %48 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %47) #16
          to label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i unwind label %60, !dbg !831

_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %49 = phi ptr [ null, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %48, %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i ], !dbg !827
  %50 = getelementptr inbounds ptr, ptr %49, i64 %42, !dbg !832
  store ptr %9, ptr %50, align 8, !dbg !833, !tbaa !176
  %51 = icmp sgt i64 %39, 0, !dbg !836
  br i1 %51, label %52, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !840

52:                                               ; preds = %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %36, i64 %39, i1 false), !dbg !841
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !842

_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %52, %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  %53 = getelementptr inbounds ptr, ptr %50, i64 1, !dbg !843
  %.not.i17.i.i = icmp eq ptr %36, null, !dbg !844
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %54, !dbg !844

54:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %36) #14, !dbg !846
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, !dbg !849

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %54, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %49, ptr %27, align 8, !dbg !850, !tbaa !74
  store ptr %53, ptr %28, align 8, !dbg !851, !tbaa !123
  %55 = getelementptr inbounds ptr, ptr %49, i64 %46, !dbg !852
  store ptr %55, ptr %30, align 8, !dbg !853, !tbaa !270
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %32
  %56 = load ptr, ptr %4, align 8, !dbg !854, !tbaa !96
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !859
  %58 = icmp eq ptr %56, %57, !dbg !861
  br i1 %58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %59, !dbg !862

59:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef %56) #14, !dbg !863
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !867

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !868
  ret ptr %9, !dbg !868

60:                                               ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %41, %3
  %61 = landingpad { ptr, i32 }
          cleanup, !dbg !868
  br label %62, !dbg !868

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %26
  call void @_ZdlPv(ptr noundef nonnull %9) #14, !dbg !732
  br label %62, !dbg !732

62:                                               ; preds = %.body, %60
  %.pn = phi { ptr, i32 } [ %61, %60 ], [ %18, %.body ]
  %63 = load ptr, ptr %4, align 8, !dbg !869, !tbaa !96
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !874
  %65 = icmp eq ptr %63, %64, !dbg !876
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %66, !dbg !877

66:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #14, !dbg !878
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, !dbg !882

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %62, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !868
  resume { ptr, i32 } %.pn, !dbg !868
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element27convert_long_long_to_stringB5cxx11Ex(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !883 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #15, !dbg !884
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4), !dbg !885
  %5 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !886
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %2)
          to label %_ZNSolsEx.exit unwind label %48, !dbg !887

_ZNSolsEx.exit:                                   ; preds = %3
  call void @llvm.experimental.noalias.scope.decl(metadata !890), !dbg !893
  call void @llvm.experimental.noalias.scope.decl(metadata !894), !dbg !897
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !899
  store ptr %7, ptr %0, align 8, !dbg !903, !tbaa !19, !alias.scope !905
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !906
  store i64 0, ptr %8, align 8, !dbg !909, !tbaa !30, !alias.scope !905
  store i8 0, ptr %7, align 8, !dbg !910, !tbaa !37, !alias.scope !905
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 5, !dbg !912
  %10 = load ptr, ptr %9, align 8, !dbg !912, !tbaa !401, !noalias !905
  %.not.not.i.i.i = icmp eq ptr %10, null, !dbg !915
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 3, !dbg !915
  %12 = load ptr, ptr %11, align 8, !dbg !915, !noalias !905
  %13 = icmp ugt ptr %10, %12, !dbg !915
  %.08.i.i.i = select i1 %13, ptr %10, ptr %12, !dbg !915
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null, !dbg !916
  %.not.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not5.i.i, !dbg !916
  br i1 %.not.i.i, label %26, label %14, !dbg !916

14:                                               ; preds = %_ZNSolsEx.exit
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 4, !dbg !917
  %16 = load ptr, ptr %15, align 8, !dbg !917, !tbaa !409, !noalias !905
  %17 = ptrtoint ptr %.08.i.i.i to i64, !dbg !919
  %18 = ptrtoint ptr %16 to i64, !dbg !919
  %19 = sub i64 %17, %18, !dbg !919
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %16, i64 noundef %19)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %21, !dbg !922

21:                                               ; preds = %26, %14
  %22 = landingpad { ptr, i32 }
          cleanup, !dbg !924
  %23 = load ptr, ptr %0, align 8, !dbg !925, !tbaa !96, !alias.scope !905
  %24 = icmp eq ptr %23, %7, !dbg !930
  br i1 %24, label %.body, label %25, !dbg !931

25:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %23) #14, !dbg !932
  br label %.body, !dbg !936

26:                                               ; preds = %_ZNSolsEx.exit
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !937
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %21, !dbg !938

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %26, %14
  %28 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !dbg !941
  store ptr %28, ptr %4, align 8, !dbg !941, !tbaa !440
  %29 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8, !dbg !941
  %30 = getelementptr i8, ptr %28, i64 -24, !dbg !941
  %31 = load i64, ptr %30, align 8, !dbg !941
  %32 = getelementptr inbounds i8, ptr %4, i64 %31, !dbg !941
  store ptr %29, ptr %32, align 8, !dbg !941, !tbaa !440
  %33 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8, !dbg !941
  store ptr %33, ptr %5, align 8, !dbg !941, !tbaa !440
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, !dbg !944
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %34, align 8, !dbg !945, !tbaa !440
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !945
  %36 = load ptr, ptr %35, align 8, !dbg !947, !tbaa !96
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, i32 2, !dbg !952
  %38 = icmp eq ptr %36, %37, !dbg !954
  br i1 %38, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %39, !dbg !955

39:                                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %36) #14, !dbg !956
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, !dbg !960

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %39
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %34, align 8, !dbg !961, !tbaa !440
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 7, !dbg !963
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40) #15, !dbg !963
  %41 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8, !dbg !964
  store ptr %41, ptr %4, align 8, !dbg !964, !tbaa !440
  %42 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8, !dbg !964
  %43 = getelementptr i8, ptr %41, i64 -24, !dbg !964
  %44 = load i64, ptr %43, align 8, !dbg !964
  %45 = getelementptr inbounds i8, ptr %4, i64 %44, !dbg !964
  store ptr %42, ptr %45, align 8, !dbg !964, !tbaa !440
  %46 = getelementptr inbounds %"class.std::basic_istream", ptr %4, i64 0, i32 1, !dbg !967
  store i64 0, ptr %46, align 8, !dbg !968, !tbaa !473
  %47 = getelementptr inbounds i8, ptr %4, i64 128, !dbg !969
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %47) #15, !dbg !969
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !970
  ret void, !dbg !970

48:                                               ; preds = %3
  %49 = landingpad { ptr, i32 }
          cleanup, !dbg !970
  br label %.body, !dbg !970

.body:                                            ; preds = %21, %25, %48
  %eh.lpad-body = phi { ptr, i32 } [ %49, %48 ], [ %22, %25 ], [ %22, %21 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #15, !dbg !970
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !970
  resume { ptr, i32 } %eh.lpad-body, !dbg !970
}

; Function Attrs: uwtable
define dso_local noundef nonnull ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !971 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !972
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1, !dbg !973
  %7 = load i64, ptr %6, align 8, !dbg !973, !tbaa !30
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %7, ptr noundef nonnull @.str, i64 noundef 0), !dbg !977
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15, !dbg !978
  call void @_ZN12YAML_Element24convert_size_t_to_stringB5cxx11Em(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 8 poison, i64 noundef %2), !dbg !979
  %9 = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16
          to label %10 unwind label %60, !dbg !980

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2, !dbg !981
  store ptr %11, ptr %9, align 8, !dbg !985, !tbaa !19
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1, !dbg !987
  store i64 0, ptr %12, align 8, !dbg !990, !tbaa !30
  store i8 0, ptr %11, align 8, !dbg !991, !tbaa !37
  %13 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, !dbg !993
  %14 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 2, !dbg !994
  store ptr %14, ptr %13, align 8, !dbg !997, !tbaa !19
  %15 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 1, i32 1, !dbg !999
  store i64 0, ptr %15, align 8, !dbg !1002, !tbaa !30
  store i8 0, ptr %14, align 8, !dbg !1003, !tbaa !37
  %16 = getelementptr inbounds %class.YAML_Element, ptr %9, i64 0, i32 2, !dbg !993
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !dbg !1005
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %17, !dbg !1010

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %17, !dbg !1013

17:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %10
  %18 = landingpad { ptr, i32 }
          cleanup, !dbg !1016
  %19 = load ptr, ptr %16, align 8, !dbg !1017, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %19, null, !dbg !1020
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %20, !dbg !1020

20:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef nonnull %19) #14, !dbg !1022
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, !dbg !1025

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %20, %17
  %21 = load ptr, ptr %13, align 8, !dbg !1026, !tbaa !96
  %22 = icmp eq ptr %21, %14, !dbg !1031
  br i1 %22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %23, !dbg !1032

23:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %21) #14, !dbg !1033
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, !dbg !1037

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %23, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %24 = load ptr, ptr %9, align 8, !dbg !1038, !tbaa !96
  %25 = icmp eq ptr %24, %11, !dbg !1043
  br i1 %25, label %.body, label %26, !dbg !1044

26:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %24) #14, !dbg !1045
  br label %.body, !dbg !1049

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %27 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, !dbg !1050
  %28 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1, !dbg !1051
  %29 = load ptr, ptr %28, align 8, !dbg !1051, !tbaa !123
  %30 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2, !dbg !1053
  %31 = load ptr, ptr %30, align 8, !dbg !1053, !tbaa !270
  %.not.i = icmp eq ptr %29, %31, !dbg !1054
  br i1 %.not.i, label %35, label %32, !dbg !1055

32:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  store ptr %9, ptr %29, align 8, !dbg !1056, !tbaa !176
  %33 = load ptr, ptr %28, align 8, !dbg !1059, !tbaa !123
  %34 = getelementptr inbounds ptr, ptr %33, i64 1, !dbg !1059
  store ptr %34, ptr %28, align 8, !dbg !1059, !tbaa !123
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, !dbg !1060

35:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %36 = load ptr, ptr %27, align 8, !dbg !1061, !tbaa !74
  %37 = ptrtoint ptr %29 to i64, !dbg !1065
  %38 = ptrtoint ptr %36 to i64, !dbg !1065
  %39 = sub i64 %37, %38, !dbg !1065
  %40 = icmp eq i64 %39, 9223372036854775800, !dbg !1066
  br i1 %40, label %41, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i, !dbg !1067

41:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
          to label %.noexc unwind label %60, !dbg !1068

.noexc:                                           ; preds = %41
  unreachable, !dbg !1068

_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %35
  %42 = ashr exact i64 %39, 3, !dbg !1065
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %42, i64 1), !dbg !1069
  %43 = add i64 %.sroa.speculated.i.i.i, %42, !dbg !1070
  %44 = icmp ult i64 %43, %42, !dbg !1071
  %45 = icmp ugt i64 %43, 1152921504606846975
  %or.cond.i.i.i = or i1 %44, %45, !dbg !1072
  %46 = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %43, !dbg !1072
  %.not.i.i.i = icmp eq i64 %46, 0, !dbg !1073
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, !dbg !1075

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %47 = shl nuw nsw i64 %46, 3, !dbg !1076
  %48 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %47) #16
          to label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i unwind label %60, !dbg !1079

_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %49 = phi ptr [ null, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %48, %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i ], !dbg !1075
  %50 = getelementptr inbounds ptr, ptr %49, i64 %42, !dbg !1080
  store ptr %9, ptr %50, align 8, !dbg !1081, !tbaa !176
  %51 = icmp sgt i64 %39, 0, !dbg !1084
  br i1 %51, label %52, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !1088

52:                                               ; preds = %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %49, ptr align 8 %36, i64 %39, i1 false), !dbg !1089
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !1090

_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %52, %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  %53 = getelementptr inbounds ptr, ptr %50, i64 1, !dbg !1091
  %.not.i17.i.i = icmp eq ptr %36, null, !dbg !1092
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %54, !dbg !1092

54:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %36) #14, !dbg !1094
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, !dbg !1097

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %54, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %49, ptr %27, align 8, !dbg !1098, !tbaa !74
  store ptr %53, ptr %28, align 8, !dbg !1099, !tbaa !123
  %55 = getelementptr inbounds ptr, ptr %49, i64 %46, !dbg !1100
  store ptr %55, ptr %30, align 8, !dbg !1101, !tbaa !270
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %32
  %56 = load ptr, ptr %4, align 8, !dbg !1102, !tbaa !96
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !1107
  %58 = icmp eq ptr %56, %57, !dbg !1109
  br i1 %58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %59, !dbg !1110

59:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef %56) #14, !dbg !1111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !1115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !1116
  ret ptr %9, !dbg !1116

60:                                               ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %41, %3
  %61 = landingpad { ptr, i32 }
          cleanup, !dbg !1116
  br label %62, !dbg !1116

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %26
  call void @_ZdlPv(ptr noundef nonnull %9) #14, !dbg !980
  br label %62, !dbg !980

62:                                               ; preds = %.body, %60
  %.pn = phi { ptr, i32 } [ %61, %60 ], [ %18, %.body ]
  %63 = load ptr, ptr %4, align 8, !dbg !1117, !tbaa !96
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2, !dbg !1122
  %65 = icmp eq ptr %63, %64, !dbg !1124
  br i1 %65, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %66, !dbg !1125

66:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %63) #14, !dbg !1126
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, !dbg !1130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %62, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !1116
  resume { ptr, i32 } %.pn, !dbg !1116
}

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element24convert_size_t_to_stringB5cxx11Em(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture nonnull readnone align 8 %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !1131 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #15, !dbg !1132
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4), !dbg !1133
  %5 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !1134
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %2)
          to label %_ZNSolsEm.exit unwind label %48, !dbg !1135

_ZNSolsEm.exit:                                   ; preds = %3
  call void @llvm.experimental.noalias.scope.decl(metadata !1138), !dbg !1141
  call void @llvm.experimental.noalias.scope.decl(metadata !1142), !dbg !1145
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !1147
  store ptr %7, ptr %0, align 8, !dbg !1151, !tbaa !19, !alias.scope !1153
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !1154
  store i64 0, ptr %8, align 8, !dbg !1157, !tbaa !30, !alias.scope !1153
  store i8 0, ptr %7, align 8, !dbg !1158, !tbaa !37, !alias.scope !1153
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 5, !dbg !1160
  %10 = load ptr, ptr %9, align 8, !dbg !1160, !tbaa !401, !noalias !1153
  %.not.not.i.i.i = icmp eq ptr %10, null, !dbg !1163
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 3, !dbg !1163
  %12 = load ptr, ptr %11, align 8, !dbg !1163, !noalias !1153
  %13 = icmp ugt ptr %10, %12, !dbg !1163
  %.08.i.i.i = select i1 %13, ptr %10, ptr %12, !dbg !1163
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null, !dbg !1164
  %.not.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not5.i.i, !dbg !1164
  br i1 %.not.i.i, label %26, label %14, !dbg !1164

14:                                               ; preds = %_ZNSolsEm.exit
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 4, !dbg !1165
  %16 = load ptr, ptr %15, align 8, !dbg !1165, !tbaa !409, !noalias !1153
  %17 = ptrtoint ptr %.08.i.i.i to i64, !dbg !1167
  %18 = ptrtoint ptr %16 to i64, !dbg !1167
  %19 = sub i64 %17, %18, !dbg !1167
  %20 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %16, i64 noundef %19)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %21, !dbg !1170

21:                                               ; preds = %26, %14
  %22 = landingpad { ptr, i32 }
          cleanup, !dbg !1172
  %23 = load ptr, ptr %0, align 8, !dbg !1173, !tbaa !96, !alias.scope !1153
  %24 = icmp eq ptr %23, %7, !dbg !1178
  br i1 %24, label %.body, label %25, !dbg !1179

25:                                               ; preds = %21
  call void @_ZdlPv(ptr noundef %23) #14, !dbg !1180
  br label %.body, !dbg !1184

26:                                               ; preds = %_ZNSolsEm.exit
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !1185
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %21, !dbg !1186

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %26, %14
  %28 = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !dbg !1189
  store ptr %28, ptr %4, align 8, !dbg !1189, !tbaa !440
  %29 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8), align 8, !dbg !1189
  %30 = getelementptr i8, ptr %28, i64 -24, !dbg !1189
  %31 = load i64, ptr %30, align 8, !dbg !1189
  %32 = getelementptr inbounds i8, ptr %4, i64 %31, !dbg !1189
  store ptr %29, ptr %32, align 8, !dbg !1189, !tbaa !440
  %33 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9), align 8, !dbg !1189
  store ptr %33, ptr %5, align 8, !dbg !1189, !tbaa !440
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, !dbg !1192
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %34, align 8, !dbg !1193, !tbaa !440
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, !dbg !1193
  %36 = load ptr, ptr %35, align 8, !dbg !1195, !tbaa !96
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 2, i32 2, !dbg !1200
  %38 = icmp eq ptr %36, %37, !dbg !1202
  br i1 %38, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %39, !dbg !1203

39:                                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %36) #14, !dbg !1204
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, !dbg !1208

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %39
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %34, align 8, !dbg !1209, !tbaa !440
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1, i32 0, i32 7, !dbg !1211
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40) #15, !dbg !1211
  %41 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8, !dbg !1212
  store ptr %41, ptr %4, align 8, !dbg !1212, !tbaa !440
  %42 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8, !dbg !1212
  %43 = getelementptr i8, ptr %41, i64 -24, !dbg !1212
  %44 = load i64, ptr %43, align 8, !dbg !1212
  %45 = getelementptr inbounds i8, ptr %4, i64 %44, !dbg !1212
  store ptr %42, ptr %45, align 8, !dbg !1212, !tbaa !440
  %46 = getelementptr inbounds %"class.std::basic_istream", ptr %4, i64 0, i32 1, !dbg !1215
  store i64 0, ptr %46, align 8, !dbg !1216, !tbaa !473
  %47 = getelementptr inbounds i8, ptr %4, i64 128, !dbg !1217
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %47) #15, !dbg !1217
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !1218
  ret void, !dbg !1218

48:                                               ; preds = %3
  %49 = landingpad { ptr, i32 }
          cleanup, !dbg !1218
  br label %.body, !dbg !1218

.body:                                            ; preds = %21, %25, %48
  %eh.lpad-body = phi { ptr, i32 } [ %49, %48 ], [ %22, %25 ], [ %22, %21 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #15, !dbg !1218
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #15, !dbg !1218
  resume { ptr, i32 } %eh.lpad-body, !dbg !1218
}

; Function Attrs: uwtable
define dso_local noundef nonnull ptr @_ZN12YAML_Element3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !1219 {
  %4 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, !dbg !1220
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 1, i32 1, !dbg !1221
  %6 = load i64, ptr %5, align 8, !dbg !1221, !tbaa !30
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %6, ptr noundef nonnull @.str, i64 noundef 0), !dbg !1225
  %8 = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16, !dbg !1226
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2, !dbg !1227
  store ptr %9, ptr %8, align 8, !dbg !1231, !tbaa !19
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1, !dbg !1233
  store i64 0, ptr %10, align 8, !dbg !1236, !tbaa !30
  store i8 0, ptr %9, align 8, !dbg !1237, !tbaa !37
  %11 = getelementptr inbounds %class.YAML_Element, ptr %8, i64 0, i32 1, !dbg !1239
  %12 = getelementptr inbounds %class.YAML_Element, ptr %8, i64 0, i32 1, i32 2, !dbg !1240
  store ptr %12, ptr %11, align 8, !dbg !1243, !tbaa !19
  %13 = getelementptr inbounds %class.YAML_Element, ptr %8, i64 0, i32 1, i32 1, !dbg !1245
  store i64 0, ptr %13, align 8, !dbg !1248, !tbaa !30
  store i8 0, ptr %12, align 8, !dbg !1249, !tbaa !37
  %14 = getelementptr inbounds %class.YAML_Element, ptr %8, i64 0, i32 2, !dbg !1239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !dbg !1251
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %15, !dbg !1256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit unwind label %15, !dbg !1259

15:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %3
  %16 = landingpad { ptr, i32 }
          cleanup, !dbg !1262
  %17 = load ptr, ptr %14, align 8, !dbg !1263, !tbaa !74
  %.not.i.i.i.i = icmp eq ptr %17, null, !dbg !1266
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, label %18, !dbg !1266

18:                                               ; preds = %15
  tail call void @_ZdlPv(ptr noundef nonnull %17) #14, !dbg !1268
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i, !dbg !1271

_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i:  ; preds = %18, %15
  %19 = load ptr, ptr %11, align 8, !dbg !1272, !tbaa !96
  %20 = icmp eq ptr %19, %12, !dbg !1277
  br i1 %20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %21, !dbg !1278

21:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %19) #14, !dbg !1279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, !dbg !1283

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %21, %_ZNSt6vectorIP12YAML_ElementSaIS1_EED2Ev.exit.i
  %22 = load ptr, ptr %8, align 8, !dbg !1284, !tbaa !96
  %23 = icmp eq ptr %22, %9, !dbg !1289
  br i1 %23, label %.body, label %24, !dbg !1290

24:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %22) #14, !dbg !1291
  br label %.body, !dbg !1295

_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %25 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, !dbg !1296
  %26 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1, !dbg !1297
  %27 = load ptr, ptr %26, align 8, !dbg !1297, !tbaa !123
  %28 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2, !dbg !1299
  %29 = load ptr, ptr %28, align 8, !dbg !1299, !tbaa !270
  %.not.i = icmp eq ptr %27, %29, !dbg !1300
  br i1 %.not.i, label %33, label %30, !dbg !1301

30:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  store ptr %8, ptr %27, align 8, !dbg !1302, !tbaa !176
  %31 = load ptr, ptr %26, align 8, !dbg !1305, !tbaa !123
  %32 = getelementptr inbounds ptr, ptr %31, i64 1, !dbg !1305
  store ptr %32, ptr %26, align 8, !dbg !1305, !tbaa !123
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit, !dbg !1306

33:                                               ; preds = %_ZN12YAML_ElementC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %34 = load ptr, ptr %25, align 8, !dbg !1307, !tbaa !74
  %35 = ptrtoint ptr %27 to i64, !dbg !1311
  %36 = ptrtoint ptr %34 to i64, !dbg !1311
  %37 = sub i64 %35, %36, !dbg !1311
  %38 = icmp eq i64 %37, 9223372036854775800, !dbg !1312
  br i1 %38, label %39, label %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i, !dbg !1313

39:                                               ; preds = %33
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17, !dbg !1314
  unreachable, !dbg !1314

_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %33
  %40 = ashr exact i64 %37, 3, !dbg !1311
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %40, i64 1), !dbg !1315
  %41 = add i64 %.sroa.speculated.i.i.i, %40, !dbg !1316
  %42 = icmp ult i64 %41, %40, !dbg !1317
  %43 = icmp ugt i64 %41, 1152921504606846975
  %or.cond.i.i.i = or i1 %42, %43, !dbg !1318
  %44 = select i1 %or.cond.i.i.i, i64 1152921504606846975, i64 %41, !dbg !1318
  %.not.i.i.i = icmp eq i64 %44, 0, !dbg !1319
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i, label %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, !dbg !1321

_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i: ; preds = %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %45 = shl nuw nsw i64 %44, 3, !dbg !1322
  %46 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #16, !dbg !1325
  br label %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i, !dbg !1321

_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %47 = phi ptr [ %46, %_ZNSt16allocator_traitsISaIP12YAML_ElementEE8allocateERS2_m.exit.i.i.i ], [ null, %_ZNKSt6vectorIP12YAML_ElementSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], !dbg !1321
  %48 = getelementptr inbounds ptr, ptr %47, i64 %40, !dbg !1326
  store ptr %8, ptr %48, align 8, !dbg !1327, !tbaa !176
  %49 = icmp sgt i64 %37, 0, !dbg !1330
  br i1 %49, label %50, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !1334

50:                                               ; preds = %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %47, ptr align 8 %34, i64 %37, i1 false), !dbg !1335
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i, !dbg !1336

_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %50, %_ZNSt12_Vector_baseIP12YAML_ElementSaIS1_EE11_M_allocateEm.exit.i.i
  %51 = getelementptr inbounds ptr, ptr %48, i64 1, !dbg !1337
  %.not.i17.i.i = icmp eq ptr %34, null, !dbg !1338
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %52, !dbg !1338

52:                                               ; preds = %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %34) #14, !dbg !1340
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, !dbg !1343

_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %52, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %47, ptr %25, align 8, !dbg !1344, !tbaa !74
  store ptr %51, ptr %26, align 8, !dbg !1345, !tbaa !123
  %53 = getelementptr inbounds ptr, ptr %47, i64 %44, !dbg !1346
  store ptr %53, ptr %28, align 8, !dbg !1347, !tbaa !270
  br label %_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP12YAML_ElementSaIS1_EE9push_backERKS1_.exit: ; preds = %30, %_ZNSt6vectorIP12YAML_ElementSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret ptr %8, !dbg !1348

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %24
  tail call void @_ZdlPv(ptr noundef nonnull %8) #14, !dbg !1226
  resume { ptr, i32 } %16, !dbg !1349
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN12YAML_Element3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !1350 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.YAML_Element, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !dbg !1351, !tbaa !123
  %8 = load ptr, ptr %5, align 8, !dbg !1353, !tbaa !74
  %.not11.not = icmp eq ptr %7, %8, !dbg !1354
  br i1 %.not11.not, label %.loopexit, label %.lr.ph, !dbg !1355

.lr.ph:                                           ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  br label %12, !dbg !1355

12:                                               ; preds = %.lr.ph, %46
  %13 = phi ptr [ %8, %.lr.ph ], [ %49, %46 ]
  %.0712 = phi i64 [ 0, %.lr.ph ], [ %47, %46 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15, !dbg !1356
  %14 = getelementptr inbounds ptr, ptr %13, i64 %.0712, !dbg !1357
  %15 = load ptr, ptr %14, align 8, !dbg !1356, !tbaa !176
  call void @llvm.experimental.noalias.scope.decl(metadata !1359), !dbg !1362
  store ptr %9, ptr %4, align 8, !dbg !1363, !tbaa !19, !alias.scope !1359
  %16 = load ptr, ptr %15, align 8, !dbg !1370, !tbaa !96, !noalias !1359
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1, !dbg !1372
  %18 = load i64, ptr %17, align 8, !dbg !1372, !tbaa !30, !noalias !1359
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15, !dbg !1375, !noalias !1359
  store i64 %18, ptr %3, align 8, !dbg !1379, !tbaa !1380, !noalias !1359
  %19 = icmp ugt i64 %18, 15, !dbg !1381
  br i1 %19, label %.noexc.i.i, label %._crit_edge.i.i.i, !dbg !1382

.noexc.i.i:                                       ; preds = %12
  %20 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0), !dbg !1383
  store ptr %20, ptr %4, align 8, !dbg !1384, !tbaa !96, !alias.scope !1359
  %21 = load i64, ptr %3, align 8, !dbg !1387, !tbaa !1380, !noalias !1359
  store i64 %21, ptr %9, align 8, !dbg !1388, !tbaa !37, !alias.scope !1359
  br label %._crit_edge.i.i.i, !dbg !1391

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %12
  %22 = phi ptr [ %20, %.noexc.i.i ], [ %9, %12 ], !dbg !1392
  switch i64 %18, label %25 [
    i64 1, label %23
    i64 0, label %_ZN12YAML_Element6getKeyB5cxx11Ev.exit
  ], !dbg !1394

23:                                               ; preds = %._crit_edge.i.i.i
  %24 = load i8, ptr %16, align 1, !dbg !1399, !tbaa !37
  store i8 %24, ptr %22, align 1, !dbg !1401, !tbaa !37
  br label %_ZN12YAML_Element6getKeyB5cxx11Ev.exit, !dbg !1402

25:                                               ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %22, ptr align 1 %16, i64 %18, i1 false), !dbg !1403
  br label %_ZN12YAML_Element6getKeyB5cxx11Ev.exit, !dbg !1406

_ZN12YAML_Element6getKeyB5cxx11Ev.exit:           ; preds = %._crit_edge.i.i.i, %23, %25
  %26 = load i64, ptr %3, align 8, !dbg !1407, !tbaa !1380, !noalias !1359
  store i64 %26, ptr %10, align 8, !dbg !1408, !tbaa !30, !alias.scope !1359
  %27 = load ptr, ptr %4, align 8, !dbg !1411, !tbaa !96, !alias.scope !1359
  %28 = getelementptr inbounds i8, ptr %27, i64 %26, !dbg !1413
  store i8 0, ptr %28, align 1, !dbg !1414, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15, !dbg !1416, !noalias !1359
  %29 = load i64, ptr %10, align 8, !dbg !1417, !tbaa !30
  %30 = load i64, ptr %11, align 8, !dbg !1421, !tbaa !30
  %31 = icmp eq i64 %29, %30, !dbg !1423
  br i1 %31, label %32, label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit, !dbg !1424

32:                                               ; preds = %_ZN12YAML_Element6getKeyB5cxx11Ev.exit
  %33 = icmp eq i64 %29, 0, !dbg !1425
  br i1 %33, label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit, label %34, !dbg !1428

34:                                               ; preds = %32
  %35 = load ptr, ptr %1, align 8, !dbg !1429, !tbaa !96
  %36 = load ptr, ptr %4, align 8, !dbg !1433, !tbaa !96
  %bcmp.i = call i32 @bcmp(ptr %36, ptr %35, i64 %29), !dbg !1436
  %37 = icmp eq i32 %bcmp.i, 0, !dbg !1437
  br label %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit, !dbg !1438

_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit: ; preds = %_ZN12YAML_Element6getKeyB5cxx11Ev.exit, %32, %34
  %38 = phi i1 [ false, %_ZN12YAML_Element6getKeyB5cxx11Ev.exit ], [ %37, %34 ], [ true, %32 ], !dbg !1439
  %39 = load ptr, ptr %4, align 8, !dbg !1440, !tbaa !96
  %40 = icmp eq ptr %39, %9, !dbg !1445
  br i1 %40, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %41, !dbg !1446

41:                                               ; preds = %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit
  call void @_ZdlPv(ptr noundef %39) #14, !dbg !1447
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !1451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_.exit, %41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15, !dbg !1356
  br i1 %38, label %42, label %46, !dbg !1356

42:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %43 = load ptr, ptr %5, align 8, !dbg !1452, !tbaa !74
  %44 = getelementptr inbounds ptr, ptr %43, i64 %.0712, !dbg !1454
  %45 = load ptr, ptr %44, align 8, !dbg !1455, !tbaa !176
  br label %.loopexit, !dbg !1456

46:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %47 = add nuw i64 %.0712, 1, !dbg !1457
  %48 = load ptr, ptr %6, align 8, !dbg !1351, !tbaa !123
  %49 = load ptr, ptr %5, align 8, !dbg !1353, !tbaa !74
  %50 = ptrtoint ptr %48 to i64, !dbg !1458
  %51 = ptrtoint ptr %49 to i64, !dbg !1458
  %52 = sub i64 %50, %51, !dbg !1458
  %53 = ashr exact i64 %52, 3, !dbg !1458
  %.not = icmp ult i64 %47, %53, !dbg !1354
  br i1 %.not, label %12, label %.loopexit, !dbg !1355, !llvm.loop !1459

.loopexit:                                        ; preds = %46, %2, %42
  %spec.select = phi ptr [ %45, %42 ], [ null, %2 ], [ null, %46 ]
  ret ptr %spec.select, !dbg !1461
}

declare dso_local noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: uwtable
define dso_local void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !dbg !1462 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15, !dbg !1463
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15, !dbg !1463
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #15, !dbg !1463
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1), !dbg !1464
  call void @llvm.experimental.noalias.scope.decl(metadata !1465), !dbg !1468
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1, !dbg !1469
  %14 = load i64, ptr %13, align 8, !dbg !1469, !tbaa !30, !noalias !1465
  %15 = and i64 %14, -2, !dbg !1477
  %16 = icmp eq i64 %15, 4611686018427387902, !dbg !1477
  br i1 %16, label %17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, !dbg !1478

17:                                               ; preds = %3
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc unwind label %102, !dbg !1479

.noexc:                                           ; preds = %17
  unreachable, !dbg !1479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %3
  %18 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %.noexc24 unwind label %102, !dbg !1480

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2, !dbg !1481
  store ptr %19, ptr %7, align 8, !dbg !1485, !tbaa !19, !alias.scope !1465
  %20 = load ptr, ptr %18, align 8, !dbg !1487, !tbaa !96
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2, !dbg !1490
  %22 = icmp eq ptr %20, %21, !dbg !1492
  br i1 %22, label %23, label %29, !dbg !1493

23:                                               ; preds = %.noexc24
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1, !dbg !1494
  %25 = load i64, ptr %24, align 8, !dbg !1494, !tbaa !30
  %26 = add i64 %25, 1, !dbg !1496
  %27 = icmp eq i64 %26, 0, !dbg !1497
  br i1 %27, label %31, label %28, !dbg !1499

28:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %19, ptr nonnull align 8 %20, i64 %26, i1 false), !dbg !1500
  br label %31, !dbg !1501

29:                                               ; preds = %.noexc24
  store ptr %20, ptr %7, align 8, !dbg !1502, !tbaa !96, !alias.scope !1465
  %30 = load i64, ptr %21, align 8, !dbg !1504, !tbaa !37
  store i64 %30, ptr %19, align 8, !dbg !1505, !tbaa !37, !alias.scope !1465
  br label %31

31:                                               ; preds = %29, %28, %23
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1, !dbg !1507
  %33 = load i64, ptr %32, align 8, !dbg !1507, !tbaa !30
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1, !dbg !1509
  store i64 %33, ptr %34, align 8, !dbg !1511, !tbaa !30, !alias.scope !1465
  store ptr %21, ptr %18, align 8, !dbg !1512, !tbaa !96
  store i64 0, ptr %32, align 8, !dbg !1514, !tbaa !30
  store i8 0, ptr %21, align 8, !dbg !1517, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !1519), !dbg !1522
  %35 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 1, i32 1, !dbg !1523
  %36 = load i64, ptr %35, align 8, !dbg !1523, !tbaa !30, !noalias !1519
  %37 = load i64, ptr %34, align 8, !dbg !1529, !tbaa !30, !noalias !1519
  %38 = sub i64 4611686018427387903, %37, !dbg !1534
  %39 = icmp ult i64 %38, %36, !dbg !1535
  br i1 %39, label %40, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, !dbg !1536

40:                                               ; preds = %31
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc25 unwind label %104, !dbg !1537

.noexc25:                                         ; preds = %40
  unreachable, !dbg !1537

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %31
  %41 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 1, !dbg !1538
  %42 = load ptr, ptr %41, align 8, !dbg !1539, !tbaa !96, !noalias !1519
  %43 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %42, i64 noundef %36)
          to label %.noexc26 unwind label %104, !dbg !1541

.noexc26:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2, !dbg !1542
  store ptr %44, ptr %6, align 8, !dbg !1545, !tbaa !19, !alias.scope !1519
  %45 = load ptr, ptr %43, align 8, !dbg !1547, !tbaa !96
  %46 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 2, !dbg !1550
  %47 = icmp eq ptr %45, %46, !dbg !1552
  br i1 %47, label %48, label %54, !dbg !1553

48:                                               ; preds = %.noexc26
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 1, !dbg !1554
  %50 = load i64, ptr %49, align 8, !dbg !1554, !tbaa !30
  %51 = add i64 %50, 1, !dbg !1556
  %52 = icmp eq i64 %51, 0, !dbg !1557
  br i1 %52, label %56, label %53, !dbg !1559

53:                                               ; preds = %48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %44, ptr nonnull align 8 %45, i64 %51, i1 false), !dbg !1560
  br label %56, !dbg !1561

54:                                               ; preds = %.noexc26
  store ptr %45, ptr %6, align 8, !dbg !1562, !tbaa !96, !alias.scope !1519
  %55 = load i64, ptr %46, align 8, !dbg !1564, !tbaa !37
  store i64 %55, ptr %44, align 8, !dbg !1565, !tbaa !37, !alias.scope !1519
  br label %56

56:                                               ; preds = %54, %53, %48
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 0, i32 1, !dbg !1567
  %58 = load i64, ptr %57, align 8, !dbg !1567, !tbaa !30
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1, !dbg !1569
  store i64 %58, ptr %59, align 8, !dbg !1571, !tbaa !30, !alias.scope !1519
  store ptr %46, ptr %43, align 8, !dbg !1572, !tbaa !96
  store i64 0, ptr %57, align 8, !dbg !1574, !tbaa !30
  store i8 0, ptr %46, align 8, !dbg !1577, !tbaa !37
  call void @llvm.experimental.noalias.scope.decl(metadata !1579), !dbg !1582
  %60 = load i64, ptr %59, align 8, !dbg !1583, !tbaa !30, !noalias !1579
  %61 = icmp eq i64 %60, 4611686018427387903, !dbg !1588
  br i1 %61, label %62, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27, !dbg !1589

62:                                               ; preds = %56
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc28 unwind label %106, !dbg !1590

.noexc28:                                         ; preds = %62
  unreachable, !dbg !1590

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27: ; preds = %56
  %63 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %.noexc29 unwind label %106, !dbg !1591

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !1592
  store ptr %64, ptr %0, align 8, !dbg !1595, !tbaa !19, !alias.scope !1579
  %65 = load ptr, ptr %63, align 8, !dbg !1597, !tbaa !96
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 2, !dbg !1600
  %67 = icmp eq ptr %65, %66, !dbg !1602
  br i1 %67, label %68, label %74, !dbg !1603

68:                                               ; preds = %.noexc29
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 1, !dbg !1604
  %70 = load i64, ptr %69, align 8, !dbg !1604, !tbaa !30
  %71 = add i64 %70, 1, !dbg !1606
  %72 = icmp eq i64 %71, 0, !dbg !1607
  br i1 %72, label %76, label %73, !dbg !1609

73:                                               ; preds = %68
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %64, ptr nonnull align 8 %65, i64 %71, i1 false), !dbg !1610
  br label %76, !dbg !1611

74:                                               ; preds = %.noexc29
  store ptr %65, ptr %0, align 8, !dbg !1612, !tbaa !96, !alias.scope !1579
  %75 = load i64, ptr %66, align 8, !dbg !1614, !tbaa !37
  store i64 %75, ptr %64, align 8, !dbg !1615, !tbaa !37, !alias.scope !1579
  br label %76

76:                                               ; preds = %74, %73, %68
  %77 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 1, !dbg !1617
  %78 = load i64, ptr %77, align 8, !dbg !1617, !tbaa !30
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !1619
  store i64 %78, ptr %79, align 8, !dbg !1621, !tbaa !30, !alias.scope !1579
  store ptr %66, ptr %63, align 8, !dbg !1622, !tbaa !96
  store i64 0, ptr %77, align 8, !dbg !1624, !tbaa !30
  store i8 0, ptr %66, align 8, !dbg !1627, !tbaa !37
  %80 = load ptr, ptr %6, align 8, !dbg !1629, !tbaa !96
  %81 = icmp eq ptr %80, %44, !dbg !1634
  br i1 %81, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %82, !dbg !1635

82:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %80) #14, !dbg !1636
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !1640

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %76, %82
  %83 = load ptr, ptr %7, align 8, !dbg !1641, !tbaa !96
  %84 = icmp eq ptr %83, %19, !dbg !1646
  br i1 %84, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %85, !dbg !1647

85:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %83) #14, !dbg !1648
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, !dbg !1652

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %85
  %86 = load ptr, ptr %8, align 8, !dbg !1653, !tbaa !96
  %87 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2, !dbg !1658
  %88 = icmp eq ptr %86, %87, !dbg !1660
  br i1 %88, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %89, !dbg !1661

89:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @_ZdlPv(ptr noundef %86) #14, !dbg !1662
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, !dbg !1666

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %89
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15, !dbg !1463
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %93 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %.not22.i = icmp eq ptr %9, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15, !dbg !1667
  call void @llvm.experimental.noalias.scope.decl(metadata !1668), !dbg !1671
  store ptr %90, ptr %9, align 8, !dbg !1672, !tbaa !19, !alias.scope !1668
  %94 = load ptr, ptr %2, align 8, !dbg !1677, !tbaa !96, !noalias !1668
  %95 = load i64, ptr %91, align 8, !dbg !1679, !tbaa !30, !noalias !1668
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15, !dbg !1681, !noalias !1668
  store i64 %95, ptr %5, align 8, !dbg !1683, !tbaa !1380, !noalias !1668
  %96 = icmp ugt i64 %95, 15, !dbg !1684
  br i1 %96, label %.noexc.i.i, label %._crit_edge.i.i.i, !dbg !1685

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.1
  %97 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %99 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %.not22.i42 = icmp eq ptr %10, %0
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  br label %208, !dbg !1686

102:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %17
  %103 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, !dbg !1687

104:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %40
  %105 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, !dbg !1687

106:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27, %62
  %107 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  %108 = load ptr, ptr %6, align 8, !dbg !1688, !tbaa !96
  %109 = icmp eq ptr %108, %44, !dbg !1693
  br i1 %109, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %110, !dbg !1694

110:                                              ; preds = %106
  call void @_ZdlPv(ptr noundef %108) #14, !dbg !1695
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, !dbg !1699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %110, %106, %104
  %.pn = phi { ptr, i32 } [ %105, %104 ], [ %107, %106 ], [ %107, %110 ]
  %111 = load ptr, ptr %7, align 8, !dbg !1700, !tbaa !96
  %112 = icmp eq ptr %111, %19, !dbg !1705
  br i1 %112, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %113, !dbg !1706

113:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @_ZdlPv(ptr noundef %111) #14, !dbg !1707
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, !dbg !1711

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %102
  %.pn.pn = phi { ptr, i32 } [ %103, %102 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn, %113 ]
  %114 = load ptr, ptr %8, align 8, !dbg !1712, !tbaa !96
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2, !dbg !1717
  %116 = icmp eq ptr %114, %115, !dbg !1719
  br i1 %116, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %117, !dbg !1720

117:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  call void @_ZdlPv(ptr noundef %114) #14, !dbg !1721
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, !dbg !1725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %117
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #15, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15, !dbg !1463
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, !dbg !1463

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %118 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %.noexc37 unwind label %206, !dbg !1726

.noexc37:                                         ; preds = %.noexc.i.i
  store ptr %118, ptr %9, align 8, !dbg !1727, !tbaa !96, !alias.scope !1668
  %119 = load i64, ptr %5, align 8, !dbg !1729, !tbaa !1380, !noalias !1668
  store i64 %119, ptr %90, align 8, !dbg !1730, !tbaa !37, !alias.scope !1668
  br label %._crit_edge.i.i.i, !dbg !1732

._crit_edge.i.i.i:                                ; preds = %.noexc37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %120 = phi ptr [ %118, %.noexc37 ], [ %90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], !dbg !1733
  switch i64 %95, label %123 [
    i64 1, label %121
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ], !dbg !1735

121:                                              ; preds = %._crit_edge.i.i.i
  %122 = load i8, ptr %94, align 1, !dbg !1738, !tbaa !37
  store i8 %122, ptr %120, align 1, !dbg !1740, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, !dbg !1741

123:                                              ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr align 1 %94, i64 %95, i1 false), !dbg !1742
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, !dbg !1744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %123, %121, %._crit_edge.i.i.i
  %124 = load i64, ptr %5, align 8, !dbg !1745, !tbaa !1380, !noalias !1668
  store i64 %124, ptr %92, align 8, !dbg !1746, !tbaa !30, !alias.scope !1668
  %125 = load ptr, ptr %9, align 8, !dbg !1749, !tbaa !96, !alias.scope !1668
  %126 = getelementptr inbounds i8, ptr %125, i64 %124, !dbg !1751
  store i8 0, ptr %126, align 1, !dbg !1752, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15, !dbg !1754, !noalias !1668
  %127 = load i64, ptr %92, align 8, !dbg !1755, !tbaa !30, !alias.scope !1668
  %128 = icmp eq i64 %127, 4611686018427387903, !dbg !1759
  br i1 %128, label %129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, !dbg !1760

129:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc.i unwind label %.loopexit.split-lp, !dbg !1761

.noexc.i:                                         ; preds = %129
  unreachable, !dbg !1761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %130 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit, !dbg !1762

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup, !dbg !1763
  br label %131, !dbg !1763

.loopexit.split-lp:                               ; preds = %129
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup, !dbg !1763
  br label %131, !dbg !1763

131:                                              ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %132 = load ptr, ptr %9, align 8, !dbg !1764, !tbaa !96, !alias.scope !1668
  %133 = icmp eq ptr %132, %90, !dbg !1769
  br i1 %133, label %.body, label %134, !dbg !1770

134:                                              ; preds = %131
  call void @_ZdlPv(ptr noundef %132) #14, !dbg !1771
  br label %.body, !dbg !1775

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %135 = load ptr, ptr %9, align 8, !dbg !1776, !tbaa !96
  %136 = icmp eq ptr %135, %90, !dbg !1781
  br i1 %136, label %137, label %148, !dbg !1782

137:                                              ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %.not22.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %138, !dbg !1783, !prof !1784

138:                                              ; preds = %137
  %139 = load i64, ptr %92, align 8, !dbg !1785, !tbaa !30
  %.not23.i = icmp eq i64 %139, 0, !dbg !1787
  br i1 %.not23.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, label %140, !dbg !1787

140:                                              ; preds = %138
  %141 = load ptr, ptr %2, align 8, !dbg !1788, !tbaa !96
  %cond.i = icmp eq i64 %139, 1, !dbg !1790
  br i1 %cond.i, label %142, label %144, !dbg !1790

142:                                              ; preds = %140
  %143 = load i8, ptr %90, align 8, !dbg !1792, !tbaa !37
  store i8 %143, ptr %141, align 1, !dbg !1794, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !dbg !1795

144:                                              ; preds = %140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr nonnull align 8 %90, i64 %139, i1 false), !dbg !1796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !dbg !1798

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %144, %142, %138
  %145 = load i64, ptr %92, align 8, !dbg !1799, !tbaa !30
  store i64 %145, ptr %91, align 8, !dbg !1801, !tbaa !30
  %146 = load ptr, ptr %2, align 8, !dbg !1804, !tbaa !96
  %147 = getelementptr inbounds i8, ptr %146, i64 %145, !dbg !1806
  store i8 0, ptr %147, align 1, !dbg !1807, !tbaa !37
  %.pre.i = load ptr, ptr %9, align 8, !dbg !1809, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, !dbg !1814

148:                                              ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %149 = load ptr, ptr %2, align 8, !dbg !1815, !tbaa !96
  %150 = icmp eq ptr %149, %93, !dbg !1818
  br i1 %150, label %.thread.i, label %152, !dbg !1819

.thread.i:                                        ; preds = %148
  store ptr %135, ptr %2, align 8, !dbg !1820, !tbaa !96
  %151 = load <2 x i64>, ptr %92, align 8, !dbg !1822, !tbaa !37
  store <2 x i64> %151, ptr %91, align 8, !dbg !1824, !tbaa !37
  br label %156, !dbg !1826

152:                                              ; preds = %148
  %153 = load i64, ptr %93, align 8, !dbg !1827, !tbaa !37
  store ptr %135, ptr %2, align 8, !dbg !1820, !tbaa !96
  %154 = load <2 x i64>, ptr %92, align 8, !dbg !1822, !tbaa !37
  store <2 x i64> %154, ptr %91, align 8, !dbg !1824, !tbaa !37
  %.not.i = icmp eq ptr %149, null, !dbg !1826
  br i1 %.not.i, label %156, label %155, !dbg !1826

155:                                              ; preds = %152
  store ptr %149, ptr %9, align 8, !dbg !1828, !tbaa !96
  store i64 %153, ptr %90, align 8, !dbg !1830, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, !dbg !1832

156:                                              ; preds = %152, %.thread.i
  store ptr %90, ptr %9, align 8, !dbg !1833, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %155, %156
  %157 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %149, %155 ], [ %90, %156 ], [ %90, %137 ], !dbg !1809
  store i64 0, ptr %92, align 8, !dbg !1835, !tbaa !30
  store i8 0, ptr %157, align 1, !dbg !1837, !tbaa !37
  %158 = load ptr, ptr %9, align 8, !dbg !1839, !tbaa !96
  %159 = icmp eq ptr %158, %90, !dbg !1844
  br i1 %159, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %160, !dbg !1845

160:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %158) #14, !dbg !1846
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, !dbg !1850

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15, !dbg !1851
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15, !dbg !1667
  call void @llvm.experimental.noalias.scope.decl(metadata !1852), !dbg !1671
  store ptr %90, ptr %9, align 8, !dbg !1672, !tbaa !19, !alias.scope !1852
  %161 = load ptr, ptr %2, align 8, !dbg !1677, !tbaa !96, !noalias !1852
  %162 = load i64, ptr %91, align 8, !dbg !1679, !tbaa !30, !noalias !1852
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15, !dbg !1681, !noalias !1852
  store i64 %162, ptr %5, align 8, !dbg !1683, !tbaa !1380, !noalias !1852
  %163 = icmp ugt i64 %162, 15, !dbg !1684
  br i1 %163, label %.noexc.i.i.1, label %._crit_edge.i.i.i.1, !dbg !1685

.noexc.i.i.1:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %164 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 0)
          to label %.noexc37.1 unwind label %206, !dbg !1726

.noexc37.1:                                       ; preds = %.noexc.i.i.1
  store ptr %164, ptr %9, align 8, !dbg !1727, !tbaa !96, !alias.scope !1852
  %165 = load i64, ptr %5, align 8, !dbg !1729, !tbaa !1380, !noalias !1852
  store i64 %165, ptr %90, align 8, !dbg !1730, !tbaa !37, !alias.scope !1852
  br label %._crit_edge.i.i.i.1, !dbg !1732

._crit_edge.i.i.i.1:                              ; preds = %.noexc37.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %166 = phi ptr [ %164, %.noexc37.1 ], [ %90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], !dbg !1733
  switch i64 %162, label %169 [
    i64 1, label %167
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.1
  ], !dbg !1735

167:                                              ; preds = %._crit_edge.i.i.i.1
  %168 = load i8, ptr %161, align 1, !dbg !1738, !tbaa !37
  store i8 %168, ptr %166, align 1, !dbg !1740, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.1, !dbg !1741

169:                                              ; preds = %._crit_edge.i.i.i.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %166, ptr align 1 %161, i64 %162, i1 false), !dbg !1742
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.1, !dbg !1744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.1: ; preds = %169, %167, %._crit_edge.i.i.i.1
  %170 = load i64, ptr %5, align 8, !dbg !1745, !tbaa !1380, !noalias !1852
  store i64 %170, ptr %92, align 8, !dbg !1746, !tbaa !30, !alias.scope !1852
  %171 = load ptr, ptr %9, align 8, !dbg !1749, !tbaa !96, !alias.scope !1852
  %172 = getelementptr inbounds i8, ptr %171, i64 %170, !dbg !1751
  store i8 0, ptr %172, align 1, !dbg !1752, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15, !dbg !1754, !noalias !1852
  %173 = load i64, ptr %92, align 8, !dbg !1755, !tbaa !30, !alias.scope !1852
  %174 = icmp eq i64 %173, 4611686018427387903, !dbg !1759
  br i1 %174, label %129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1, !dbg !1760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.1
  %175 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.1 unwind label %.loopexit, !dbg !1762

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.1
  %176 = load ptr, ptr %9, align 8, !dbg !1776, !tbaa !96
  %177 = icmp eq ptr %176, %90, !dbg !1781
  br i1 %177, label %187, label %178, !dbg !1782

178:                                              ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.1
  %179 = load ptr, ptr %2, align 8, !dbg !1815, !tbaa !96
  %180 = icmp eq ptr %179, %93, !dbg !1818
  br i1 %180, label %.thread.i.1, label %181, !dbg !1819

181:                                              ; preds = %178
  %182 = load i64, ptr %93, align 8, !dbg !1827, !tbaa !37
  store ptr %176, ptr %2, align 8, !dbg !1820, !tbaa !96
  %183 = load <2 x i64>, ptr %92, align 8, !dbg !1822, !tbaa !37
  store <2 x i64> %183, ptr %91, align 8, !dbg !1824, !tbaa !37
  %.not.i.1 = icmp eq ptr %179, null, !dbg !1826
  br i1 %.not.i.1, label %186, label %184, !dbg !1826

184:                                              ; preds = %181
  store ptr %179, ptr %9, align 8, !dbg !1828, !tbaa !96
  store i64 %182, ptr %90, align 8, !dbg !1830, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1, !dbg !1832

.thread.i.1:                                      ; preds = %178
  store ptr %176, ptr %2, align 8, !dbg !1820, !tbaa !96
  %185 = load <2 x i64>, ptr %92, align 8, !dbg !1822, !tbaa !37
  store <2 x i64> %185, ptr %91, align 8, !dbg !1824, !tbaa !37
  br label %186, !dbg !1826

186:                                              ; preds = %.thread.i.1, %181
  store ptr %90, ptr %9, align 8, !dbg !1833, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1

187:                                              ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.1
  br i1 %.not22.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1, label %188, !dbg !1783, !prof !1784

188:                                              ; preds = %187
  %189 = load i64, ptr %92, align 8, !dbg !1785, !tbaa !30
  %.not23.i.1 = icmp eq i64 %189, 0, !dbg !1787
  br i1 %.not23.i.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.1, label %190, !dbg !1787

190:                                              ; preds = %188
  %191 = load ptr, ptr %2, align 8, !dbg !1788, !tbaa !96
  %cond.i.1 = icmp eq i64 %189, 1, !dbg !1790
  br i1 %cond.i.1, label %193, label %192, !dbg !1790

192:                                              ; preds = %190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %191, ptr nonnull align 8 %90, i64 %189, i1 false), !dbg !1796
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.1, !dbg !1798

193:                                              ; preds = %190
  %194 = load i8, ptr %90, align 8, !dbg !1792, !tbaa !37
  store i8 %194, ptr %191, align 1, !dbg !1794, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.1, !dbg !1795

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.1: ; preds = %193, %192, %188
  %195 = load i64, ptr %92, align 8, !dbg !1799, !tbaa !30
  store i64 %195, ptr %91, align 8, !dbg !1801, !tbaa !30
  %196 = load ptr, ptr %2, align 8, !dbg !1804, !tbaa !96
  %197 = getelementptr inbounds i8, ptr %196, i64 %195, !dbg !1806
  store i8 0, ptr %197, align 1, !dbg !1807, !tbaa !37
  %.pre.i.1 = load ptr, ptr %9, align 8, !dbg !1809, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1, !dbg !1814

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.1, %187, %186, %184
  %198 = phi ptr [ %.pre.i.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.1 ], [ %179, %184 ], [ %90, %186 ], [ %90, %187 ], !dbg !1809
  store i64 0, ptr %92, align 8, !dbg !1835, !tbaa !30
  store i8 0, ptr %198, align 1, !dbg !1837, !tbaa !37
  %199 = load ptr, ptr %9, align 8, !dbg !1839, !tbaa !96
  %200 = icmp eq ptr %199, %90, !dbg !1844
  br i1 %200, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.1, label %201, !dbg !1845

201:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1
  call void @_ZdlPv(ptr noundef %199) #14, !dbg !1846
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.1, !dbg !1850

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.1: ; preds = %201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15, !dbg !1851
  %202 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 2
  %203 = getelementptr inbounds %class.YAML_Element, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %204 = load ptr, ptr %203, align 8, !dbg !1854, !tbaa !123
  %205 = load ptr, ptr %202, align 8, !dbg !1856, !tbaa !74
  %.not = icmp eq ptr %204, %205, !dbg !1857
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1686

206:                                              ; preds = %.noexc.i.i.1, %.noexc.i.i
  %207 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  br label %.body, !dbg !1851

.body:                                            ; preds = %131, %134, %206
  %eh.lpad-body = phi { ptr, i32 } [ %207, %206 ], [ %lpad.phi, %134 ], [ %lpad.phi, %131 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15, !dbg !1851
  br label %295, !dbg !1858

208:                                              ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %209 = phi ptr [ %205, %.lr.ph ], [ %277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  %.061 = phi i64 [ 0, %.lr.ph ], [ %275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #15, !dbg !1859
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #15, !dbg !1860
  %210 = getelementptr inbounds ptr, ptr %209, i64 %.061, !dbg !1861
  %211 = load ptr, ptr %210, align 8, !dbg !1860, !tbaa !176
  store ptr %97, ptr %12, align 8, !dbg !1863, !tbaa !19
  %212 = load ptr, ptr %2, align 8, !dbg !1866, !tbaa !96
  %213 = load i64, ptr %91, align 8, !dbg !1868, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15, !dbg !1870
  store i64 %213, ptr %4, align 8, !dbg !1872, !tbaa !1380
  %214 = icmp ugt i64 %213, 15, !dbg !1873
  br i1 %214, label %.noexc.i39, label %._crit_edge.i.i, !dbg !1874

.noexc.i39:                                       ; preds = %208
  %215 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
          to label %.noexc40 unwind label %283, !dbg !1875

.noexc40:                                         ; preds = %.noexc.i39
  store ptr %215, ptr %12, align 8, !dbg !1876, !tbaa !96
  %216 = load i64, ptr %4, align 8, !dbg !1878, !tbaa !1380
  store i64 %216, ptr %97, align 8, !dbg !1879, !tbaa !37
  br label %._crit_edge.i.i, !dbg !1881

._crit_edge.i.i:                                  ; preds = %.noexc40, %208
  %217 = phi ptr [ %215, %.noexc40 ], [ %97, %208 ], !dbg !1882
  switch i64 %213, label %220 [
    i64 1, label %218
    i64 0, label %221
  ], !dbg !1884

218:                                              ; preds = %._crit_edge.i.i
  %219 = load i8, ptr %212, align 1, !dbg !1887, !tbaa !37
  store i8 %219, ptr %217, align 1, !dbg !1889, !tbaa !37
  br label %221, !dbg !1890

220:                                              ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %217, ptr align 1 %212, i64 %213, i1 false), !dbg !1891
  br label %221, !dbg !1893

221:                                              ; preds = %220, %218, %._crit_edge.i.i
  %222 = load i64, ptr %4, align 8, !dbg !1894, !tbaa !1380
  store i64 %222, ptr %98, align 8, !dbg !1895, !tbaa !30
  %223 = load ptr, ptr %12, align 8, !dbg !1898, !tbaa !96
  %224 = getelementptr inbounds i8, ptr %223, i64 %222, !dbg !1900
  store i8 0, ptr %224, align 1, !dbg !1901, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15, !dbg !1903
  invoke void @_ZN12YAML_Element9printYAMLENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(88) %211, ptr noundef nonnull %12)
          to label %225 unwind label %285, !dbg !1904

225:                                              ; preds = %221
  call void @llvm.experimental.noalias.scope.decl(metadata !1905), !dbg !1908
  %226 = load i64, ptr %79, align 8, !dbg !1909, !tbaa !30, !noalias !1905
  %227 = load ptr, ptr %0, align 8, !dbg !1915, !tbaa !96, !noalias !1905
  %228 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %227, i64 noundef %226)
          to label %.noexc41 unwind label %287, !dbg !1917

.noexc41:                                         ; preds = %225
  store ptr %99, ptr %10, align 8, !dbg !1919, !tbaa !19, !alias.scope !1905
  %229 = load ptr, ptr %228, align 8, !dbg !1922, !tbaa !96
  %230 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %228, i64 0, i32 2, !dbg !1925
  %231 = icmp eq ptr %229, %230, !dbg !1927
  br i1 %231, label %232, label %238, !dbg !1928

232:                                              ; preds = %.noexc41
  %233 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %228, i64 0, i32 1, !dbg !1929
  %234 = load i64, ptr %233, align 8, !dbg !1929, !tbaa !30
  %235 = add i64 %234, 1, !dbg !1931
  %236 = icmp eq i64 %235, 0, !dbg !1932
  br i1 %236, label %240, label %237, !dbg !1934

237:                                              ; preds = %232
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %99, ptr nonnull align 8 %229, i64 %235, i1 false), !dbg !1935
  br label %240, !dbg !1936

238:                                              ; preds = %.noexc41
  store ptr %229, ptr %10, align 8, !dbg !1937, !tbaa !96, !alias.scope !1905
  %239 = load i64, ptr %230, align 8, !dbg !1939, !tbaa !37
  store i64 %239, ptr %99, align 8, !dbg !1940, !tbaa !37, !alias.scope !1905
  br label %240

240:                                              ; preds = %238, %237, %232
  %241 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %228, i64 0, i32 1, !dbg !1942
  %242 = load i64, ptr %241, align 8, !dbg !1942, !tbaa !30
  store i64 %242, ptr %100, align 8, !dbg !1944, !tbaa !30, !alias.scope !1905
  store ptr %230, ptr %228, align 8, !dbg !1946, !tbaa !96
  store i64 0, ptr %241, align 8, !dbg !1948, !tbaa !30
  store i8 0, ptr %230, align 8, !dbg !1951, !tbaa !37
  %243 = load ptr, ptr %10, align 8, !dbg !1953, !tbaa !96
  %244 = icmp eq ptr %243, %99, !dbg !1957
  br i1 %244, label %245, label %256, !dbg !1958

245:                                              ; preds = %240
  br i1 %.not22.i42, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, label %246, !dbg !1959, !prof !1784

246:                                              ; preds = %245
  %247 = load i64, ptr %100, align 8, !dbg !1960, !tbaa !30
  %.not23.i43 = icmp eq i64 %247, 0, !dbg !1962
  br i1 %.not23.i43, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i46, label %248, !dbg !1962

248:                                              ; preds = %246
  %249 = load ptr, ptr %0, align 8, !dbg !1963, !tbaa !96
  %cond.i44 = icmp eq i64 %247, 1, !dbg !1965
  br i1 %cond.i44, label %250, label %252, !dbg !1965

250:                                              ; preds = %248
  %251 = load i8, ptr %99, align 8, !dbg !1967, !tbaa !37
  store i8 %251, ptr %249, align 1, !dbg !1969, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i46, !dbg !1970

252:                                              ; preds = %248
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %249, ptr nonnull align 8 %99, i64 %247, i1 false), !dbg !1971
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i46, !dbg !1973

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i46: ; preds = %252, %250, %246
  %253 = load i64, ptr %100, align 8, !dbg !1974, !tbaa !30
  store i64 %253, ptr %79, align 8, !dbg !1976, !tbaa !30
  %254 = load ptr, ptr %0, align 8, !dbg !1979, !tbaa !96
  %255 = getelementptr inbounds i8, ptr %254, i64 %253, !dbg !1981
  store i8 0, ptr %255, align 1, !dbg !1982, !tbaa !37
  %.pre.i45 = load ptr, ptr %10, align 8, !dbg !1984, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, !dbg !1988

256:                                              ; preds = %240
  %257 = load ptr, ptr %0, align 8, !dbg !1989, !tbaa !96
  %258 = icmp eq ptr %257, %64, !dbg !1992
  br i1 %258, label %.thread.i47, label %260, !dbg !1993

.thread.i47:                                      ; preds = %256
  store ptr %243, ptr %0, align 8, !dbg !1994, !tbaa !96
  %259 = load <2 x i64>, ptr %100, align 8, !dbg !1996, !tbaa !37
  store <2 x i64> %259, ptr %79, align 8, !dbg !1998, !tbaa !37
  br label %264, !dbg !2000

260:                                              ; preds = %256
  %261 = load i64, ptr %64, align 8, !dbg !2001, !tbaa !37
  store ptr %243, ptr %0, align 8, !dbg !1994, !tbaa !96
  %262 = load <2 x i64>, ptr %100, align 8, !dbg !1996, !tbaa !37
  store <2 x i64> %262, ptr %79, align 8, !dbg !1998, !tbaa !37
  %.not.i48 = icmp eq ptr %257, null, !dbg !2000
  br i1 %.not.i48, label %264, label %263, !dbg !2000

263:                                              ; preds = %260
  store ptr %257, ptr %10, align 8, !dbg !2002, !tbaa !96
  store i64 %261, ptr %99, align 8, !dbg !2004, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, !dbg !2006

264:                                              ; preds = %260, %.thread.i47
  store ptr %99, ptr %10, align 8, !dbg !2007, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49: ; preds = %245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i46, %263, %264
  %265 = phi ptr [ %.pre.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i46 ], [ %257, %263 ], [ %99, %264 ], [ %99, %245 ], !dbg !1984
  store i64 0, ptr %100, align 8, !dbg !2009, !tbaa !30
  store i8 0, ptr %265, align 1, !dbg !2011, !tbaa !37
  %266 = load ptr, ptr %10, align 8, !dbg !2013, !tbaa !96
  %267 = icmp eq ptr %266, %99, !dbg !2018
  br i1 %267, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %268, !dbg !2019

268:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49
  call void @_ZdlPv(ptr noundef %266) #14, !dbg !2020
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, !dbg !2024

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit49, %268
  %269 = load ptr, ptr %11, align 8, !dbg !2025, !tbaa !96
  %270 = icmp eq ptr %269, %101, !dbg !2030
  br i1 %270, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %271, !dbg !2031

271:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @_ZdlPv(ptr noundef %269) #14, !dbg !2032
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, !dbg !2036

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %271
  %272 = load ptr, ptr %12, align 8, !dbg !2037, !tbaa !96
  %273 = icmp eq ptr %272, %97, !dbg !2042
  br i1 %273, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %274, !dbg !2043

274:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(ptr noundef %272) #14, !dbg !2044
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, !dbg !2048

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %274
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #15, !dbg !2049
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #15, !dbg !2049
  %275 = add nuw i64 %.061, 1, !dbg !2050
  %276 = load ptr, ptr %203, align 8, !dbg !1854, !tbaa !123
  %277 = load ptr, ptr %202, align 8, !dbg !1856, !tbaa !74
  %278 = ptrtoint ptr %276 to i64, !dbg !2051
  %279 = ptrtoint ptr %277 to i64, !dbg !2051
  %280 = sub i64 %278, %279, !dbg !2051
  %281 = ashr exact i64 %280, 3, !dbg !2051
  %282 = icmp ult i64 %275, %281, !dbg !1857
  br i1 %282, label %208, label %._crit_edge, !dbg !1686, !llvm.loop !2052

283:                                              ; preds = %.noexc.i39
  %284 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, !dbg !1687

285:                                              ; preds = %221
  %286 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, !dbg !1687

287:                                              ; preds = %225
  %288 = landingpad { ptr, i32 }
          cleanup, !dbg !1687
  %289 = load ptr, ptr %11, align 8, !dbg !2054, !tbaa !96
  %290 = icmp eq ptr %289, %101, !dbg !2059
  br i1 %290, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %291, !dbg !2060

291:                                              ; preds = %287
  call void @_ZdlPv(ptr noundef %289) #14, !dbg !2061
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, !dbg !2065

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %291, %287, %285
  %.pn18 = phi { ptr, i32 } [ %286, %285 ], [ %288, %287 ], [ %288, %291 ]
  %292 = load ptr, ptr %12, align 8, !dbg !2066, !tbaa !96
  %293 = icmp eq ptr %292, %97, !dbg !2071
  br i1 %293, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %294, !dbg !2072

294:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @_ZdlPv(ptr noundef %292) #14, !dbg !2073
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, !dbg !2077

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %283
  %.pn18.pn = phi { ptr, i32 } [ %284, %283 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn18, %294 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #15, !dbg !2049
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #15, !dbg !2049
  br label %295, !dbg !1686

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.1
  ret void, !dbg !1687

295:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %.body
  %.pn19 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn18.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  %296 = load ptr, ptr %0, align 8, !dbg !2078, !tbaa !96
  %297 = icmp eq ptr %296, %64, !dbg !2083
  br i1 %297, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %298, !dbg !2084

298:                                              ; preds = %295
  call void @_ZdlPv(ptr noundef %296) #14, !dbg !2085
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, !dbg !2089

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %298, %295, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn19.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn19, %295 ], [ %.pn19, %298 ]
  resume { ptr, i32 } %.pn19.pn, !dbg !1463
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_(ptr noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !dbg !2090 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2, !dbg !2091
  store ptr %5, ptr %0, align 8, !dbg !2094, !tbaa !19
  %6 = load ptr, ptr %1, align 8, !dbg !2096, !tbaa !96
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1, !dbg !2098
  %8 = load i64, ptr %7, align 8, !dbg !2098, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15, !dbg !2100
  store i64 %8, ptr %4, align 8, !dbg !2102, !tbaa !1380
  %9 = icmp ugt i64 %8, 15, !dbg !2103
  br i1 %9, label %.noexc.i, label %._crit_edge.i.i, !dbg !2104

.noexc.i:                                         ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0), !dbg !2105
  store ptr %10, ptr %0, align 8, !dbg !2106, !tbaa !96
  %11 = load i64, ptr %4, align 8, !dbg !2108, !tbaa !1380
  store i64 %11, ptr %5, align 8, !dbg !2109, !tbaa !37
  br label %._crit_edge.i.i, !dbg !2111

._crit_edge.i.i:                                  ; preds = %.noexc.i, %3
  %12 = phi ptr [ %10, %.noexc.i ], [ %5, %3 ], !dbg !2112
  switch i64 %8, label %15 [
    i64 1, label %13
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ], !dbg !2114

13:                                               ; preds = %._crit_edge.i.i
  %14 = load i8, ptr %6, align 1, !dbg !2117, !tbaa !37
  store i8 %14, ptr %12, align 1, !dbg !2119, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, !dbg !2120

15:                                               ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %6, i64 %8, i1 false), !dbg !2121
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, !dbg !2123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %13, %15
  %16 = load i64, ptr %4, align 8, !dbg !2124, !tbaa !1380
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1, !dbg !2125
  store i64 %16, ptr %17, align 8, !dbg !2128, !tbaa !30
  %18 = load ptr, ptr %0, align 8, !dbg !2129, !tbaa !96
  %19 = getelementptr inbounds i8, ptr %18, i64 %16, !dbg !2131
  store i8 0, ptr %19, align 1, !dbg !2132, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15, !dbg !2134
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1, !dbg !2135
  %21 = load i64, ptr %20, align 8, !dbg !2135, !tbaa !30
  %22 = load i64, ptr %17, align 8, !dbg !2138, !tbaa !30
  %23 = sub i64 4611686018427387903, %22, !dbg !2142
  %24 = icmp ult i64 %23, %21, !dbg !2143
  br i1 %24, label %25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, !dbg !2144

25:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc unwind label %28, !dbg !2145

.noexc:                                           ; preds = %25
  unreachable, !dbg !2145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %26 = load ptr, ptr %2, align 8, !dbg !2146, !tbaa !96
  %27 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, i64 noundef %21)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %28, !dbg !2148

28:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %25
  %29 = landingpad { ptr, i32 }
          cleanup, !dbg !2149
  %30 = load ptr, ptr %0, align 8, !dbg !2150, !tbaa !96
  %31 = icmp eq ptr %30, %5, !dbg !2155
  br i1 %31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %32, !dbg !2156

32:                                               ; preds = %28
  call void @_ZdlPv(ptr noundef %30) #14, !dbg !2157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !2161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %28, %32
  resume { ptr, i32 } %29, !dbg !2149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  ret void, !dbg !2149
}

declare dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_YAML_Element.cpp() #3 section ".text.startup" !dbg !2162 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !2163
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15, !dbg !2168
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "YAML_Element.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)"}
!7 = distinct !DISubprogram(name: "YAML_Element", scope: !1, file: !1, line: 35, type: !8, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!8 = !DISubroutineType(types: !9)
!9 = !{}
!10 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !13)
!11 = distinct !DISubprogram(name: "_M_local_data", scope: !12, file: !12, line: 238, type: !8, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!12 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/basic_string.h", directory: "")
!13 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !15)
!14 = distinct !DISubprogram(name: "basic_string", scope: !12, file: !12, line: 514, type: !8, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!15 = distinct !DILocation(line: 35, column: 15, scope: !7)
!16 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !18)
!17 = distinct !DISubprogram(name: "_Alloc_hider", scope: !12, file: !12, line: 203, type: !8, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!18 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !15)
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"any pointer", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C++ TBAA"}
!24 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !26)
!25 = distinct !DISubprogram(name: "_M_length", scope: !12, file: !12, line: 228, type: !8, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!26 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !28)
!27 = distinct !DISubprogram(name: "_M_set_length", scope: !12, file: !12, line: 265, type: !8, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!28 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !15)
!29 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !26)
!30 = !{!31, !32, i64 8}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !32, i64 8, !22, i64 16}
!32 = !{!"long", !22, i64 0}
!33 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !36)
!34 = distinct !DISubprogram(name: "assign", scope: !35, file: !35, line: 347, type: !8, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!35 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/char_traits.h", directory: "")
!36 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !28)
!37 = !{!22, !22, i64 0}
!38 = !DILocation(line: 35, column: 15, scope: !7)
!39 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !40)
!40 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !41)
!41 = distinct !DILocation(line: 35, column: 15, scope: !7)
!42 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !43)
!43 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !41)
!44 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !45)
!45 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !46)
!46 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !41)
!47 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !45)
!48 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !49)
!49 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !46)
!50 = !DILocation(line: 100, column: 16, scope: !51, inlinedAt: !53)
!51 = distinct !DISubprogram(name: "_Vector_impl_data", scope: !52, file: !52, line: 99, type: !8, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!52 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/stl_vector.h", directory: "")
!53 = distinct !DILocation(line: 137, column: 2, scope: !54, inlinedAt: !55)
!54 = distinct !DISubprogram(name: "_Vector_impl", scope: !52, file: !52, line: 137, type: !8, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!55 = distinct !DILocation(line: 312, column: 7, scope: !56, inlinedAt: !57)
!56 = distinct !DISubprogram(name: "_Vector_base", scope: !52, file: !52, line: 312, type: !8, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!57 = distinct !DILocation(line: 526, column: 7, scope: !58, inlinedAt: !59)
!58 = distinct !DISubprogram(name: "vector", scope: !52, file: !52, line: 526, type: !8, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!59 = distinct !DILocation(line: 35, column: 15, scope: !7)
!60 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !62)
!61 = distinct !DISubprogram(name: "assign", scope: !12, file: !12, line: 1539, type: !8, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!62 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !64)
!63 = distinct !DISubprogram(name: "operator=", scope: !12, file: !12, line: 802, type: !8, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!64 = distinct !DILocation(line: 36, column: 7, scope: !7)
!65 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !66)
!66 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !67)
!67 = distinct !DILocation(line: 37, column: 9, scope: !7)
!68 = !DILocation(line: 38, column: 1, scope: !7)
!69 = !DILocation(line: 366, column: 24, scope: !70, inlinedAt: !71)
!70 = distinct !DISubprogram(name: "~_Vector_base", scope: !52, file: !52, line: 364, type: !8, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!71 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "~vector", scope: !52, file: !52, line: 728, type: !8, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!73 = distinct !DILocation(line: 38, column: 1, scope: !7)
!74 = !{!75, !21, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIP12YAML_ElementSaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!76 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !78)
!77 = distinct !DISubprogram(name: "_M_deallocate", scope: !52, file: !52, line: 383, type: !8, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!78 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !71)
!79 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !82)
!80 = distinct !DISubprogram(name: "deallocate", scope: !81, file: !81, line: 142, type: !8, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!81 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/new_allocator.h", directory: "")
!82 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !85)
!83 = distinct !DISubprogram(name: "deallocate", scope: !84, file: !84, line: 495, type: !8, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!84 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/alloc_traits.h", directory: "")
!85 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !78)
!86 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !78)
!87 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "_M_data", scope: !12, file: !12, line: 233, type: !8, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!89 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !91)
!90 = distinct !DISubprogram(name: "_M_is_local", scope: !12, file: !12, line: 273, type: !8, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!91 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !93)
!92 = distinct !DISubprogram(name: "_M_dispose", scope: !12, file: !12, line: 283, type: !8, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!93 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !95)
!94 = distinct !DISubprogram(name: "~basic_string", scope: !12, file: !12, line: 793, type: !8, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!95 = distinct !DILocation(line: 38, column: 1, scope: !7)
!96 = !{!31, !21, i64 0}
!97 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !91)
!98 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !93)
!99 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "deallocate", scope: !81, file: !81, line: 142, type: !8, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!101 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !103)
!102 = distinct !DISubprogram(name: "deallocate", scope: !84, file: !84, line: 495, type: !8, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!103 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !105)
!104 = distinct !DISubprogram(name: "_M_destroy", scope: !12, file: !12, line: 291, type: !8, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!105 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !93)
!106 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !93)
!107 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !108)
!108 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !109)
!109 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !110)
!110 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !111)
!111 = distinct !DILocation(line: 38, column: 1, scope: !7)
!112 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !109)
!113 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !110)
!114 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !115)
!115 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !116)
!116 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !117)
!117 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !110)
!118 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !110)
!119 = distinct !DISubprogram(name: "~YAML_Element", scope: !1, file: !1, line: 40, type: !8, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!120 = !DILocation(line: 988, column: 40, scope: !121, inlinedAt: !122)
!121 = distinct !DISubprogram(name: "size", scope: !52, file: !52, line: 987, type: !8, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!122 = distinct !DILocation(line: 41, column: 31, scope: !119)
!123 = !{!75, !21, i64 8}
!124 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !122)
!125 = !DILocation(line: 41, column: 21, scope: !119)
!126 = !DILocation(line: 41, column: 3, scope: !119)
!127 = !DILocation(line: 1930, column: 16, scope: !128, inlinedAt: !129)
!128 = distinct !DISubprogram(name: "_M_erase_at_end", scope: !52, file: !52, line: 1928, type: !8, scopeLine: 1929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!129 = distinct !DILocation(line: 1601, column: 9, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "clear", scope: !52, file: !52, line: 1600, type: !8, scopeLine: 1601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!131 = distinct !DILocation(line: 44, column: 12, scope: !119)
!132 = !DILocation(line: 1934, column: 30, scope: !128, inlinedAt: !129)
!133 = !DILocation(line: 1936, column: 4, scope: !128, inlinedAt: !129)
!134 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !135)
!135 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !136)
!136 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !137)
!137 = distinct !DILocation(line: 45, column: 1, scope: !119)
!138 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !139)
!139 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !140)
!140 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !135)
!141 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !135)
!142 = !DILocation(line: 45, column: 1, scope: !119)
!143 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !144)
!144 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !145)
!145 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !146)
!146 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !147)
!147 = distinct !DILocation(line: 45, column: 1, scope: !119)
!148 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !150)
!149 = distinct !DISubprogram(name: "_M_local_data", scope: !12, file: !12, line: 249, type: !8, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!150 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !145)
!151 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !145)
!152 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !146)
!153 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !154)
!154 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !155)
!155 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !156)
!156 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !146)
!157 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !146)
!158 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !159)
!159 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !160)
!160 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !161)
!161 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !162)
!162 = distinct !DILocation(line: 45, column: 1, scope: !119)
!163 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !164)
!164 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !160)
!165 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !160)
!166 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !161)
!167 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !168)
!168 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !169)
!169 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !170)
!170 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !161)
!171 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !161)
!172 = !DILocation(line: 1124, column: 34, scope: !173, inlinedAt: !174)
!173 = distinct !DISubprogram(name: "operator[]", scope: !52, file: !52, line: 1121, type: !8, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!174 = distinct !DILocation(line: 42, column: 12, scope: !119)
!175 = !DILocation(line: 42, column: 12, scope: !119)
!176 = !{!21, !21, i64 0}
!177 = !DILocation(line: 42, column: 5, scope: !119)
!178 = !DILocation(line: 41, column: 40, scope: !119)
!179 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !122)
!180 = distinct !{!180, !126, !181, !182}
!181 = !DILocation(line: 43, column: 3, scope: !119)
!182 = !{!"llvm.loop.mustprogress"}
!183 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 52, type: !8, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!184 = !DILocation(line: 53, column: 9, scope: !183)
!185 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !187)
!186 = distinct !DISubprogram(name: "size", scope: !12, file: !12, line: 1062, type: !8, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!187 = distinct !DILocation(line: 1646, column: 40, scope: !188, inlinedAt: !189)
!188 = distinct !DISubprogram(name: "assign", scope: !12, file: !12, line: 1643, type: !8, scopeLine: 1644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!189 = distinct !DILocation(line: 814, column: 22, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "operator=", scope: !12, file: !12, line: 813, type: !8, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!191 = distinct !DILocation(line: 53, column: 15, scope: !183)
!192 = !DILocation(line: 1646, column: 9, scope: !188, inlinedAt: !189)
!193 = !DILocation(line: 54, column: 3, scope: !183)
!194 = !DILocation(line: 54, column: 28, scope: !183)
!195 = !DILocation(line: 55, column: 27, scope: !183)
!196 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !197)
!197 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !198)
!198 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !199)
!199 = distinct !DILocation(line: 55, column: 31, scope: !183)
!200 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !201)
!201 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !198)
!202 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !203)
!203 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !204)
!204 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !198)
!205 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !203)
!206 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !207)
!207 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !204)
!208 = !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !199)
!209 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !210)
!210 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !211)
!211 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !199)
!212 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !213)
!213 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !211)
!214 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !215)
!215 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !216)
!216 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !211)
!217 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !215)
!218 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !219)
!219 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !216)
!220 = !DILocation(line: 100, column: 16, scope: !51, inlinedAt: !221)
!221 = distinct !DILocation(line: 137, column: 2, scope: !54, inlinedAt: !222)
!222 = distinct !DILocation(line: 312, column: 7, scope: !56, inlinedAt: !223)
!223 = distinct !DILocation(line: 526, column: 7, scope: !58, inlinedAt: !224)
!224 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !199)
!225 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !226)
!226 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !227)
!227 = distinct !DILocation(line: 36, column: 7, scope: !7, inlinedAt: !199)
!228 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !229)
!229 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !230)
!230 = distinct !DILocation(line: 37, column: 9, scope: !7, inlinedAt: !199)
!231 = !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !199)
!232 = !DILocation(line: 366, column: 24, scope: !70, inlinedAt: !233)
!233 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !234)
!234 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !199)
!235 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !236)
!236 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !233)
!237 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !238)
!238 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !239)
!239 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !236)
!240 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !236)
!241 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !242)
!242 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !243)
!243 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !244)
!244 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !245)
!245 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !199)
!246 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !243)
!247 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !244)
!248 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !249)
!249 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !250)
!250 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !251)
!251 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !244)
!252 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !244)
!253 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !254)
!254 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !255)
!255 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !256)
!256 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !257)
!257 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !199)
!258 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !255)
!259 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !256)
!260 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !261)
!261 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !262)
!262 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !263)
!263 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !256)
!264 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !256)
!265 = !DILocation(line: 56, column: 3, scope: !183)
!266 = !DILocation(line: 1278, column: 20, scope: !267, inlinedAt: !268)
!267 = distinct !DISubprogram(name: "push_back", scope: !52, file: !52, line: 1276, type: !8, scopeLine: 1277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!268 = distinct !DILocation(line: 56, column: 12, scope: !183)
!269 = !DILocation(line: 1278, column: 47, scope: !267, inlinedAt: !268)
!270 = !{!75, !21, i64 16}
!271 = !DILocation(line: 1278, column: 30, scope: !267, inlinedAt: !268)
!272 = !DILocation(line: 1278, column: 6, scope: !267, inlinedAt: !268)
!273 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !275)
!274 = distinct !DISubprogram(name: "construct<YAML_Element *, YAML_Element *const &>", scope: !81, file: !81, line: 173, type: !8, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!275 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !277)
!276 = distinct !DISubprogram(name: "construct<YAML_Element *, YAML_Element *const &>", scope: !84, file: !84, line: 511, type: !8, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!277 = distinct !DILocation(line: 1281, column: 6, scope: !267, inlinedAt: !268)
!278 = !DILocation(line: 1283, column: 6, scope: !267, inlinedAt: !268)
!279 = !DILocation(line: 1285, column: 4, scope: !267, inlinedAt: !268)
!280 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !281)
!281 = distinct !DILocation(line: 1893, column: 19, scope: !282, inlinedAt: !283)
!282 = distinct !DISubprogram(name: "_M_check_len", scope: !52, file: !52, line: 1891, type: !8, scopeLine: 1892, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!283 = distinct !DILocation(line: 449, column: 2, scope: !284, inlinedAt: !286)
!284 = distinct !DISubprogram(name: "_M_realloc_insert<YAML_Element *const &>", scope: !285, file: !285, line: 440, type: !8, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!285 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/vector.tcc", directory: "")
!286 = distinct !DILocation(line: 1287, column: 4, scope: !267, inlinedAt: !268)
!287 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !281)
!288 = !DILocation(line: 1893, column: 26, scope: !282, inlinedAt: !283)
!289 = !DILocation(line: 1893, column: 6, scope: !282, inlinedAt: !283)
!290 = !DILocation(line: 1894, column: 4, scope: !282, inlinedAt: !283)
!291 = !DILocation(line: 1896, column: 35, scope: !282, inlinedAt: !283)
!292 = !DILocation(line: 1896, column: 33, scope: !282, inlinedAt: !283)
!293 = !DILocation(line: 1897, column: 16, scope: !282, inlinedAt: !283)
!294 = !DILocation(line: 1897, column: 25, scope: !282, inlinedAt: !283)
!295 = !DILocation(line: 378, column: 13, scope: !296, inlinedAt: !297)
!296 = distinct !DISubprogram(name: "_M_allocate", scope: !52, file: !52, line: 375, type: !8, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!297 = distinct !DILocation(line: 453, column: 33, scope: !284, inlinedAt: !286)
!298 = !DILocation(line: 378, column: 9, scope: !296, inlinedAt: !297)
!299 = !DILocation(line: 137, column: 53, scope: !300, inlinedAt: !301)
!300 = distinct !DISubprogram(name: "allocate", scope: !81, file: !81, line: 112, type: !8, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!301 = distinct !DILocation(line: 464, column: 20, scope: !302, inlinedAt: !303)
!302 = distinct !DISubprogram(name: "allocate", scope: !84, file: !84, line: 463, type: !8, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!303 = distinct !DILocation(line: 378, column: 20, scope: !296, inlinedAt: !297)
!304 = !DILocation(line: 137, column: 27, scope: !300, inlinedAt: !301)
!305 = !DILocation(line: 463, column: 20, scope: !284, inlinedAt: !286)
!306 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !307)
!307 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !308)
!308 = distinct !DILocation(line: 462, column: 4, scope: !284, inlinedAt: !286)
!309 = !DILocation(line: 1105, column: 19, scope: !310, inlinedAt: !312)
!310 = distinct !DISubprogram(name: "__relocate_a_1<YAML_Element *, YAML_Element *>", scope: !311, file: !311, line: 1100, type: !8, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!311 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/stl_uninitialized.h", directory: "")
!312 = distinct !DILocation(line: 1133, column: 14, scope: !313, inlinedAt: !314)
!313 = distinct !DISubprogram(name: "__relocate_a<YAML_Element **, YAML_Element **, std::allocator<YAML_Element *> >", scope: !311, file: !311, line: 1127, type: !8, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!314 = distinct !DILocation(line: 504, column: 9, scope: !315, inlinedAt: !316)
!315 = distinct !DISubprogram(name: "_S_relocate", scope: !52, file: !52, line: 499, type: !8, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!316 = distinct !DILocation(line: 474, column: 23, scope: !284, inlinedAt: !286)
!317 = !DILocation(line: 1105, column: 11, scope: !310, inlinedAt: !312)
!318 = !DILocation(line: 1117, column: 4, scope: !310, inlinedAt: !312)
!319 = !DILocation(line: 1118, column: 2, scope: !310, inlinedAt: !312)
!320 = !DILocation(line: 477, column: 8, scope: !284, inlinedAt: !286)
!321 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !322)
!322 = distinct !DILocation(line: 513, column: 7, scope: !284, inlinedAt: !286)
!323 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !324)
!324 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !325)
!325 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !322)
!326 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !322)
!327 = !DILocation(line: 515, column: 30, scope: !284, inlinedAt: !286)
!328 = !DILocation(line: 516, column: 31, scope: !284, inlinedAt: !286)
!329 = !DILocation(line: 517, column: 53, scope: !284, inlinedAt: !286)
!330 = !DILocation(line: 517, column: 39, scope: !284, inlinedAt: !286)
!331 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !332)
!332 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !333)
!333 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !334)
!334 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !335)
!335 = distinct !DILocation(line: 58, column: 1, scope: !183)
!336 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !337)
!337 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !333)
!338 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !333)
!339 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !334)
!340 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !341)
!341 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !342)
!342 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !343)
!343 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !334)
!344 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !334)
!345 = !DILocation(line: 58, column: 1, scope: !183)
!346 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !347)
!347 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !348)
!348 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !349)
!349 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !350)
!350 = distinct !DILocation(line: 58, column: 1, scope: !183)
!351 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !352)
!352 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !348)
!353 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !348)
!354 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !349)
!355 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !356)
!356 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !357)
!357 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !358)
!358 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !349)
!359 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !349)
!360 = distinct !DISubprogram(name: "convert_double_to_string", scope: !1, file: !1, line: 123, type: !8, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!361 = !DILocation(line: 124, column: 3, scope: !360)
!362 = !DILocation(line: 124, column: 16, scope: !360)
!363 = !DILocation(line: 125, column: 3, scope: !360)
!364 = !DILocation(line: 221, column: 16, scope: !365, inlinedAt: !367)
!365 = distinct !DISubprogram(name: "operator<<", scope: !366, file: !366, line: 220, type: !8, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!366 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/ostream", directory: "")
!367 = distinct !DILocation(line: 125, column: 8, scope: !360)
!368 = !{!369}
!369 = distinct !{!369, !370, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!370 = distinct !{!370, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!371 = !DILocation(line: 126, column: 15, scope: !360)
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!374 = distinct !{!374, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!375 = !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !378)
!376 = distinct !DISubprogram(name: "str", scope: !377, file: !377, line: 1136, type: !8, scopeLine: 1137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!377 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/sstream", directory: "")
!378 = distinct !DILocation(line: 126, column: 15, scope: !360)
!379 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !380)
!380 = distinct !DILocation(line: 528, column: 21, scope: !381, inlinedAt: !382)
!381 = distinct !DISubprogram(name: "basic_string", scope: !12, file: !12, line: 527, type: !8, scopeLine: 529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!382 = distinct !DILocation(line: 244, column: 16, scope: !383, inlinedAt: !384)
!383 = distinct !DISubprogram(name: "str", scope: !377, file: !377, line: 242, type: !8, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!384 = distinct !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !378)
!385 = !DILocation(line: 200, column: 25, scope: !386, inlinedAt: !387)
!386 = distinct !DISubprogram(name: "_Alloc_hider", scope: !12, file: !12, line: 199, type: !8, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!387 = distinct !DILocation(line: 528, column: 9, scope: !381, inlinedAt: !382)
!388 = !{!373, !369}
!389 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !390)
!390 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !391)
!391 = distinct !DILocation(line: 531, column: 2, scope: !381, inlinedAt: !382)
!392 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !390)
!393 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !394)
!394 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !391)
!395 = !DILocation(line: 537, column: 29, scope: !396, inlinedAt: !398)
!396 = distinct !DISubprogram(name: "pptr", scope: !397, file: !397, line: 537, type: !8, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!397 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/streambuf", directory: "")
!398 = distinct !DILocation(line: 432, column: 32, scope: !399, inlinedAt: !400)
!399 = distinct !DISubprogram(name: "_M_high_mark", scope: !377, file: !377, line: 430, type: !8, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!400 = distinct !DILocation(line: 245, column: 24, scope: !383, inlinedAt: !384)
!401 = !{!402, !21, i64 40}
!402 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !21, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !403, i64 56}
!403 = !{!"_ZTSSt6locale", !21, i64 0}
!404 = !DILocation(line: 432, column: 17, scope: !399, inlinedAt: !400)
!405 = !DILocation(line: 245, column: 17, scope: !383, inlinedAt: !384)
!406 = !DILocation(line: 534, column: 30, scope: !407, inlinedAt: !408)
!407 = distinct !DISubprogram(name: "pbase", scope: !397, file: !397, line: 534, type: !8, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!408 = distinct !DILocation(line: 246, column: 23, scope: !383, inlinedAt: !384)
!409 = !{!402, !21, i64 32}
!410 = !DILocation(line: 2368, column: 20, scope: !411, inlinedAt: !412)
!411 = distinct !DISubprogram(name: "replace", scope: !12, file: !12, line: 2361, type: !8, scopeLine: 2363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!412 = distinct !DILocation(line: 1681, column: 24, scope: !413, inlinedAt: !414)
!413 = distinct !DISubprogram(name: "assign<char *, void>", scope: !12, file: !12, line: 1680, type: !8, scopeLine: 1681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!414 = distinct !DILocation(line: 246, column: 10, scope: !383, inlinedAt: !384)
!415 = !DILocation(line: 2170, column: 9, scope: !416, inlinedAt: !417)
!416 = distinct !DISubprogram(name: "replace", scope: !12, file: !12, line: 2166, type: !8, scopeLine: 2168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!417 = distinct !DILocation(line: 2367, column: 15, scope: !411, inlinedAt: !412)
!418 = !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !384)
!419 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !420)
!420 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !421)
!421 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !422)
!422 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !423)
!423 = distinct !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !384)
!424 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !421)
!425 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !422)
!426 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !427)
!427 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !428)
!428 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !429)
!429 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !422)
!430 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !422)
!431 = !DILocation(line: 244, column: 22, scope: !383, inlinedAt: !384)
!432 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !433)
!433 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !434)
!434 = distinct !DILocation(line: 248, column: 10, scope: !383, inlinedAt: !384)
!435 = !DILocation(line: 1055, column: 7, scope: !436, inlinedAt: !437)
!436 = distinct !DISubprogram(name: "~basic_stringstream", scope: !377, file: !377, line: 1054, type: !8, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!437 = distinct !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !439)
!438 = distinct !DISubprogram(name: "~basic_stringstream", scope: !377, file: !377, line: 1054, type: !8, scopeLine: 1055, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!439 = distinct !DILocation(line: 127, column: 1, scope: !360)
!440 = !{!441, !441, i64 0}
!441 = !{!"vtable pointer", !23, i64 0}
!442 = !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !437)
!443 = !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !446)
!444 = distinct !DISubprogram(name: "~basic_stringbuf", scope: !445, file: !445, line: 291, type: !8, scopeLine: 291, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!445 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/sstream.tcc", directory: "")
!446 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !437)
!447 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !448)
!448 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !449)
!449 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !450)
!450 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !451)
!451 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !446)
!452 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !453)
!453 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !449)
!454 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !449)
!455 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !450)
!456 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !457)
!457 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !458)
!458 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !459)
!459 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !450)
!460 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !450)
!461 = !DILocation(line: 203, column: 7, scope: !462, inlinedAt: !463)
!462 = distinct !DISubprogram(name: "~basic_streambuf", scope: !397, file: !397, line: 202, type: !8, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!463 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !446)
!464 = !DILocation(line: 203, column: 9, scope: !462, inlinedAt: !463)
!465 = !DILocation(line: 104, column: 7, scope: !466, inlinedAt: !468)
!466 = distinct !DISubprogram(name: "~basic_istream", scope: !467, file: !467, line: 103, type: !8, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!467 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/istream", directory: "")
!468 = distinct !DILocation(line: 901, column: 27, scope: !469, inlinedAt: !470)
!469 = distinct !DISubprogram(name: "~basic_iostream", scope: !467, file: !467, line: 901, type: !8, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!470 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !437)
!471 = !DILocation(line: 104, column: 9, scope: !466, inlinedAt: !468)
!472 = !DILocation(line: 104, column: 19, scope: !466, inlinedAt: !468)
!473 = !{!474, !32, i64 8}
!474 = !{!"_ZTSSi", !32, i64 8}
!475 = !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !439)
!476 = !DILocation(line: 127, column: 1, scope: !360)
!477 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 60, type: !8, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!478 = !DILocation(line: 61, column: 9, scope: !477)
!479 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !480)
!480 = distinct !DILocation(line: 1646, column: 40, scope: !188, inlinedAt: !481)
!481 = distinct !DILocation(line: 814, column: 22, scope: !190, inlinedAt: !482)
!482 = distinct !DILocation(line: 61, column: 15, scope: !477)
!483 = !DILocation(line: 1646, column: 9, scope: !188, inlinedAt: !481)
!484 = !DILocation(line: 62, column: 3, scope: !477)
!485 = !DILocation(line: 62, column: 28, scope: !477)
!486 = !DILocation(line: 63, column: 27, scope: !477)
!487 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !488)
!488 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !489)
!489 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !490)
!490 = distinct !DILocation(line: 63, column: 31, scope: !477)
!491 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !492)
!492 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !489)
!493 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !494)
!494 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !495)
!495 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !489)
!496 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !494)
!497 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !498)
!498 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !495)
!499 = !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !490)
!500 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !501)
!501 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !502)
!502 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !490)
!503 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !504)
!504 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !502)
!505 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !506)
!506 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !507)
!507 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !502)
!508 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !506)
!509 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !510)
!510 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !507)
!511 = !DILocation(line: 100, column: 16, scope: !51, inlinedAt: !512)
!512 = distinct !DILocation(line: 137, column: 2, scope: !54, inlinedAt: !513)
!513 = distinct !DILocation(line: 312, column: 7, scope: !56, inlinedAt: !514)
!514 = distinct !DILocation(line: 526, column: 7, scope: !58, inlinedAt: !515)
!515 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !490)
!516 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !517)
!517 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !518)
!518 = distinct !DILocation(line: 36, column: 7, scope: !7, inlinedAt: !490)
!519 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !520)
!520 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !521)
!521 = distinct !DILocation(line: 37, column: 9, scope: !7, inlinedAt: !490)
!522 = !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !490)
!523 = !DILocation(line: 366, column: 24, scope: !70, inlinedAt: !524)
!524 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !525)
!525 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !490)
!526 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !527)
!527 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !524)
!528 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !529)
!529 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !530)
!530 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !527)
!531 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !527)
!532 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !533)
!533 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !534)
!534 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !535)
!535 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !536)
!536 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !490)
!537 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !534)
!538 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !535)
!539 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !540)
!540 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !541)
!541 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !542)
!542 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !535)
!543 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !535)
!544 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !545)
!545 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !546)
!546 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !547)
!547 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !548)
!548 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !490)
!549 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !546)
!550 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !547)
!551 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !552)
!552 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !553)
!553 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !554)
!554 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !547)
!555 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !547)
!556 = !DILocation(line: 64, column: 3, scope: !477)
!557 = !DILocation(line: 1278, column: 20, scope: !267, inlinedAt: !558)
!558 = distinct !DILocation(line: 64, column: 12, scope: !477)
!559 = !DILocation(line: 1278, column: 47, scope: !267, inlinedAt: !558)
!560 = !DILocation(line: 1278, column: 30, scope: !267, inlinedAt: !558)
!561 = !DILocation(line: 1278, column: 6, scope: !267, inlinedAt: !558)
!562 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !563)
!563 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !564)
!564 = distinct !DILocation(line: 1281, column: 6, scope: !267, inlinedAt: !558)
!565 = !DILocation(line: 1283, column: 6, scope: !267, inlinedAt: !558)
!566 = !DILocation(line: 1285, column: 4, scope: !267, inlinedAt: !558)
!567 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !568)
!568 = distinct !DILocation(line: 1893, column: 19, scope: !282, inlinedAt: !569)
!569 = distinct !DILocation(line: 449, column: 2, scope: !284, inlinedAt: !570)
!570 = distinct !DILocation(line: 1287, column: 4, scope: !267, inlinedAt: !558)
!571 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !568)
!572 = !DILocation(line: 1893, column: 26, scope: !282, inlinedAt: !569)
!573 = !DILocation(line: 1893, column: 6, scope: !282, inlinedAt: !569)
!574 = !DILocation(line: 1894, column: 4, scope: !282, inlinedAt: !569)
!575 = !DILocation(line: 1896, column: 35, scope: !282, inlinedAt: !569)
!576 = !DILocation(line: 1896, column: 33, scope: !282, inlinedAt: !569)
!577 = !DILocation(line: 1897, column: 16, scope: !282, inlinedAt: !569)
!578 = !DILocation(line: 1897, column: 25, scope: !282, inlinedAt: !569)
!579 = !DILocation(line: 378, column: 13, scope: !296, inlinedAt: !580)
!580 = distinct !DILocation(line: 453, column: 33, scope: !284, inlinedAt: !570)
!581 = !DILocation(line: 378, column: 9, scope: !296, inlinedAt: !580)
!582 = !DILocation(line: 137, column: 53, scope: !300, inlinedAt: !583)
!583 = distinct !DILocation(line: 464, column: 20, scope: !302, inlinedAt: !584)
!584 = distinct !DILocation(line: 378, column: 20, scope: !296, inlinedAt: !580)
!585 = !DILocation(line: 137, column: 27, scope: !300, inlinedAt: !583)
!586 = !DILocation(line: 463, column: 20, scope: !284, inlinedAt: !570)
!587 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !588)
!588 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !589)
!589 = distinct !DILocation(line: 462, column: 4, scope: !284, inlinedAt: !570)
!590 = !DILocation(line: 1105, column: 19, scope: !310, inlinedAt: !591)
!591 = distinct !DILocation(line: 1133, column: 14, scope: !313, inlinedAt: !592)
!592 = distinct !DILocation(line: 504, column: 9, scope: !315, inlinedAt: !593)
!593 = distinct !DILocation(line: 474, column: 23, scope: !284, inlinedAt: !570)
!594 = !DILocation(line: 1105, column: 11, scope: !310, inlinedAt: !591)
!595 = !DILocation(line: 1117, column: 4, scope: !310, inlinedAt: !591)
!596 = !DILocation(line: 1118, column: 2, scope: !310, inlinedAt: !591)
!597 = !DILocation(line: 477, column: 8, scope: !284, inlinedAt: !570)
!598 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !599)
!599 = distinct !DILocation(line: 513, column: 7, scope: !284, inlinedAt: !570)
!600 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !601)
!601 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !602)
!602 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !599)
!603 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !599)
!604 = !DILocation(line: 515, column: 30, scope: !284, inlinedAt: !570)
!605 = !DILocation(line: 516, column: 31, scope: !284, inlinedAt: !570)
!606 = !DILocation(line: 517, column: 53, scope: !284, inlinedAt: !570)
!607 = !DILocation(line: 517, column: 39, scope: !284, inlinedAt: !570)
!608 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !609)
!609 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !610)
!610 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !611)
!611 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !612)
!612 = distinct !DILocation(line: 66, column: 1, scope: !477)
!613 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !614)
!614 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !610)
!615 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !610)
!616 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !611)
!617 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !618)
!618 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !619)
!619 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !620)
!620 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !611)
!621 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !611)
!622 = !DILocation(line: 66, column: 1, scope: !477)
!623 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !624)
!624 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !625)
!625 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !626)
!626 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !627)
!627 = distinct !DILocation(line: 66, column: 1, scope: !477)
!628 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !629)
!629 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !625)
!630 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !625)
!631 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !626)
!632 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !633)
!633 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !634)
!634 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !635)
!635 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !626)
!636 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !626)
!637 = distinct !DISubprogram(name: "convert_int_to_string", scope: !1, file: !1, line: 128, type: !8, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!638 = !DILocation(line: 129, column: 3, scope: !637)
!639 = !DILocation(line: 129, column: 16, scope: !637)
!640 = !DILocation(line: 130, column: 3, scope: !637)
!641 = !DILocation(line: 130, column: 8, scope: !637)
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!644 = distinct !{!644, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!645 = !DILocation(line: 131, column: 15, scope: !637)
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!648 = distinct !{!648, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!649 = !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !650)
!650 = distinct !DILocation(line: 131, column: 15, scope: !637)
!651 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !652)
!652 = distinct !DILocation(line: 528, column: 21, scope: !381, inlinedAt: !653)
!653 = distinct !DILocation(line: 244, column: 16, scope: !383, inlinedAt: !654)
!654 = distinct !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !650)
!655 = !DILocation(line: 200, column: 25, scope: !386, inlinedAt: !656)
!656 = distinct !DILocation(line: 528, column: 9, scope: !381, inlinedAt: !653)
!657 = !{!647, !643}
!658 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !659)
!659 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !660)
!660 = distinct !DILocation(line: 531, column: 2, scope: !381, inlinedAt: !653)
!661 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !659)
!662 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !663)
!663 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !660)
!664 = !DILocation(line: 537, column: 29, scope: !396, inlinedAt: !665)
!665 = distinct !DILocation(line: 432, column: 32, scope: !399, inlinedAt: !666)
!666 = distinct !DILocation(line: 245, column: 24, scope: !383, inlinedAt: !654)
!667 = !DILocation(line: 432, column: 17, scope: !399, inlinedAt: !666)
!668 = !DILocation(line: 245, column: 17, scope: !383, inlinedAt: !654)
!669 = !DILocation(line: 534, column: 30, scope: !407, inlinedAt: !670)
!670 = distinct !DILocation(line: 246, column: 23, scope: !383, inlinedAt: !654)
!671 = !DILocation(line: 2368, column: 20, scope: !411, inlinedAt: !672)
!672 = distinct !DILocation(line: 1681, column: 24, scope: !413, inlinedAt: !673)
!673 = distinct !DILocation(line: 246, column: 10, scope: !383, inlinedAt: !654)
!674 = !DILocation(line: 2170, column: 9, scope: !416, inlinedAt: !675)
!675 = distinct !DILocation(line: 2367, column: 15, scope: !411, inlinedAt: !672)
!676 = !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !654)
!677 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !678)
!678 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !679)
!679 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !680)
!680 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !681)
!681 = distinct !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !654)
!682 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !679)
!683 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !680)
!684 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !685)
!685 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !686)
!686 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !687)
!687 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !680)
!688 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !680)
!689 = !DILocation(line: 244, column: 22, scope: !383, inlinedAt: !654)
!690 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !691)
!691 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !692)
!692 = distinct !DILocation(line: 248, column: 10, scope: !383, inlinedAt: !654)
!693 = !DILocation(line: 1055, column: 7, scope: !436, inlinedAt: !694)
!694 = distinct !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !695)
!695 = distinct !DILocation(line: 132, column: 1, scope: !637)
!696 = !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !694)
!697 = !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !698)
!698 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !694)
!699 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !700)
!700 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !701)
!701 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !702)
!702 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !703)
!703 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !698)
!704 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !705)
!705 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !701)
!706 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !701)
!707 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !702)
!708 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !709)
!709 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !710)
!710 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !711)
!711 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !702)
!712 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !702)
!713 = !DILocation(line: 203, column: 7, scope: !462, inlinedAt: !714)
!714 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !698)
!715 = !DILocation(line: 203, column: 9, scope: !462, inlinedAt: !714)
!716 = !DILocation(line: 104, column: 7, scope: !466, inlinedAt: !717)
!717 = distinct !DILocation(line: 901, column: 27, scope: !469, inlinedAt: !718)
!718 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !694)
!719 = !DILocation(line: 104, column: 9, scope: !466, inlinedAt: !717)
!720 = !DILocation(line: 104, column: 19, scope: !466, inlinedAt: !717)
!721 = !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !695)
!722 = !DILocation(line: 132, column: 1, scope: !637)
!723 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 70, type: !8, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!724 = !DILocation(line: 71, column: 9, scope: !723)
!725 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !726)
!726 = distinct !DILocation(line: 1646, column: 40, scope: !188, inlinedAt: !727)
!727 = distinct !DILocation(line: 814, column: 22, scope: !190, inlinedAt: !728)
!728 = distinct !DILocation(line: 71, column: 15, scope: !723)
!729 = !DILocation(line: 1646, column: 9, scope: !188, inlinedAt: !727)
!730 = !DILocation(line: 72, column: 3, scope: !723)
!731 = !DILocation(line: 72, column: 28, scope: !723)
!732 = !DILocation(line: 73, column: 27, scope: !723)
!733 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !734)
!734 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !735)
!735 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !736)
!736 = distinct !DILocation(line: 73, column: 31, scope: !723)
!737 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !738)
!738 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !735)
!739 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !740)
!740 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !741)
!741 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !735)
!742 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !740)
!743 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !744)
!744 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !741)
!745 = !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !736)
!746 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !747)
!747 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !748)
!748 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !736)
!749 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !750)
!750 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !748)
!751 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !752)
!752 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !753)
!753 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !748)
!754 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !752)
!755 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !756)
!756 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !753)
!757 = !DILocation(line: 100, column: 16, scope: !51, inlinedAt: !758)
!758 = distinct !DILocation(line: 137, column: 2, scope: !54, inlinedAt: !759)
!759 = distinct !DILocation(line: 312, column: 7, scope: !56, inlinedAt: !760)
!760 = distinct !DILocation(line: 526, column: 7, scope: !58, inlinedAt: !761)
!761 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !736)
!762 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !763)
!763 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !764)
!764 = distinct !DILocation(line: 36, column: 7, scope: !7, inlinedAt: !736)
!765 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !766)
!766 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !767)
!767 = distinct !DILocation(line: 37, column: 9, scope: !7, inlinedAt: !736)
!768 = !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !736)
!769 = !DILocation(line: 366, column: 24, scope: !70, inlinedAt: !770)
!770 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !771)
!771 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !736)
!772 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !773)
!773 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !770)
!774 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !775)
!775 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !776)
!776 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !773)
!777 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !773)
!778 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !779)
!779 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !780)
!780 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !781)
!781 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !782)
!782 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !736)
!783 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !780)
!784 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !781)
!785 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !786)
!786 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !787)
!787 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !788)
!788 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !781)
!789 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !781)
!790 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !791)
!791 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !792)
!792 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !793)
!793 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !794)
!794 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !736)
!795 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !792)
!796 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !793)
!797 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !798)
!798 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !799)
!799 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !800)
!800 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !793)
!801 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !793)
!802 = !DILocation(line: 74, column: 3, scope: !723)
!803 = !DILocation(line: 1278, column: 20, scope: !267, inlinedAt: !804)
!804 = distinct !DILocation(line: 74, column: 12, scope: !723)
!805 = !DILocation(line: 1278, column: 47, scope: !267, inlinedAt: !804)
!806 = !DILocation(line: 1278, column: 30, scope: !267, inlinedAt: !804)
!807 = !DILocation(line: 1278, column: 6, scope: !267, inlinedAt: !804)
!808 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !809)
!809 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !810)
!810 = distinct !DILocation(line: 1281, column: 6, scope: !267, inlinedAt: !804)
!811 = !DILocation(line: 1283, column: 6, scope: !267, inlinedAt: !804)
!812 = !DILocation(line: 1285, column: 4, scope: !267, inlinedAt: !804)
!813 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !814)
!814 = distinct !DILocation(line: 1893, column: 19, scope: !282, inlinedAt: !815)
!815 = distinct !DILocation(line: 449, column: 2, scope: !284, inlinedAt: !816)
!816 = distinct !DILocation(line: 1287, column: 4, scope: !267, inlinedAt: !804)
!817 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !814)
!818 = !DILocation(line: 1893, column: 26, scope: !282, inlinedAt: !815)
!819 = !DILocation(line: 1893, column: 6, scope: !282, inlinedAt: !815)
!820 = !DILocation(line: 1894, column: 4, scope: !282, inlinedAt: !815)
!821 = !DILocation(line: 1896, column: 35, scope: !282, inlinedAt: !815)
!822 = !DILocation(line: 1896, column: 33, scope: !282, inlinedAt: !815)
!823 = !DILocation(line: 1897, column: 16, scope: !282, inlinedAt: !815)
!824 = !DILocation(line: 1897, column: 25, scope: !282, inlinedAt: !815)
!825 = !DILocation(line: 378, column: 13, scope: !296, inlinedAt: !826)
!826 = distinct !DILocation(line: 453, column: 33, scope: !284, inlinedAt: !816)
!827 = !DILocation(line: 378, column: 9, scope: !296, inlinedAt: !826)
!828 = !DILocation(line: 137, column: 53, scope: !300, inlinedAt: !829)
!829 = distinct !DILocation(line: 464, column: 20, scope: !302, inlinedAt: !830)
!830 = distinct !DILocation(line: 378, column: 20, scope: !296, inlinedAt: !826)
!831 = !DILocation(line: 137, column: 27, scope: !300, inlinedAt: !829)
!832 = !DILocation(line: 463, column: 20, scope: !284, inlinedAt: !816)
!833 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !834)
!834 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !835)
!835 = distinct !DILocation(line: 462, column: 4, scope: !284, inlinedAt: !816)
!836 = !DILocation(line: 1105, column: 19, scope: !310, inlinedAt: !837)
!837 = distinct !DILocation(line: 1133, column: 14, scope: !313, inlinedAt: !838)
!838 = distinct !DILocation(line: 504, column: 9, scope: !315, inlinedAt: !839)
!839 = distinct !DILocation(line: 474, column: 23, scope: !284, inlinedAt: !816)
!840 = !DILocation(line: 1105, column: 11, scope: !310, inlinedAt: !837)
!841 = !DILocation(line: 1117, column: 4, scope: !310, inlinedAt: !837)
!842 = !DILocation(line: 1118, column: 2, scope: !310, inlinedAt: !837)
!843 = !DILocation(line: 477, column: 8, scope: !284, inlinedAt: !816)
!844 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !845)
!845 = distinct !DILocation(line: 513, column: 7, scope: !284, inlinedAt: !816)
!846 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !847)
!847 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !848)
!848 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !845)
!849 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !845)
!850 = !DILocation(line: 515, column: 30, scope: !284, inlinedAt: !816)
!851 = !DILocation(line: 516, column: 31, scope: !284, inlinedAt: !816)
!852 = !DILocation(line: 517, column: 53, scope: !284, inlinedAt: !816)
!853 = !DILocation(line: 517, column: 39, scope: !284, inlinedAt: !816)
!854 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !855)
!855 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !856)
!856 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !857)
!857 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !858)
!858 = distinct !DILocation(line: 76, column: 1, scope: !723)
!859 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !860)
!860 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !856)
!861 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !856)
!862 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !857)
!863 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !864)
!864 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !865)
!865 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !866)
!866 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !857)
!867 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !857)
!868 = !DILocation(line: 76, column: 1, scope: !723)
!869 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !870)
!870 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !871)
!871 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !872)
!872 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !873)
!873 = distinct !DILocation(line: 76, column: 1, scope: !723)
!874 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !875)
!875 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !871)
!876 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !871)
!877 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !872)
!878 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !879)
!879 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !880)
!880 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !881)
!881 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !872)
!882 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !872)
!883 = distinct !DISubprogram(name: "convert_long_long_to_string", scope: !1, file: !1, line: 136, type: !8, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!884 = !DILocation(line: 137, column: 3, scope: !883)
!885 = !DILocation(line: 137, column: 16, scope: !883)
!886 = !DILocation(line: 138, column: 3, scope: !883)
!887 = !DILocation(line: 202, column: 16, scope: !888, inlinedAt: !889)
!888 = distinct !DISubprogram(name: "operator<<", scope: !366, file: !366, line: 201, type: !8, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!889 = distinct !DILocation(line: 138, column: 8, scope: !883)
!890 = !{!891}
!891 = distinct !{!891, !892, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!892 = distinct !{!892, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!893 = !DILocation(line: 139, column: 15, scope: !883)
!894 = !{!895}
!895 = distinct !{!895, !896, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!896 = distinct !{!896, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!897 = !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !898)
!898 = distinct !DILocation(line: 139, column: 15, scope: !883)
!899 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !900)
!900 = distinct !DILocation(line: 528, column: 21, scope: !381, inlinedAt: !901)
!901 = distinct !DILocation(line: 244, column: 16, scope: !383, inlinedAt: !902)
!902 = distinct !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !898)
!903 = !DILocation(line: 200, column: 25, scope: !386, inlinedAt: !904)
!904 = distinct !DILocation(line: 528, column: 9, scope: !381, inlinedAt: !901)
!905 = !{!895, !891}
!906 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !907)
!907 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !908)
!908 = distinct !DILocation(line: 531, column: 2, scope: !381, inlinedAt: !901)
!909 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !907)
!910 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !911)
!911 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !908)
!912 = !DILocation(line: 537, column: 29, scope: !396, inlinedAt: !913)
!913 = distinct !DILocation(line: 432, column: 32, scope: !399, inlinedAt: !914)
!914 = distinct !DILocation(line: 245, column: 24, scope: !383, inlinedAt: !902)
!915 = !DILocation(line: 432, column: 17, scope: !399, inlinedAt: !914)
!916 = !DILocation(line: 245, column: 17, scope: !383, inlinedAt: !902)
!917 = !DILocation(line: 534, column: 30, scope: !407, inlinedAt: !918)
!918 = distinct !DILocation(line: 246, column: 23, scope: !383, inlinedAt: !902)
!919 = !DILocation(line: 2368, column: 20, scope: !411, inlinedAt: !920)
!920 = distinct !DILocation(line: 1681, column: 24, scope: !413, inlinedAt: !921)
!921 = distinct !DILocation(line: 246, column: 10, scope: !383, inlinedAt: !902)
!922 = !DILocation(line: 2170, column: 9, scope: !416, inlinedAt: !923)
!923 = distinct !DILocation(line: 2367, column: 15, scope: !411, inlinedAt: !920)
!924 = !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !902)
!925 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !926)
!926 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !927)
!927 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !928)
!928 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !929)
!929 = distinct !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !902)
!930 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !927)
!931 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !928)
!932 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !933)
!933 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !934)
!934 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !935)
!935 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !928)
!936 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !928)
!937 = !DILocation(line: 244, column: 22, scope: !383, inlinedAt: !902)
!938 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !939)
!939 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !940)
!940 = distinct !DILocation(line: 248, column: 10, scope: !383, inlinedAt: !902)
!941 = !DILocation(line: 1055, column: 7, scope: !436, inlinedAt: !942)
!942 = distinct !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !943)
!943 = distinct !DILocation(line: 140, column: 1, scope: !883)
!944 = !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !942)
!945 = !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !946)
!946 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !942)
!947 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !948)
!948 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !949)
!949 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !950)
!950 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !951)
!951 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !946)
!952 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !953)
!953 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !949)
!954 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !949)
!955 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !950)
!956 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !957)
!957 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !958)
!958 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !959)
!959 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !950)
!960 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !950)
!961 = !DILocation(line: 203, column: 7, scope: !462, inlinedAt: !962)
!962 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !946)
!963 = !DILocation(line: 203, column: 9, scope: !462, inlinedAt: !962)
!964 = !DILocation(line: 104, column: 7, scope: !466, inlinedAt: !965)
!965 = distinct !DILocation(line: 901, column: 27, scope: !469, inlinedAt: !966)
!966 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !942)
!967 = !DILocation(line: 104, column: 9, scope: !466, inlinedAt: !965)
!968 = !DILocation(line: 104, column: 19, scope: !466, inlinedAt: !965)
!969 = !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !943)
!970 = !DILocation(line: 140, column: 1, scope: !883)
!971 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 80, type: !8, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!972 = !DILocation(line: 81, column: 9, scope: !971)
!973 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !974)
!974 = distinct !DILocation(line: 1646, column: 40, scope: !188, inlinedAt: !975)
!975 = distinct !DILocation(line: 814, column: 22, scope: !190, inlinedAt: !976)
!976 = distinct !DILocation(line: 81, column: 15, scope: !971)
!977 = !DILocation(line: 1646, column: 9, scope: !188, inlinedAt: !975)
!978 = !DILocation(line: 82, column: 3, scope: !971)
!979 = !DILocation(line: 82, column: 28, scope: !971)
!980 = !DILocation(line: 83, column: 27, scope: !971)
!981 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !982)
!982 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !983)
!983 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !984)
!984 = distinct !DILocation(line: 83, column: 31, scope: !971)
!985 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !986)
!986 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !983)
!987 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !988)
!988 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !989)
!989 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !983)
!990 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !988)
!991 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !992)
!992 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !989)
!993 = !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !984)
!994 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !995)
!995 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !996)
!996 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !984)
!997 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !998)
!998 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !996)
!999 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !996)
!1002 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1000)
!1003 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1001)
!1005 = !DILocation(line: 100, column: 16, scope: !51, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 137, column: 2, scope: !54, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 312, column: 7, scope: !56, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 526, column: 7, scope: !58, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !984)
!1010 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 36, column: 7, scope: !7, inlinedAt: !984)
!1013 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !1015)
!1015 = distinct !DILocation(line: 37, column: 9, scope: !7, inlinedAt: !984)
!1016 = !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !984)
!1017 = !DILocation(line: 366, column: 24, scope: !70, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !984)
!1020 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !1018)
!1022 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !1023)
!1023 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1021)
!1025 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1021)
!1026 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !984)
!1031 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1028)
!1032 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1029)
!1033 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1029)
!1037 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1029)
!1038 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !984)
!1043 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1040)
!1044 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1041)
!1045 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1041)
!1049 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1041)
!1050 = !DILocation(line: 84, column: 3, scope: !971)
!1051 = !DILocation(line: 1278, column: 20, scope: !267, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 84, column: 12, scope: !971)
!1053 = !DILocation(line: 1278, column: 47, scope: !267, inlinedAt: !1052)
!1054 = !DILocation(line: 1278, column: 30, scope: !267, inlinedAt: !1052)
!1055 = !DILocation(line: 1278, column: 6, scope: !267, inlinedAt: !1052)
!1056 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 1281, column: 6, scope: !267, inlinedAt: !1052)
!1059 = !DILocation(line: 1283, column: 6, scope: !267, inlinedAt: !1052)
!1060 = !DILocation(line: 1285, column: 4, scope: !267, inlinedAt: !1052)
!1061 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 1893, column: 19, scope: !282, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 449, column: 2, scope: !284, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 1287, column: 4, scope: !267, inlinedAt: !1052)
!1065 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !1062)
!1066 = !DILocation(line: 1893, column: 26, scope: !282, inlinedAt: !1063)
!1067 = !DILocation(line: 1893, column: 6, scope: !282, inlinedAt: !1063)
!1068 = !DILocation(line: 1894, column: 4, scope: !282, inlinedAt: !1063)
!1069 = !DILocation(line: 1896, column: 35, scope: !282, inlinedAt: !1063)
!1070 = !DILocation(line: 1896, column: 33, scope: !282, inlinedAt: !1063)
!1071 = !DILocation(line: 1897, column: 16, scope: !282, inlinedAt: !1063)
!1072 = !DILocation(line: 1897, column: 25, scope: !282, inlinedAt: !1063)
!1073 = !DILocation(line: 378, column: 13, scope: !296, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 453, column: 33, scope: !284, inlinedAt: !1064)
!1075 = !DILocation(line: 378, column: 9, scope: !296, inlinedAt: !1074)
!1076 = !DILocation(line: 137, column: 53, scope: !300, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 464, column: 20, scope: !302, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 378, column: 20, scope: !296, inlinedAt: !1074)
!1079 = !DILocation(line: 137, column: 27, scope: !300, inlinedAt: !1077)
!1080 = !DILocation(line: 463, column: 20, scope: !284, inlinedAt: !1064)
!1081 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 462, column: 4, scope: !284, inlinedAt: !1064)
!1084 = !DILocation(line: 1105, column: 19, scope: !310, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 1133, column: 14, scope: !313, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 504, column: 9, scope: !315, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 474, column: 23, scope: !284, inlinedAt: !1064)
!1088 = !DILocation(line: 1105, column: 11, scope: !310, inlinedAt: !1085)
!1089 = !DILocation(line: 1117, column: 4, scope: !310, inlinedAt: !1085)
!1090 = !DILocation(line: 1118, column: 2, scope: !310, inlinedAt: !1085)
!1091 = !DILocation(line: 477, column: 8, scope: !284, inlinedAt: !1064)
!1092 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 513, column: 7, scope: !284, inlinedAt: !1064)
!1094 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1093)
!1097 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1093)
!1098 = !DILocation(line: 515, column: 30, scope: !284, inlinedAt: !1064)
!1099 = !DILocation(line: 516, column: 31, scope: !284, inlinedAt: !1064)
!1100 = !DILocation(line: 517, column: 53, scope: !284, inlinedAt: !1064)
!1101 = !DILocation(line: 517, column: 39, scope: !284, inlinedAt: !1064)
!1102 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 86, column: 1, scope: !971)
!1107 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1104)
!1109 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1104)
!1110 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1105)
!1111 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1105)
!1115 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1105)
!1116 = !DILocation(line: 86, column: 1, scope: !971)
!1117 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1118)
!1118 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 86, column: 1, scope: !971)
!1122 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1119)
!1124 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1119)
!1125 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1120)
!1126 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1120)
!1130 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1120)
!1131 = distinct !DISubprogram(name: "convert_size_t_to_string", scope: !1, file: !1, line: 144, type: !8, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1132 = !DILocation(line: 145, column: 3, scope: !1131)
!1133 = !DILocation(line: 145, column: 16, scope: !1131)
!1134 = !DILocation(line: 146, column: 3, scope: !1131)
!1135 = !DILocation(line: 171, column: 16, scope: !1136, inlinedAt: !1137)
!1136 = distinct !DISubprogram(name: "operator<<", scope: !366, file: !366, line: 170, type: !8, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1137 = distinct !DILocation(line: 146, column: 8, scope: !1131)
!1138 = !{!1139}
!1139 = distinct !{!1139, !1140, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1140 = distinct !{!1140, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1141 = !DILocation(line: 147, column: 15, scope: !1131)
!1142 = !{!1143}
!1143 = distinct !{!1143, !1144, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1144 = distinct !{!1144, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1145 = !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 147, column: 15, scope: !1131)
!1147 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 528, column: 21, scope: !381, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 244, column: 16, scope: !383, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 1137, column: 29, scope: !376, inlinedAt: !1146)
!1151 = !DILocation(line: 200, column: 25, scope: !386, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 528, column: 9, scope: !381, inlinedAt: !1149)
!1153 = !{!1143, !1139}
!1154 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 531, column: 2, scope: !381, inlinedAt: !1149)
!1157 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1155)
!1158 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1156)
!1160 = !DILocation(line: 537, column: 29, scope: !396, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 432, column: 32, scope: !399, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 245, column: 24, scope: !383, inlinedAt: !1150)
!1163 = !DILocation(line: 432, column: 17, scope: !399, inlinedAt: !1162)
!1164 = !DILocation(line: 245, column: 17, scope: !383, inlinedAt: !1150)
!1165 = !DILocation(line: 534, column: 30, scope: !407, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 246, column: 23, scope: !383, inlinedAt: !1150)
!1167 = !DILocation(line: 2368, column: 20, scope: !411, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 1681, column: 24, scope: !413, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 246, column: 10, scope: !383, inlinedAt: !1150)
!1170 = !DILocation(line: 2170, column: 9, scope: !416, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 2367, column: 15, scope: !411, inlinedAt: !1168)
!1172 = !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !1150)
!1173 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 250, column: 7, scope: !383, inlinedAt: !1150)
!1178 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1175)
!1179 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1176)
!1180 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1176)
!1184 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1176)
!1185 = !DILocation(line: 244, column: 22, scope: !383, inlinedAt: !1150)
!1186 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 248, column: 10, scope: !383, inlinedAt: !1150)
!1189 = !DILocation(line: 1055, column: 7, scope: !436, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 148, column: 1, scope: !1131)
!1192 = !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !1190)
!1193 = !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !1190)
!1195 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !1194)
!1200 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1197)
!1202 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1197)
!1203 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1198)
!1204 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1198)
!1208 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1198)
!1209 = !DILocation(line: 203, column: 7, scope: !462, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 291, column: 25, scope: !444, inlinedAt: !1194)
!1211 = !DILocation(line: 203, column: 9, scope: !462, inlinedAt: !1210)
!1212 = !DILocation(line: 104, column: 7, scope: !466, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 901, column: 27, scope: !469, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 1055, column: 9, scope: !436, inlinedAt: !1190)
!1215 = !DILocation(line: 104, column: 9, scope: !466, inlinedAt: !1213)
!1216 = !DILocation(line: 104, column: 19, scope: !466, inlinedAt: !1213)
!1217 = !DILocation(line: 1055, column: 7, scope: !438, inlinedAt: !1191)
!1218 = !DILocation(line: 148, column: 1, scope: !1131)
!1219 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 88, type: !8, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1220 = !DILocation(line: 89, column: 9, scope: !1219)
!1221 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 1646, column: 40, scope: !188, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 814, column: 22, scope: !190, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 89, column: 15, scope: !1219)
!1225 = !DILocation(line: 1646, column: 9, scope: !188, inlinedAt: !1223)
!1226 = !DILocation(line: 90, column: 27, scope: !1219)
!1227 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 90, column: 31, scope: !1219)
!1231 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !1229)
!1233 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !1229)
!1236 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1234)
!1237 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1235)
!1239 = !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !1230)
!1240 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 516, column: 21, scope: !14, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !1230)
!1243 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 516, column: 9, scope: !14, inlinedAt: !1242)
!1245 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 519, column: 2, scope: !14, inlinedAt: !1242)
!1248 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1246)
!1249 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1247)
!1251 = !DILocation(line: 100, column: 16, scope: !51, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 137, column: 2, scope: !54, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 312, column: 7, scope: !56, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 526, column: 7, scope: !58, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 35, column: 15, scope: !7, inlinedAt: !1230)
!1256 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 36, column: 7, scope: !7, inlinedAt: !1230)
!1259 = !DILocation(line: 1570, column: 8, scope: !61, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 804, column: 15, scope: !63, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 37, column: 9, scope: !7, inlinedAt: !1230)
!1262 = !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !1230)
!1263 = !DILocation(line: 366, column: 24, scope: !70, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 733, column: 7, scope: !72, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !1230)
!1266 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 366, column: 2, scope: !70, inlinedAt: !1264)
!1268 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1267)
!1271 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1267)
!1272 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1273)
!1273 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !1230)
!1277 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1274)
!1278 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1275)
!1279 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1275)
!1283 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1275)
!1284 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1285)
!1285 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 38, column: 1, scope: !7, inlinedAt: !1230)
!1289 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1286)
!1290 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1287)
!1291 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1287)
!1295 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1287)
!1296 = !DILocation(line: 91, column: 3, scope: !1219)
!1297 = !DILocation(line: 1278, column: 20, scope: !267, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 91, column: 12, scope: !1219)
!1299 = !DILocation(line: 1278, column: 47, scope: !267, inlinedAt: !1298)
!1300 = !DILocation(line: 1278, column: 30, scope: !267, inlinedAt: !1298)
!1301 = !DILocation(line: 1278, column: 6, scope: !267, inlinedAt: !1298)
!1302 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 1281, column: 6, scope: !267, inlinedAt: !1298)
!1305 = !DILocation(line: 1283, column: 6, scope: !267, inlinedAt: !1298)
!1306 = !DILocation(line: 1285, column: 4, scope: !267, inlinedAt: !1298)
!1307 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 1893, column: 19, scope: !282, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 449, column: 2, scope: !284, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 1287, column: 4, scope: !267, inlinedAt: !1298)
!1311 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !1308)
!1312 = !DILocation(line: 1893, column: 26, scope: !282, inlinedAt: !1309)
!1313 = !DILocation(line: 1893, column: 6, scope: !282, inlinedAt: !1309)
!1314 = !DILocation(line: 1894, column: 4, scope: !282, inlinedAt: !1309)
!1315 = !DILocation(line: 1896, column: 35, scope: !282, inlinedAt: !1309)
!1316 = !DILocation(line: 1896, column: 33, scope: !282, inlinedAt: !1309)
!1317 = !DILocation(line: 1897, column: 16, scope: !282, inlinedAt: !1309)
!1318 = !DILocation(line: 1897, column: 25, scope: !282, inlinedAt: !1309)
!1319 = !DILocation(line: 378, column: 13, scope: !296, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 453, column: 33, scope: !284, inlinedAt: !1310)
!1321 = !DILocation(line: 378, column: 9, scope: !296, inlinedAt: !1320)
!1322 = !DILocation(line: 137, column: 53, scope: !300, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 464, column: 20, scope: !302, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 378, column: 20, scope: !296, inlinedAt: !1320)
!1325 = !DILocation(line: 137, column: 27, scope: !300, inlinedAt: !1323)
!1326 = !DILocation(line: 463, column: 20, scope: !284, inlinedAt: !1310)
!1327 = !DILocation(line: 175, column: 4, scope: !274, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 516, column: 8, scope: !276, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 462, column: 4, scope: !284, inlinedAt: !1310)
!1330 = !DILocation(line: 1105, column: 19, scope: !310, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 1133, column: 14, scope: !313, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 504, column: 9, scope: !315, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 474, column: 23, scope: !284, inlinedAt: !1310)
!1334 = !DILocation(line: 1105, column: 11, scope: !310, inlinedAt: !1331)
!1335 = !DILocation(line: 1117, column: 4, scope: !310, inlinedAt: !1331)
!1336 = !DILocation(line: 1118, column: 2, scope: !310, inlinedAt: !1331)
!1337 = !DILocation(line: 477, column: 8, scope: !284, inlinedAt: !1310)
!1338 = !DILocation(line: 386, column: 6, scope: !77, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 513, column: 7, scope: !284, inlinedAt: !1310)
!1340 = !DILocation(line: 158, column: 2, scope: !80, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 496, column: 13, scope: !83, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1339)
!1343 = !DILocation(line: 387, column: 4, scope: !77, inlinedAt: !1339)
!1344 = !DILocation(line: 515, column: 30, scope: !284, inlinedAt: !1310)
!1345 = !DILocation(line: 516, column: 31, scope: !284, inlinedAt: !1310)
!1346 = !DILocation(line: 517, column: 53, scope: !284, inlinedAt: !1310)
!1347 = !DILocation(line: 517, column: 39, scope: !284, inlinedAt: !1310)
!1348 = !DILocation(line: 92, column: 3, scope: !1219)
!1349 = !DILocation(line: 93, column: 1, scope: !1219)
!1350 = distinct !DISubprogram(name: "get", scope: !1, file: !1, line: 100, type: !8, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1351 = !DILocation(line: 988, column: 40, scope: !121, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 101, column: 31, scope: !1350)
!1353 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !1352)
!1354 = !DILocation(line: 101, column: 21, scope: !1350)
!1355 = !DILocation(line: 101, column: 3, scope: !1350)
!1356 = !DILocation(line: 102, column: 8, scope: !1350)
!1357 = !DILocation(line: 1124, column: 34, scope: !173, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 102, column: 8, scope: !1350)
!1359 = !{!1360}
!1360 = distinct !{!1360, !1361, !"_ZN12YAML_Element6getKeyB5cxx11Ev: argument 0"}
!1361 = distinct !{!1361, !"_ZN12YAML_Element6getKeyB5cxx11Ev"}
!1362 = !DILocation(line: 102, column: 21, scope: !1350)
!1363 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 540, column: 9, scope: !1365, inlinedAt: !1366)
!1365 = distinct !DISubprogram(name: "basic_string", scope: !12, file: !12, line: 539, type: !8, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1366 = distinct !DILocation(line: 49, column: 31, scope: !1367, inlinedAt: !1369)
!1367 = distinct !DISubprogram(name: "getKey", scope: !1368, file: !1368, line: 49, type: !8, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1368 = !DIFile(filename: "./YAML_Element.hpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!1369 = distinct !DILocation(line: 102, column: 21, scope: !1350)
!1370 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 543, column: 21, scope: !1365, inlinedAt: !1366)
!1372 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1374)
!1373 = distinct !DISubprogram(name: "length", scope: !12, file: !12, line: 1069, type: !8, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1374 = distinct !DILocation(line: 543, column: 56, scope: !1365, inlinedAt: !1366)
!1375 = !DILocation(line: 221, column: 2, scope: !1376, inlinedAt: !1378)
!1376 = distinct !DISubprogram(name: "_M_construct<char *>", scope: !1377, file: !1377, line: 218, type: !8, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1377 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/basic_string.tcc", directory: "")
!1378 = distinct !DILocation(line: 543, column: 2, scope: !1365, inlinedAt: !1366)
!1379 = !DILocation(line: 221, column: 12, scope: !1376, inlinedAt: !1378)
!1380 = !{!32, !32, i64 0}
!1381 = !DILocation(line: 223, column: 13, scope: !1376, inlinedAt: !1378)
!1382 = !DILocation(line: 223, column: 6, scope: !1376, inlinedAt: !1378)
!1383 = !DILocation(line: 225, column: 14, scope: !1376, inlinedAt: !1378)
!1384 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1386)
!1385 = distinct !DISubprogram(name: "_M_data", scope: !12, file: !12, line: 223, type: !8, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1386 = distinct !DILocation(line: 225, column: 6, scope: !1376, inlinedAt: !1378)
!1387 = !DILocation(line: 226, column: 18, scope: !1376, inlinedAt: !1378)
!1388 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1390)
!1389 = distinct !DISubprogram(name: "_M_capacity", scope: !12, file: !12, line: 260, type: !8, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1390 = distinct !DILocation(line: 226, column: 6, scope: !1376, inlinedAt: !1378)
!1391 = !DILocation(line: 227, column: 4, scope: !1376, inlinedAt: !1378)
!1392 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 243, column: 22, scope: !1376, inlinedAt: !1378)
!1394 = !DILocation(line: 419, column: 6, scope: !1395, inlinedAt: !1396)
!1395 = distinct !DISubprogram(name: "_S_copy", scope: !12, file: !12, line: 417, type: !8, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1396 = distinct !DILocation(line: 470, column: 9, scope: !1397, inlinedAt: !1398)
!1397 = distinct !DISubprogram(name: "_S_copy_chars", scope: !12, file: !12, line: 469, type: !8, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1398 = distinct !DILocation(line: 243, column: 2, scope: !1376, inlinedAt: !1378)
!1399 = !DILocation(line: 354, column: 9, scope: !34, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1396)
!1401 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1400)
!1402 = !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1396)
!1403 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1405)
!1404 = distinct !DISubprogram(name: "copy", scope: !35, file: !35, line: 423, type: !8, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1405 = distinct !DILocation(line: 422, column: 4, scope: !1395, inlinedAt: !1396)
!1406 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1405)
!1407 = !DILocation(line: 247, column: 16, scope: !1376, inlinedAt: !1378)
!1408 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 247, column: 2, scope: !1376, inlinedAt: !1378)
!1411 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1410)
!1413 = !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1410)
!1414 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1410)
!1416 = !DILocation(line: 248, column: 7, scope: !1376, inlinedAt: !1378)
!1417 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 3585, column: 21, scope: !1419, inlinedAt: !1420)
!1419 = distinct !DISubprogram(name: "operator==<char>", scope: !12, file: !12, line: 3583, type: !8, scopeLine: 3585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1420 = distinct !DILocation(line: 102, column: 30, scope: !1350)
!1421 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1422)
!1422 = distinct !DILocation(line: 3585, column: 37, scope: !1419, inlinedAt: !1420)
!1423 = !DILocation(line: 3585, column: 28, scope: !1419, inlinedAt: !1420)
!1424 = !DILocation(line: 3586, column: 8, scope: !1419, inlinedAt: !1420)
!1425 = !DILocation(line: 372, column: 10, scope: !1426, inlinedAt: !1427)
!1426 = distinct !DISubprogram(name: "compare", scope: !35, file: !35, line: 370, type: !8, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1427 = distinct !DILocation(line: 3586, column: 12, scope: !1419, inlinedAt: !1420)
!1428 = !DILocation(line: 372, column: 6, scope: !1426, inlinedAt: !1427)
!1429 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 2567, column: 16, scope: !1431, inlinedAt: !1432)
!1431 = distinct !DISubprogram(name: "data", scope: !12, file: !12, line: 2566, type: !8, scopeLine: 2567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1432 = distinct !DILocation(line: 3586, column: 66, scope: !1419, inlinedAt: !1420)
!1433 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 2567, column: 16, scope: !1431, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 3586, column: 52, scope: !1419, inlinedAt: !1420)
!1436 = !DILocation(line: 385, column: 9, scope: !1426, inlinedAt: !1427)
!1437 = !DILocation(line: 3586, column: 12, scope: !1419, inlinedAt: !1420)
!1438 = !DILocation(line: 385, column: 2, scope: !1426, inlinedAt: !1427)
!1439 = !DILocation(line: 0, scope: !1419, inlinedAt: !1420)
!1440 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 102, column: 8, scope: !1350)
!1445 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1442)
!1446 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1443)
!1447 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1443)
!1451 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1443)
!1452 = !DILocation(line: 1124, column: 25, scope: !173, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 103, column: 14, scope: !1350)
!1454 = !DILocation(line: 1124, column: 34, scope: !173, inlinedAt: !1453)
!1455 = !DILocation(line: 103, column: 14, scope: !1350)
!1456 = !DILocation(line: 103, column: 7, scope: !1350)
!1457 = !DILocation(line: 101, column: 40, scope: !1350)
!1458 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !1352)
!1459 = distinct !{!1459, !1355, !1460, !182}
!1460 = !DILocation(line: 105, column: 3, scope: !1350)
!1461 = !DILocation(line: 107, column: 1, scope: !1350)
!1462 = distinct !DISubprogram(name: "printYAML", scope: !1, file: !1, line: 114, type: !8, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1463 = !DILocation(line: 115, column: 22, scope: !1462)
!1464 = !DILocation(line: 115, column: 28, scope: !1462)
!1465 = !{!1466}
!1466 = distinct !{!1466, !1467, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1467 = distinct !{!1467, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1468 = !DILocation(line: 115, column: 34, scope: !1462)
!1469 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 391, column: 32, scope: !1471, inlinedAt: !1472)
!1471 = distinct !DISubprogram(name: "_M_check_length", scope: !12, file: !12, line: 389, type: !8, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1472 = distinct !DILocation(line: 1435, column: 2, scope: !1473, inlinedAt: !1474)
!1473 = distinct !DISubprogram(name: "append", scope: !12, file: !12, line: 1431, type: !8, scopeLine: 1432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1474 = distinct !DILocation(line: 3554, column: 30, scope: !1475, inlinedAt: !1476)
!1475 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", scope: !12, file: !12, line: 3552, type: !8, scopeLine: 3554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1476 = distinct !DILocation(line: 115, column: 34, scope: !1462)
!1477 = !DILocation(line: 391, column: 47, scope: !1471, inlinedAt: !1472)
!1478 = !DILocation(line: 391, column: 6, scope: !1471, inlinedAt: !1472)
!1479 = !DILocation(line: 392, column: 4, scope: !1471, inlinedAt: !1472)
!1480 = !DILocation(line: 1436, column: 9, scope: !1473, inlinedAt: !1474)
!1481 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 670, column: 21, scope: !1483, inlinedAt: !1484)
!1483 = distinct !DISubprogram(name: "basic_string", scope: !12, file: !12, line: 669, type: !8, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1484 = distinct !DILocation(line: 3554, column: 14, scope: !1475, inlinedAt: !1476)
!1485 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 670, column: 9, scope: !1483, inlinedAt: !1484)
!1487 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 672, column: 12, scope: !1483, inlinedAt: !1484)
!1490 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1489)
!1492 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1489)
!1493 = !DILocation(line: 672, column: 6, scope: !1483, inlinedAt: !1484)
!1494 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 675, column: 16, scope: !1483, inlinedAt: !1484)
!1496 = !DILocation(line: 675, column: 25, scope: !1483, inlinedAt: !1484)
!1497 = !DILocation(line: 425, column: 10, scope: !1404, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 674, column: 6, scope: !1483, inlinedAt: !1484)
!1499 = !DILocation(line: 425, column: 6, scope: !1404, inlinedAt: !1498)
!1500 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1498)
!1501 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1498)
!1502 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 679, column: 6, scope: !1483, inlinedAt: !1484)
!1504 = !DILocation(line: 680, column: 24, scope: !1483, inlinedAt: !1484)
!1505 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 680, column: 6, scope: !1483, inlinedAt: !1484)
!1507 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 686, column: 18, scope: !1483, inlinedAt: !1484)
!1509 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 686, column: 2, scope: !1483, inlinedAt: !1484)
!1511 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1510)
!1512 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 687, column: 8, scope: !1483, inlinedAt: !1484)
!1514 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 688, column: 8, scope: !1483, inlinedAt: !1484)
!1517 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1516)
!1519 = !{!1520}
!1520 = distinct !{!1520, !1521, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!1521 = distinct !{!1521, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!1522 = !DILocation(line: 115, column: 41, scope: !1462)
!1523 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 1387, column: 52, scope: !1525, inlinedAt: !1526)
!1525 = distinct !DISubprogram(name: "append", scope: !12, file: !12, line: 1386, type: !8, scopeLine: 1387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1526 = distinct !DILocation(line: 3503, column: 30, scope: !1527, inlinedAt: !1528)
!1527 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", scope: !12, file: !12, line: 3501, type: !8, scopeLine: 3503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1528 = distinct !DILocation(line: 115, column: 41, scope: !1462)
!1529 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 391, column: 32, scope: !1471, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 1420, column: 2, scope: !1532, inlinedAt: !1533)
!1532 = distinct !DISubprogram(name: "append", scope: !12, file: !12, line: 1417, type: !8, scopeLine: 1418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1533 = distinct !DILocation(line: 1387, column: 22, scope: !1525, inlinedAt: !1526)
!1534 = !DILocation(line: 391, column: 23, scope: !1471, inlinedAt: !1531)
!1535 = !DILocation(line: 391, column: 47, scope: !1471, inlinedAt: !1531)
!1536 = !DILocation(line: 391, column: 6, scope: !1471, inlinedAt: !1531)
!1537 = !DILocation(line: 392, column: 4, scope: !1471, inlinedAt: !1531)
!1538 = !DILocation(line: 115, column: 43, scope: !1462)
!1539 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1540)
!1540 = distinct !DILocation(line: 1387, column: 35, scope: !1525, inlinedAt: !1526)
!1541 = !DILocation(line: 1421, column: 9, scope: !1532, inlinedAt: !1533)
!1542 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 670, column: 21, scope: !1483, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 3503, column: 14, scope: !1527, inlinedAt: !1528)
!1545 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 670, column: 9, scope: !1483, inlinedAt: !1544)
!1547 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 672, column: 12, scope: !1483, inlinedAt: !1544)
!1550 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1549)
!1552 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1549)
!1553 = !DILocation(line: 672, column: 6, scope: !1483, inlinedAt: !1544)
!1554 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 675, column: 16, scope: !1483, inlinedAt: !1544)
!1556 = !DILocation(line: 675, column: 25, scope: !1483, inlinedAt: !1544)
!1557 = !DILocation(line: 425, column: 10, scope: !1404, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 674, column: 6, scope: !1483, inlinedAt: !1544)
!1559 = !DILocation(line: 425, column: 6, scope: !1404, inlinedAt: !1558)
!1560 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1558)
!1561 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1558)
!1562 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 679, column: 6, scope: !1483, inlinedAt: !1544)
!1564 = !DILocation(line: 680, column: 24, scope: !1483, inlinedAt: !1544)
!1565 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 680, column: 6, scope: !1483, inlinedAt: !1544)
!1567 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 686, column: 18, scope: !1483, inlinedAt: !1544)
!1569 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 686, column: 2, scope: !1483, inlinedAt: !1544)
!1571 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1570)
!1572 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 687, column: 8, scope: !1483, inlinedAt: !1544)
!1574 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 688, column: 8, scope: !1483, inlinedAt: !1544)
!1577 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1576)
!1579 = !{!1580}
!1580 = distinct !{!1580, !1581, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!1581 = distinct !{!1581, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!1582 = !DILocation(line: 115, column: 49, scope: !1462)
!1583 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 391, column: 32, scope: !1471, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 1435, column: 2, scope: !1473, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 3554, column: 30, scope: !1475, inlinedAt: !1587)
!1587 = distinct !DILocation(line: 115, column: 49, scope: !1462)
!1588 = !DILocation(line: 391, column: 47, scope: !1471, inlinedAt: !1585)
!1589 = !DILocation(line: 391, column: 6, scope: !1471, inlinedAt: !1585)
!1590 = !DILocation(line: 392, column: 4, scope: !1471, inlinedAt: !1585)
!1591 = !DILocation(line: 1436, column: 9, scope: !1473, inlinedAt: !1586)
!1592 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 670, column: 21, scope: !1483, inlinedAt: !1594)
!1594 = distinct !DILocation(line: 3554, column: 14, scope: !1475, inlinedAt: !1587)
!1595 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 670, column: 9, scope: !1483, inlinedAt: !1594)
!1597 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 672, column: 12, scope: !1483, inlinedAt: !1594)
!1600 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1599)
!1602 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1599)
!1603 = !DILocation(line: 672, column: 6, scope: !1483, inlinedAt: !1594)
!1604 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 675, column: 16, scope: !1483, inlinedAt: !1594)
!1606 = !DILocation(line: 675, column: 25, scope: !1483, inlinedAt: !1594)
!1607 = !DILocation(line: 425, column: 10, scope: !1404, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 674, column: 6, scope: !1483, inlinedAt: !1594)
!1609 = !DILocation(line: 425, column: 6, scope: !1404, inlinedAt: !1608)
!1610 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1608)
!1611 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1608)
!1612 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 679, column: 6, scope: !1483, inlinedAt: !1594)
!1614 = !DILocation(line: 680, column: 24, scope: !1483, inlinedAt: !1594)
!1615 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 680, column: 6, scope: !1483, inlinedAt: !1594)
!1617 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 686, column: 18, scope: !1483, inlinedAt: !1594)
!1619 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 686, column: 2, scope: !1483, inlinedAt: !1594)
!1621 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1620)
!1622 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 687, column: 8, scope: !1483, inlinedAt: !1594)
!1624 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1625)
!1625 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 688, column: 8, scope: !1483, inlinedAt: !1594)
!1627 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1626)
!1629 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 115, column: 22, scope: !1462)
!1634 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1631)
!1635 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1632)
!1636 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1632)
!1640 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1632)
!1641 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 115, column: 22, scope: !1462)
!1646 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1643)
!1647 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1644)
!1648 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1644)
!1652 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1644)
!1653 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 115, column: 22, scope: !1462)
!1658 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1655)
!1660 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1655)
!1661 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1656)
!1662 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1656)
!1666 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1656)
!1667 = !DILocation(line: 116, column: 34, scope: !1462)
!1668 = !{!1669}
!1669 = distinct !{!1669, !1670, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!1670 = distinct !{!1670, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!1671 = !DILocation(line: 116, column: 40, scope: !1462)
!1672 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 540, column: 9, scope: !1365, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 3474, column: 45, scope: !1675, inlinedAt: !1676)
!1675 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", scope: !12, file: !12, line: 3471, type: !8, scopeLine: 3473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1676 = distinct !DILocation(line: 116, column: 40, scope: !1462)
!1677 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 543, column: 21, scope: !1365, inlinedAt: !1674)
!1679 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 543, column: 56, scope: !1365, inlinedAt: !1674)
!1681 = !DILocation(line: 221, column: 2, scope: !1376, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 543, column: 2, scope: !1365, inlinedAt: !1674)
!1683 = !DILocation(line: 221, column: 12, scope: !1376, inlinedAt: !1682)
!1684 = !DILocation(line: 223, column: 13, scope: !1376, inlinedAt: !1682)
!1685 = !DILocation(line: 223, column: 6, scope: !1376, inlinedAt: !1682)
!1686 = !DILocation(line: 117, column: 3, scope: !1462)
!1687 = !DILocation(line: 121, column: 1, scope: !1462)
!1688 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 115, column: 22, scope: !1462)
!1693 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1690)
!1694 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1691)
!1695 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1691)
!1699 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1691)
!1700 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 115, column: 22, scope: !1462)
!1705 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1702)
!1706 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1703)
!1707 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1703)
!1711 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1703)
!1712 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 115, column: 22, scope: !1462)
!1717 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1714)
!1719 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1714)
!1720 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1715)
!1721 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1715)
!1725 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1715)
!1726 = !DILocation(line: 225, column: 14, scope: !1376, inlinedAt: !1682)
!1727 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 225, column: 6, scope: !1376, inlinedAt: !1682)
!1729 = !DILocation(line: 226, column: 18, scope: !1376, inlinedAt: !1682)
!1730 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 226, column: 6, scope: !1376, inlinedAt: !1682)
!1732 = !DILocation(line: 227, column: 4, scope: !1376, inlinedAt: !1682)
!1733 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 243, column: 22, scope: !1376, inlinedAt: !1682)
!1735 = !DILocation(line: 419, column: 6, scope: !1395, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 470, column: 9, scope: !1397, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 243, column: 2, scope: !1376, inlinedAt: !1682)
!1738 = !DILocation(line: 354, column: 9, scope: !34, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1736)
!1740 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1739)
!1741 = !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1736)
!1742 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 422, column: 4, scope: !1395, inlinedAt: !1736)
!1744 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1743)
!1745 = !DILocation(line: 247, column: 16, scope: !1376, inlinedAt: !1682)
!1746 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 247, column: 2, scope: !1376, inlinedAt: !1682)
!1749 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1748)
!1751 = !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1748)
!1752 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1748)
!1754 = !DILocation(line: 248, column: 7, scope: !1376, inlinedAt: !1682)
!1755 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 391, column: 32, scope: !1471, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 1435, column: 2, scope: !1473, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 3475, column: 13, scope: !1675, inlinedAt: !1676)
!1759 = !DILocation(line: 391, column: 47, scope: !1471, inlinedAt: !1757)
!1760 = !DILocation(line: 391, column: 6, scope: !1471, inlinedAt: !1757)
!1761 = !DILocation(line: 392, column: 4, scope: !1471, inlinedAt: !1757)
!1762 = !DILocation(line: 1436, column: 9, scope: !1473, inlinedAt: !1758)
!1763 = !DILocation(line: 3477, column: 5, scope: !1675, inlinedAt: !1676)
!1764 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 3477, column: 5, scope: !1675, inlinedAt: !1676)
!1769 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1766)
!1770 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1767)
!1771 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1767)
!1775 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1767)
!1776 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 858, column: 12, scope: !1779, inlinedAt: !1780)
!1779 = distinct !DISubprogram(name: "operator=", scope: !12, file: !12, line: 843, type: !8, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1780 = distinct !DILocation(line: 116, column: 32, scope: !1462)
!1781 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1778)
!1782 = !DILocation(line: 858, column: 6, scope: !1779, inlinedAt: !1780)
!1783 = !DILocation(line: 863, column: 10, scope: !1779, inlinedAt: !1780)
!1784 = !{!"branch_weights", i32 1, i32 2000}
!1785 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 865, column: 13, scope: !1779, inlinedAt: !1780)
!1787 = !DILocation(line: 865, column: 7, scope: !1779, inlinedAt: !1780)
!1788 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 866, column: 19, scope: !1779, inlinedAt: !1780)
!1790 = !DILocation(line: 419, column: 6, scope: !1395, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 866, column: 5, scope: !1779, inlinedAt: !1780)
!1792 = !DILocation(line: 354, column: 9, scope: !34, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1791)
!1794 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1793)
!1795 = !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1791)
!1796 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 422, column: 4, scope: !1395, inlinedAt: !1791)
!1798 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1797)
!1799 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 867, column: 23, scope: !1779, inlinedAt: !1780)
!1801 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1803)
!1803 = distinct !DILocation(line: 867, column: 3, scope: !1779, inlinedAt: !1780)
!1804 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1803)
!1806 = !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1803)
!1807 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1808)
!1808 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1803)
!1809 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 1174, column: 9, scope: !1812, inlinedAt: !1813)
!1812 = distinct !DISubprogram(name: "clear", scope: !12, file: !12, line: 1173, type: !8, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1813 = distinct !DILocation(line: 902, column: 8, scope: !1779, inlinedAt: !1780)
!1814 = !DILocation(line: 269, column: 7, scope: !27, inlinedAt: !1803)
!1815 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1816)
!1816 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 877, column: 11, scope: !1779, inlinedAt: !1780)
!1818 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1817)
!1819 = !DILocation(line: 877, column: 10, scope: !1779, inlinedAt: !1780)
!1820 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 889, column: 6, scope: !1779, inlinedAt: !1780)
!1822 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 890, column: 22, scope: !1779, inlinedAt: !1780)
!1824 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 890, column: 6, scope: !1779, inlinedAt: !1780)
!1826 = !DILocation(line: 892, column: 10, scope: !1779, inlinedAt: !1780)
!1827 = !DILocation(line: 883, column: 20, scope: !1779, inlinedAt: !1780)
!1828 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 894, column: 9, scope: !1779, inlinedAt: !1780)
!1830 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 895, column: 9, scope: !1779, inlinedAt: !1780)
!1832 = !DILocation(line: 896, column: 8, scope: !1779, inlinedAt: !1780)
!1833 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 898, column: 14, scope: !1779, inlinedAt: !1780)
!1835 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1811)
!1837 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1811)
!1839 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 116, column: 26, scope: !1462)
!1844 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1841)
!1845 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !1842)
!1846 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1842)
!1850 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !1842)
!1851 = !DILocation(line: 116, column: 26, scope: !1462)
!1852 = !{!1853}
!1853 = distinct !{!1853, !1670, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0:It1"}
!1854 = !DILocation(line: 988, column: 40, scope: !121, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 117, column: 30, scope: !1462)
!1856 = !DILocation(line: 988, column: 66, scope: !121, inlinedAt: !1855)
!1857 = !DILocation(line: 117, column: 20, scope: !1462)
!1858 = !DILocation(line: 116, column: 3, scope: !1462)
!1859 = !DILocation(line: 118, column: 17, scope: !1462)
!1860 = !DILocation(line: 118, column: 29, scope: !1462)
!1861 = !DILocation(line: 1124, column: 34, scope: !173, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 118, column: 29, scope: !1462)
!1863 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 540, column: 9, scope: !1365, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 118, column: 52, scope: !1462)
!1866 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 543, column: 21, scope: !1365, inlinedAt: !1865)
!1868 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 543, column: 56, scope: !1365, inlinedAt: !1865)
!1870 = !DILocation(line: 221, column: 2, scope: !1376, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 543, column: 2, scope: !1365, inlinedAt: !1865)
!1872 = !DILocation(line: 221, column: 12, scope: !1376, inlinedAt: !1871)
!1873 = !DILocation(line: 223, column: 13, scope: !1376, inlinedAt: !1871)
!1874 = !DILocation(line: 223, column: 6, scope: !1376, inlinedAt: !1871)
!1875 = !DILocation(line: 225, column: 14, scope: !1376, inlinedAt: !1871)
!1876 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 225, column: 6, scope: !1376, inlinedAt: !1871)
!1878 = !DILocation(line: 226, column: 18, scope: !1376, inlinedAt: !1871)
!1879 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 226, column: 6, scope: !1376, inlinedAt: !1871)
!1881 = !DILocation(line: 227, column: 4, scope: !1376, inlinedAt: !1871)
!1882 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 243, column: 22, scope: !1376, inlinedAt: !1871)
!1884 = !DILocation(line: 419, column: 6, scope: !1395, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 470, column: 9, scope: !1397, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 243, column: 2, scope: !1376, inlinedAt: !1871)
!1887 = !DILocation(line: 354, column: 9, scope: !34, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1885)
!1889 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1888)
!1890 = !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1885)
!1891 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 422, column: 4, scope: !1395, inlinedAt: !1885)
!1893 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1892)
!1894 = !DILocation(line: 247, column: 16, scope: !1376, inlinedAt: !1871)
!1895 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 247, column: 2, scope: !1376, inlinedAt: !1871)
!1898 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1897)
!1900 = !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1897)
!1901 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1897)
!1903 = !DILocation(line: 248, column: 7, scope: !1376, inlinedAt: !1871)
!1904 = !DILocation(line: 118, column: 42, scope: !1462)
!1905 = !{!1906}
!1906 = distinct !{!1906, !1907, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!1907 = distinct !{!1907, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!1908 = !DILocation(line: 118, column: 27, scope: !1462)
!1909 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 1858, column: 32, scope: !1911, inlinedAt: !1912)
!1911 = distinct !DISubprogram(name: "insert", scope: !12, file: !12, line: 1856, type: !8, scopeLine: 1857, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1912 = distinct !DILocation(line: 3510, column: 30, scope: !1913, inlinedAt: !1914)
!1913 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", scope: !12, file: !12, line: 3508, type: !8, scopeLine: 3510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!1914 = distinct !DILocation(line: 118, column: 27, scope: !1462)
!1915 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 1858, column: 15, scope: !1911, inlinedAt: !1912)
!1917 = !DILocation(line: 2170, column: 9, scope: !416, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 1857, column: 22, scope: !1911, inlinedAt: !1912)
!1919 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 670, column: 9, scope: !1483, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 3510, column: 14, scope: !1913, inlinedAt: !1914)
!1922 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 672, column: 12, scope: !1483, inlinedAt: !1921)
!1925 = !DILocation(line: 252, column: 57, scope: !149, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 274, column: 29, scope: !90, inlinedAt: !1924)
!1927 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1924)
!1928 = !DILocation(line: 672, column: 6, scope: !1483, inlinedAt: !1921)
!1929 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 675, column: 16, scope: !1483, inlinedAt: !1921)
!1931 = !DILocation(line: 675, column: 25, scope: !1483, inlinedAt: !1921)
!1932 = !DILocation(line: 425, column: 10, scope: !1404, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 674, column: 6, scope: !1483, inlinedAt: !1921)
!1934 = !DILocation(line: 425, column: 6, scope: !1404, inlinedAt: !1933)
!1935 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1933)
!1936 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1933)
!1937 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 679, column: 6, scope: !1483, inlinedAt: !1921)
!1939 = !DILocation(line: 680, column: 24, scope: !1483, inlinedAt: !1921)
!1940 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 680, column: 6, scope: !1483, inlinedAt: !1921)
!1942 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 686, column: 18, scope: !1483, inlinedAt: !1921)
!1944 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 686, column: 2, scope: !1483, inlinedAt: !1921)
!1946 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 687, column: 8, scope: !1483, inlinedAt: !1921)
!1948 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 688, column: 8, scope: !1483, inlinedAt: !1921)
!1951 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1950)
!1953 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 858, column: 12, scope: !1779, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 118, column: 15, scope: !1462)
!1957 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1955)
!1958 = !DILocation(line: 858, column: 6, scope: !1779, inlinedAt: !1956)
!1959 = !DILocation(line: 863, column: 10, scope: !1779, inlinedAt: !1956)
!1960 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 865, column: 13, scope: !1779, inlinedAt: !1956)
!1962 = !DILocation(line: 865, column: 7, scope: !1779, inlinedAt: !1956)
!1963 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 866, column: 19, scope: !1779, inlinedAt: !1956)
!1965 = !DILocation(line: 419, column: 6, scope: !1395, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 866, column: 5, scope: !1779, inlinedAt: !1956)
!1967 = !DILocation(line: 354, column: 9, scope: !34, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1966)
!1969 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1968)
!1970 = !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !1966)
!1971 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 422, column: 4, scope: !1395, inlinedAt: !1966)
!1973 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !1972)
!1974 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 867, column: 23, scope: !1779, inlinedAt: !1956)
!1976 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 867, column: 3, scope: !1779, inlinedAt: !1956)
!1979 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1978)
!1981 = !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1978)
!1982 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1978)
!1984 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 1174, column: 9, scope: !1812, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 902, column: 8, scope: !1779, inlinedAt: !1956)
!1988 = !DILocation(line: 269, column: 7, scope: !27, inlinedAt: !1978)
!1989 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 877, column: 11, scope: !1779, inlinedAt: !1956)
!1992 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !1991)
!1993 = !DILocation(line: 877, column: 10, scope: !1779, inlinedAt: !1956)
!1994 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 889, column: 6, scope: !1779, inlinedAt: !1956)
!1996 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 890, column: 22, scope: !1779, inlinedAt: !1956)
!1998 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 890, column: 6, scope: !1779, inlinedAt: !1956)
!2000 = !DILocation(line: 892, column: 10, scope: !1779, inlinedAt: !1956)
!2001 = !DILocation(line: 883, column: 20, scope: !1779, inlinedAt: !1956)
!2002 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 894, column: 9, scope: !1779, inlinedAt: !1956)
!2004 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 895, column: 9, scope: !1779, inlinedAt: !1956)
!2006 = !DILocation(line: 896, column: 8, scope: !1779, inlinedAt: !1956)
!2007 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 898, column: 14, scope: !1779, inlinedAt: !1956)
!2009 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !1986)
!2011 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !1986)
!2013 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 118, column: 5, scope: !1462)
!2018 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2015)
!2019 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2016)
!2020 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2016)
!2024 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2016)
!2025 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 118, column: 5, scope: !1462)
!2030 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2027)
!2031 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2028)
!2032 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2035)
!2035 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2028)
!2036 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2028)
!2037 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 118, column: 5, scope: !1462)
!2042 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2039)
!2043 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2040)
!2044 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2040)
!2048 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2040)
!2049 = !DILocation(line: 118, column: 5, scope: !1462)
!2050 = !DILocation(line: 117, column: 39, scope: !1462)
!2051 = !DILocation(line: 988, column: 50, scope: !121, inlinedAt: !1855)
!2052 = distinct !{!2052, !1686, !2053, !182}
!2053 = !DILocation(line: 119, column: 3, scope: !1462)
!2054 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 118, column: 5, scope: !1462)
!2059 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2056)
!2060 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2057)
!2061 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2057)
!2065 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2057)
!2066 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 118, column: 5, scope: !1462)
!2071 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2068)
!2072 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2069)
!2073 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2069)
!2077 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2069)
!2078 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 121, column: 1, scope: !1462)
!2083 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2080)
!2084 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2081)
!2085 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2081)
!2089 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2081)
!2090 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", scope: !12, file: !12, line: 3431, type: !8, scopeLine: 3433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!2091 = !DILocation(line: 241, column: 51, scope: !11, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 540, column: 21, scope: !1365, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 3434, column: 45, scope: !2090)
!2094 = !DILocation(line: 204, column: 36, scope: !17, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 540, column: 9, scope: !1365, inlinedAt: !2093)
!2096 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 543, column: 21, scope: !1365, inlinedAt: !2093)
!2098 = !DILocation(line: 1070, column: 16, scope: !1373, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 543, column: 56, scope: !1365, inlinedAt: !2093)
!2100 = !DILocation(line: 221, column: 2, scope: !1376, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 543, column: 2, scope: !1365, inlinedAt: !2093)
!2102 = !DILocation(line: 221, column: 12, scope: !1376, inlinedAt: !2101)
!2103 = !DILocation(line: 223, column: 13, scope: !1376, inlinedAt: !2101)
!2104 = !DILocation(line: 223, column: 6, scope: !1376, inlinedAt: !2101)
!2105 = !DILocation(line: 225, column: 14, scope: !1376, inlinedAt: !2101)
!2106 = !DILocation(line: 224, column: 26, scope: !1385, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 225, column: 6, scope: !1376, inlinedAt: !2101)
!2108 = !DILocation(line: 226, column: 18, scope: !1376, inlinedAt: !2101)
!2109 = !DILocation(line: 261, column: 31, scope: !1389, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 226, column: 6, scope: !1376, inlinedAt: !2101)
!2111 = !DILocation(line: 227, column: 4, scope: !1376, inlinedAt: !2101)
!2112 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 243, column: 22, scope: !1376, inlinedAt: !2101)
!2114 = !DILocation(line: 419, column: 6, scope: !1395, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 470, column: 9, scope: !1397, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 243, column: 2, scope: !1376, inlinedAt: !2101)
!2117 = !DILocation(line: 354, column: 9, scope: !34, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !2115)
!2119 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !2118)
!2120 = !DILocation(line: 420, column: 4, scope: !1395, inlinedAt: !2115)
!2121 = !DILocation(line: 431, column: 33, scope: !1404, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 422, column: 4, scope: !1395, inlinedAt: !2115)
!2123 = !DILocation(line: 431, column: 2, scope: !1404, inlinedAt: !2122)
!2124 = !DILocation(line: 247, column: 16, scope: !1376, inlinedAt: !2101)
!2125 = !DILocation(line: 229, column: 9, scope: !25, inlinedAt: !2126)
!2126 = distinct !DILocation(line: 267, column: 2, scope: !27, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 247, column: 2, scope: !1376, inlinedAt: !2101)
!2128 = !DILocation(line: 229, column: 26, scope: !25, inlinedAt: !2126)
!2129 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !2127)
!2131 = !DILocation(line: 268, column: 22, scope: !27, inlinedAt: !2127)
!2132 = !DILocation(line: 354, column: 7, scope: !34, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 268, column: 2, scope: !27, inlinedAt: !2127)
!2134 = !DILocation(line: 248, column: 7, scope: !1376, inlinedAt: !2101)
!2135 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 1387, column: 52, scope: !1525, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 3435, column: 13, scope: !2090)
!2138 = !DILocation(line: 1063, column: 16, scope: !186, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 391, column: 32, scope: !1471, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 1420, column: 2, scope: !1532, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 1387, column: 22, scope: !1525, inlinedAt: !2137)
!2142 = !DILocation(line: 391, column: 23, scope: !1471, inlinedAt: !2140)
!2143 = !DILocation(line: 391, column: 47, scope: !1471, inlinedAt: !2140)
!2144 = !DILocation(line: 391, column: 6, scope: !1471, inlinedAt: !2140)
!2145 = !DILocation(line: 392, column: 4, scope: !1471, inlinedAt: !2140)
!2146 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 1387, column: 35, scope: !1525, inlinedAt: !2137)
!2148 = !DILocation(line: 1421, column: 9, scope: !1532, inlinedAt: !2141)
!2149 = !DILocation(line: 3437, column: 5, scope: !2090)
!2150 = !DILocation(line: 234, column: 28, scope: !88, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 274, column: 16, scope: !90, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 285, column: 7, scope: !92, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 794, column: 9, scope: !94, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 3437, column: 5, scope: !2090)
!2155 = !DILocation(line: 274, column: 26, scope: !90, inlinedAt: !2152)
!2156 = !DILocation(line: 285, column: 6, scope: !92, inlinedAt: !2153)
!2157 = !DILocation(line: 158, column: 2, scope: !100, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 496, column: 13, scope: !102, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 292, column: 9, scope: !104, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2153)
!2161 = !DILocation(line: 286, column: 4, scope: !92, inlinedAt: !2153)
!2162 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_YAML_Element.cpp", scope: !1, file: !1, type: !8, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!2163 = !DILocation(line: 74, column: 25, scope: !2164, inlinedAt: !2167)
!2164 = !DILexicalBlockFile(scope: !2166, file: !2165, discriminator: 0)
!2165 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/iostream", directory: "")
!2166 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !1, file: !1, type: !8, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!2167 = distinct !DILocation(line: 0, scope: !2162)
!2168 = !DILocation(line: 0, scope: !2166, inlinedAt: !2167)

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-pc-linux-gnu-
