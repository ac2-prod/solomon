
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-amdgcn-amd-amdhsa--gfx90a
; ModuleID = '../utils/param_utils.cpp'
source_filename = "../utils/param_utils.cpp"
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
!1 = !DIFile(filename: "../utils/param_utils.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
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
; ModuleID = '/tmp/param_utils-9264c8.bc'
source_filename = "../utils/param_utils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: uwtable
define dso_local void @_ZN7Mantevo21read_args_into_stringEiPPcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !dbg !7 {
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = load ptr, ptr %1, align 8, !dbg !10, !tbaa !11
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1, !dbg !15
  %9 = load i64, ptr %8, align 8, !dbg !15, !tbaa !23
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #8, !dbg !27
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %9, ptr noundef %7, i64 noundef %10), !dbg !31
  %12 = icmp sgt i32 %0, 1, !dbg !32
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !33

.lr.ph:                                           ; preds = %3
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %wide.trip.count = zext i32 %0 to i64, !dbg !32
  br label %17, !dbg !33

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %3
  ret void, !dbg !34

17:                                               ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8, !dbg !35
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8, !dbg !36
  %18 = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv, !dbg !37
  %19 = load ptr, ptr %18, align 8, !dbg !37, !tbaa !11
  store ptr %13, ptr %6, align 8, !dbg !38, !tbaa !43
  %20 = icmp eq ptr %19, null, !dbg !44
  br i1 %20, label %.noexc, label %21, !dbg !45

.noexc:                                           ; preds = %17
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #9, !dbg !46
  unreachable, !dbg !46

21:                                               ; preds = %17
  %22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #8, !dbg !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8, !dbg !49
  store i64 %22, ptr %4, align 8, !dbg !53, !tbaa !54
  %23 = icmp ugt i64 %22, 15, !dbg !55
  br i1 %23, label %.noexc.i, label %._crit_edge.i.i, !dbg !56

.noexc.i:                                         ; preds = %21
  %24 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0), !dbg !57
  store ptr %24, ptr %6, align 8, !dbg !58, !tbaa !61
  %25 = load i64, ptr %4, align 8, !dbg !62, !tbaa !54
  store i64 %25, ptr %13, align 8, !dbg !63, !tbaa !66
  br label %._crit_edge.i.i, !dbg !67

._crit_edge.i.i:                                  ; preds = %.noexc.i, %21
  %26 = phi ptr [ %24, %.noexc.i ], [ %13, %21 ], !dbg !68
  switch i64 %22, label %29 [
    i64 1, label %27
    i64 0, label %30
  ], !dbg !71

27:                                               ; preds = %._crit_edge.i.i
  %28 = load i8, ptr %19, align 1, !dbg !76, !tbaa !66
  store i8 %28, ptr %26, align 1, !dbg !79, !tbaa !66
  br label %30, !dbg !80

29:                                               ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr nonnull align 1 %19, i64 %22, i1 false), !dbg !81
  br label %30, !dbg !84

30:                                               ; preds = %29, %27, %._crit_edge.i.i
  %31 = load i64, ptr %4, align 8, !dbg !85, !tbaa !54
  store i64 %31, ptr %14, align 8, !dbg !86, !tbaa !23
  %32 = load ptr, ptr %6, align 8, !dbg !91, !tbaa !61
  %33 = getelementptr inbounds i8, ptr %32, i64 %31, !dbg !93
  store i8 0, ptr %33, align 1, !dbg !94, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8, !dbg !96
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc15 unwind label %62, !dbg !97

.noexc15:                                         ; preds = %30
  store ptr %15, ptr %5, align 8, !dbg !104, !tbaa !43, !alias.scope !109
  %35 = load ptr, ptr %34, align 8, !dbg !112, !tbaa !61
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2, !dbg !116
  %37 = icmp eq ptr %35, %36, !dbg !119
  br i1 %37, label %38, label %44, !dbg !120

38:                                               ; preds = %.noexc15
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1, !dbg !121
  %40 = load i64, ptr %39, align 8, !dbg !121, !tbaa !23
  %41 = add i64 %40, 1, !dbg !124
  %42 = icmp eq i64 %41, 0, !dbg !125
  br i1 %42, label %46, label %43, !dbg !127

43:                                               ; preds = %38
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %15, ptr nonnull align 8 %35, i64 %41, i1 false), !dbg !128
  br label %46, !dbg !129

44:                                               ; preds = %.noexc15
  store ptr %35, ptr %5, align 8, !dbg !130, !tbaa !61, !alias.scope !109
  %45 = load i64, ptr %36, align 8, !dbg !132, !tbaa !66
  store i64 %45, ptr %15, align 8, !dbg !133, !tbaa !66, !alias.scope !109
  br label %46

46:                                               ; preds = %44, %43, %38
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1, !dbg !135
  %48 = load i64, ptr %47, align 8, !dbg !135, !tbaa !23
  store i64 %48, ptr %16, align 8, !dbg !137, !tbaa !23, !alias.scope !109
  store ptr %36, ptr %34, align 8, !dbg !139, !tbaa !61
  store i64 0, ptr %47, align 8, !dbg !141, !tbaa !23
  store i8 0, ptr %36, align 8, !dbg !144, !tbaa !66
  %49 = load i64, ptr %16, align 8, !dbg !146, !tbaa !23
  %50 = load i64, ptr %8, align 8, !dbg !152, !tbaa !23
  %51 = sub i64 4611686018427387903, %50, !dbg !158
  %52 = icmp ult i64 %51, %49, !dbg !159
  br i1 %52, label %53, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, !dbg !160

53:                                               ; preds = %46
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #9
          to label %.noexc16 unwind label %.loopexit.split-lp, !dbg !161

.noexc16:                                         ; preds = %53
  unreachable, !dbg !161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %46
  %54 = load ptr, ptr %5, align 8, !dbg !162, !tbaa !61
  %55 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %54, i64 noundef %49)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit, !dbg !164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %56 = load ptr, ptr %5, align 8, !dbg !165, !tbaa !61
  %57 = icmp eq ptr %56, %15, !dbg !172
  br i1 %57, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %58, !dbg !173

58:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %56) #10, !dbg !174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %58
  %59 = load ptr, ptr %6, align 8, !dbg !184, !tbaa !61
  %60 = icmp eq ptr %59, %13, !dbg !189
  br i1 %60, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %61, !dbg !190

61:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %59) #10, !dbg !191
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, !dbg !195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8, !dbg !196
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8, !dbg !196
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !197
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !32
  br i1 %exitcond.not, label %._crit_edge, label %17, !dbg !33, !llvm.loop !198

62:                                               ; preds = %30
  %63 = landingpad { ptr, i32 }
          cleanup, !dbg !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, !dbg !34

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup, !dbg !34
  br label %64, !dbg !34

.loopexit.split-lp:                               ; preds = %53
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup, !dbg !34
  br label %64, !dbg !34

64:                                               ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %65 = load ptr, ptr %5, align 8, !dbg !201, !tbaa !61
  %66 = icmp eq ptr %65, %15, !dbg !206
  br i1 %66, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %67, !dbg !207

67:                                               ; preds = %64
  call void @_ZdlPv(ptr noundef %65) #10, !dbg !208
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, !dbg !212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %67, %64, %62
  %.pn = phi { ptr, i32 } [ %63, %62 ], [ %lpad.phi, %64 ], [ %lpad.phi, %67 ]
  %68 = load ptr, ptr %6, align 8, !dbg !213, !tbaa !61
  %69 = icmp eq ptr %68, %13, !dbg !218
  br i1 %69, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %70, !dbg !219

70:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZdlPv(ptr noundef %68) #10, !dbg !220
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, !dbg !224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8, !dbg !196
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8, !dbg !196
  resume { ptr, i32 } %.pn, !dbg !33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare dso_local void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

declare dso_local noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(ptr noundef) local_unnamed_addr #6

declare dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local void @_ZN7Mantevo21read_file_into_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !dbg !225 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::basic_ifstream", align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1, !dbg !226
  store i64 0, ptr %8, align 8, !dbg !231, !tbaa !23
  %9 = load ptr, ptr %1, align 8, !dbg !232, !tbaa !61
  store i8 0, ptr %9, align 1, !dbg !234, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %4) #8, !dbg !236
  %10 = load ptr, ptr %0, align 8, !dbg !237, !tbaa !61
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %10, i32 noundef 8), !dbg !241
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8, !dbg !242
  %11 = load ptr, ptr %4, align 8, !dbg !243, !tbaa !244
  %12 = getelementptr i8, ptr %11, i64 -24, !dbg !243
  %13 = load i64, ptr %12, align 8, !dbg !243
  %14 = getelementptr inbounds i8, ptr %4, i64 %13, !dbg !243
  %15 = getelementptr inbounds %"class.std::ios_base", ptr %14, i64 0, i32 5, !dbg !246
  %16 = load i32, ptr %15, align 8, !dbg !246, !tbaa !252
  %17 = and i32 %16, 2, !dbg !259
  %.not30 = icmp eq i32 %17, 0, !dbg !263
  br i1 %.not30, label %.lr.ph, label %._crit_edge, !dbg !264

.lr.ph:                                           ; preds = %2
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  br label %22, !dbg !264

22:                                               ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %23 = phi i64 [ %13, %.lr.ph ], [ %81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %24 = getelementptr inbounds i8, ptr %4, i64 %23, !dbg !243
  %25 = getelementptr inbounds %"class.std::basic_ios", ptr %24, i64 0, i32 5, !dbg !265
  %26 = load ptr, ptr %25, align 8, !dbg !265, !tbaa !271
  %.not.i.i.i = icmp eq ptr %26, null, !dbg !274
  br i1 %.not.i.i.i, label %27, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !dbg !277

27:                                               ; preds = %22
  invoke void @_ZSt16__throw_bad_castv() #9
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !278

.noexc:                                           ; preds = %27
  unreachable, !dbg !278

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %22
  %28 = getelementptr inbounds %"class.std::ctype", ptr %26, i64 0, i32 8, !dbg !279
  %29 = load i8, ptr %28, align 8, !dbg !279, !tbaa !283
  %.not.i1.i.i = icmp eq i8 %29, 0, !dbg !279
  br i1 %.not.i1.i.i, label %33, label %30, !dbg !279

30:                                               ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %31 = getelementptr inbounds %"class.std::ctype", ptr %26, i64 0, i32 9, i64 10, !dbg !286
  %32 = load i8, ptr %31, align 1, !dbg !286, !tbaa !66
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, !dbg !287

33:                                               ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %26)
          to label %.noexc10 unwind label %.loopexit, !dbg !288

.noexc10:                                         ; preds = %33
  %34 = load ptr, ptr %26, align 8, !dbg !289, !tbaa !244
  %35 = getelementptr inbounds ptr, ptr %34, i64 6, !dbg !289
  %36 = load ptr, ptr %35, align 8, !dbg !289
  %37 = invoke noundef signext i8 %36(ptr noundef nonnull align 8 dereferenceable(570) %26, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !dbg !289

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc10, %30
  %.0.i.i.i = phi i8 [ %32, %30 ], [ %37, %.noexc10 ], !dbg !290
  %38 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %5, i64 noundef 256, i8 noundef signext %.0.i.i.i)
          to label %_ZNSi7getlineEPcl.exit unwind label %.loopexit, !dbg !291

_ZNSi7getlineEPcl.exit:                           ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8, !dbg !292
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8, !dbg !293
  store ptr %18, ptr %7, align 8, !dbg !294, !tbaa !43
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #8, !dbg !297
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8, !dbg !299
  store i64 %39, ptr %3, align 8, !dbg !301, !tbaa !54
  %40 = icmp ugt i64 %39, 15, !dbg !302
  br i1 %40, label %.noexc.i, label %._crit_edge.i.i, !dbg !303

.noexc.i:                                         ; preds = %_ZNSi7getlineEPcl.exit
  %41 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %.noexc13 unwind label %86, !dbg !304

.noexc13:                                         ; preds = %.noexc.i
  store ptr %41, ptr %7, align 8, !dbg !305, !tbaa !61
  %42 = load i64, ptr %3, align 8, !dbg !307, !tbaa !54
  store i64 %42, ptr %18, align 8, !dbg !308, !tbaa !66
  br label %._crit_edge.i.i, !dbg !310

._crit_edge.i.i:                                  ; preds = %.noexc13, %_ZNSi7getlineEPcl.exit
  %43 = phi ptr [ %41, %.noexc13 ], [ %18, %_ZNSi7getlineEPcl.exit ], !dbg !311
  switch i64 %39, label %46 [
    i64 1, label %44
    i64 0, label %47
  ], !dbg !313

44:                                               ; preds = %._crit_edge.i.i
  %45 = load i8, ptr %5, align 16, !dbg !316, !tbaa !66
  store i8 %45, ptr %43, align 1, !dbg !318, !tbaa !66
  br label %47, !dbg !319

46:                                               ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr nonnull align 16 %5, i64 %39, i1 false), !dbg !320
  br label %47, !dbg !322

47:                                               ; preds = %46, %44, %._crit_edge.i.i
  %48 = load i64, ptr %3, align 8, !dbg !323, !tbaa !54
  store i64 %48, ptr %19, align 8, !dbg !324, !tbaa !23
  %49 = load ptr, ptr %7, align 8, !dbg !327, !tbaa !61
  %50 = getelementptr inbounds i8, ptr %49, i64 %48, !dbg !329
  store i8 0, ptr %50, align 1, !dbg !330, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8, !dbg !332
  %51 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc14 unwind label %88, !dbg !333

.noexc14:                                         ; preds = %47
  store ptr %20, ptr %6, align 8, !dbg !337, !tbaa !43, !alias.scope !340
  %52 = load ptr, ptr %51, align 8, !dbg !343, !tbaa !61
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2, !dbg !346
  %54 = icmp eq ptr %52, %53, !dbg !348
  br i1 %54, label %55, label %61, !dbg !349

55:                                               ; preds = %.noexc14
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1, !dbg !350
  %57 = load i64, ptr %56, align 8, !dbg !350, !tbaa !23
  %58 = add i64 %57, 1, !dbg !352
  %59 = icmp eq i64 %58, 0, !dbg !353
  br i1 %59, label %63, label %60, !dbg !355

60:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %20, ptr nonnull align 8 %52, i64 %58, i1 false), !dbg !356
  br label %63, !dbg !357

61:                                               ; preds = %.noexc14
  store ptr %52, ptr %6, align 8, !dbg !358, !tbaa !61, !alias.scope !340
  %62 = load i64, ptr %53, align 8, !dbg !360, !tbaa !66
  store i64 %62, ptr %20, align 8, !dbg !361, !tbaa !66, !alias.scope !340
  br label %63

63:                                               ; preds = %61, %60, %55
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1, !dbg !363
  %65 = load i64, ptr %64, align 8, !dbg !363, !tbaa !23
  store i64 %65, ptr %21, align 8, !dbg !365, !tbaa !23, !alias.scope !340
  store ptr %53, ptr %51, align 8, !dbg !367, !tbaa !61
  store i64 0, ptr %64, align 8, !dbg !369, !tbaa !23
  store i8 0, ptr %53, align 8, !dbg !372, !tbaa !66
  %66 = load i64, ptr %21, align 8, !dbg !374, !tbaa !23
  %67 = load i64, ptr %8, align 8, !dbg !378, !tbaa !23
  %68 = sub i64 4611686018427387903, %67, !dbg !382
  %69 = icmp ult i64 %68, %66, !dbg !383
  br i1 %69, label %70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, !dbg !384

70:                                               ; preds = %63
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #9
          to label %.noexc15 unwind label %.loopexit.split-lp21, !dbg !385

.noexc15:                                         ; preds = %70
  unreachable, !dbg !385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %63
  %71 = load ptr, ptr %6, align 8, !dbg !386, !tbaa !61
  %72 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %71, i64 noundef %66)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit20, !dbg !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %73 = load ptr, ptr %6, align 8, !dbg !389, !tbaa !61
  %74 = icmp eq ptr %73, %20, !dbg !394
  br i1 %74, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %75, !dbg !395

75:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %73) #10, !dbg !396
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, !dbg !400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %75
  %76 = load ptr, ptr %7, align 8, !dbg !401, !tbaa !61
  %77 = icmp eq ptr %76, %18, !dbg !406
  br i1 %77, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %78, !dbg !407

78:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %76) #10, !dbg !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, !dbg !412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8, !dbg !413
  %79 = load ptr, ptr %4, align 8, !dbg !243, !tbaa !244
  %80 = getelementptr i8, ptr %79, i64 -24, !dbg !243
  %81 = load i64, ptr %80, align 8, !dbg !243
  %82 = getelementptr inbounds i8, ptr %4, i64 %81, !dbg !243
  %83 = getelementptr inbounds %"class.std::ios_base", ptr %82, i64 0, i32 5, !dbg !246
  %84 = load i32, ptr %83, align 8, !dbg !246, !tbaa !252
  %85 = and i32 %84, 2, !dbg !259
  %.not = icmp eq i32 %85, 0, !dbg !263
  br i1 %.not, label %22, label %._crit_edge, !dbg !264, !llvm.loop !414

.loopexit:                                        ; preds = %33, %.noexc10, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup, !dbg !416
  br label %97, !dbg !416

.loopexit.split-lp:                               ; preds = %27
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup, !dbg !416
  br label %97, !dbg !416

86:                                               ; preds = %.noexc.i
  %87 = landingpad { ptr, i32 }
          cleanup, !dbg !416
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, !dbg !416

88:                                               ; preds = %47
  %89 = landingpad { ptr, i32 }
          cleanup, !dbg !416
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, !dbg !416

.loopexit20:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup, !dbg !416
  br label %90, !dbg !416

.loopexit.split-lp21:                             ; preds = %70
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup, !dbg !416
  br label %90, !dbg !416

90:                                               ; preds = %.loopexit.split-lp21, %.loopexit20
  %lpad.phi24 = phi { ptr, i32 } [ %lpad.loopexit22, %.loopexit20 ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp21 ]
  %91 = load ptr, ptr %6, align 8, !dbg !417, !tbaa !61
  %92 = icmp eq ptr %91, %20, !dbg !422
  br i1 %92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %93, !dbg !423

93:                                               ; preds = %90
  call void @_ZdlPv(ptr noundef %91) #10, !dbg !424
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, !dbg !428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %93, %90, %88
  %.pn = phi { ptr, i32 } [ %89, %88 ], [ %lpad.phi24, %90 ], [ %lpad.phi24, %93 ]
  %94 = load ptr, ptr %7, align 8, !dbg !429, !tbaa !61
  %95 = icmp eq ptr %94, %18, !dbg !434
  br i1 %95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %96, !dbg !435

96:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  call void @_ZdlPv(ptr noundef %94) #10, !dbg !436
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, !dbg !440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %86
  %.pn.pn = phi { ptr, i32 } [ %87, %86 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn, %96 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8, !dbg !413
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8, !dbg !413
  br label %97, !dbg !413

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %2
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8, !dbg !416
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #8, !dbg !416
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %4) #8, !dbg !416
  ret void, !dbg !416

97:                                               ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8, !dbg !416
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #8, !dbg !416
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %4) #8, !dbg !416
  resume { ptr, i32 } %.pn.pn.pn, !dbg !416
}

; Function Attrs: uwtable
declare dso_local void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #7 align 2

declare dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { builtin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../utils/param_utils.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)"}
!7 = distinct !DISubprogram(name: "read_args_into_string", scope: !1, file: !1, line: 36, type: !8, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!8 = !DISubroutineType(types: !9)
!9 = !{}
!10 = !DILocation(line: 38, column: 16, scope: !7)
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C++ TBAA"}
!15 = !DILocation(line: 1063, column: 16, scope: !16, inlinedAt: !18)
!16 = distinct !DISubprogram(name: "size", scope: !17, file: !17, line: 1062, type: !8, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!17 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/basic_string.h", directory: "")
!18 = distinct !DILocation(line: 1646, column: 40, scope: !19, inlinedAt: !20)
!19 = distinct !DISubprogram(name: "assign", scope: !17, file: !17, line: 1643, type: !8, scopeLine: 1644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!20 = distinct !DILocation(line: 814, column: 22, scope: !21, inlinedAt: !22)
!21 = distinct !DISubprogram(name: "operator=", scope: !17, file: !17, line: 813, type: !8, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!22 = distinct !DILocation(line: 38, column: 14, scope: !7)
!23 = !{!24, !26, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !13, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !13, i64 0}
!27 = !DILocation(line: 395, column: 9, scope: !28, inlinedAt: !30)
!28 = distinct !DISubprogram(name: "length", scope: !29, file: !29, line: 389, type: !8, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!29 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/char_traits.h", directory: "")
!30 = distinct !DILocation(line: 1647, column: 6, scope: !19, inlinedAt: !20)
!31 = !DILocation(line: 1646, column: 9, scope: !19, inlinedAt: !20)
!32 = !DILocation(line: 39, column: 17, scope: !7)
!33 = !DILocation(line: 39, column: 3, scope: !7)
!34 = !DILocation(line: 42, column: 1, scope: !7)
!35 = !DILocation(line: 40, column: 19, scope: !7)
!36 = !DILocation(line: 40, column: 25, scope: !7)
!37 = !DILocation(line: 40, column: 37, scope: !7)
!38 = !DILocation(line: 200, column: 25, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "_Alloc_hider", scope: !17, file: !17, line: 199, type: !8, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!40 = distinct !DILocation(line: 634, column: 9, scope: !41, inlinedAt: !42)
!41 = distinct !DISubprogram(name: "basic_string<std::allocator<char> >", scope: !17, file: !17, line: 633, type: !8, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!42 = distinct !DILocation(line: 40, column: 25, scope: !7)
!43 = !{!25, !12, i64 0}
!44 = !DILocation(line: 637, column: 10, scope: !41, inlinedAt: !42)
!45 = !DILocation(line: 637, column: 6, scope: !41, inlinedAt: !42)
!46 = !DILocation(line: 638, column: 4, scope: !41, inlinedAt: !42)
!47 = !DILocation(line: 395, column: 9, scope: !28, inlinedAt: !48)
!48 = distinct !DILocation(line: 640, column: 30, scope: !41, inlinedAt: !42)
!49 = !DILocation(line: 221, column: 2, scope: !50, inlinedAt: !52)
!50 = distinct !DISubprogram(name: "_M_construct<const char *>", scope: !51, file: !51, line: 218, type: !8, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!51 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/basic_string.tcc", directory: "")
!52 = distinct !DILocation(line: 641, column: 2, scope: !41, inlinedAt: !42)
!53 = !DILocation(line: 221, column: 12, scope: !50, inlinedAt: !52)
!54 = !{!26, !26, i64 0}
!55 = !DILocation(line: 223, column: 13, scope: !50, inlinedAt: !52)
!56 = !DILocation(line: 223, column: 6, scope: !50, inlinedAt: !52)
!57 = !DILocation(line: 225, column: 14, scope: !50, inlinedAt: !52)
!58 = !DILocation(line: 224, column: 26, scope: !59, inlinedAt: !60)
!59 = distinct !DISubprogram(name: "_M_data", scope: !17, file: !17, line: 223, type: !8, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!60 = distinct !DILocation(line: 225, column: 6, scope: !50, inlinedAt: !52)
!61 = !{!24, !12, i64 0}
!62 = !DILocation(line: 226, column: 18, scope: !50, inlinedAt: !52)
!63 = !DILocation(line: 261, column: 31, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "_M_capacity", scope: !17, file: !17, line: 260, type: !8, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!65 = distinct !DILocation(line: 226, column: 6, scope: !50, inlinedAt: !52)
!66 = !{!13, !13, i64 0}
!67 = !DILocation(line: 227, column: 4, scope: !50, inlinedAt: !52)
!68 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !70)
!69 = distinct !DISubprogram(name: "_M_data", scope: !17, file: !17, line: 233, type: !8, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!70 = distinct !DILocation(line: 243, column: 22, scope: !50, inlinedAt: !52)
!71 = !DILocation(line: 419, column: 6, scope: !72, inlinedAt: !73)
!72 = distinct !DISubprogram(name: "_S_copy", scope: !17, file: !17, line: 417, type: !8, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!73 = distinct !DILocation(line: 476, column: 9, scope: !74, inlinedAt: !75)
!74 = distinct !DISubprogram(name: "_S_copy_chars", scope: !17, file: !17, line: 474, type: !8, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!75 = distinct !DILocation(line: 243, column: 2, scope: !50, inlinedAt: !52)
!76 = !DILocation(line: 354, column: 9, scope: !77, inlinedAt: !78)
!77 = distinct !DISubprogram(name: "assign", scope: !29, file: !29, line: 347, type: !8, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!78 = distinct !DILocation(line: 420, column: 4, scope: !72, inlinedAt: !73)
!79 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !78)
!80 = !DILocation(line: 420, column: 4, scope: !72, inlinedAt: !73)
!81 = !DILocation(line: 431, column: 33, scope: !82, inlinedAt: !83)
!82 = distinct !DISubprogram(name: "copy", scope: !29, file: !29, line: 423, type: !8, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!83 = distinct !DILocation(line: 422, column: 4, scope: !72, inlinedAt: !73)
!84 = !DILocation(line: 431, column: 2, scope: !82, inlinedAt: !83)
!85 = !DILocation(line: 247, column: 16, scope: !50, inlinedAt: !52)
!86 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !88)
!87 = distinct !DISubprogram(name: "_M_length", scope: !17, file: !17, line: 228, type: !8, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!88 = distinct !DILocation(line: 267, column: 2, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "_M_set_length", scope: !17, file: !17, line: 265, type: !8, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!90 = distinct !DILocation(line: 247, column: 2, scope: !50, inlinedAt: !52)
!91 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !92)
!92 = distinct !DILocation(line: 268, column: 22, scope: !89, inlinedAt: !90)
!93 = !DILocation(line: 268, column: 22, scope: !89, inlinedAt: !90)
!94 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !95)
!95 = distinct !DILocation(line: 268, column: 2, scope: !89, inlinedAt: !90)
!96 = !DILocation(line: 248, column: 7, scope: !50, inlinedAt: !52)
!97 = !DILocation(line: 2170, column: 9, scope: !98, inlinedAt: !99)
!98 = distinct !DISubprogram(name: "replace", scope: !17, file: !17, line: 2166, type: !8, scopeLine: 2168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!99 = distinct !DILocation(line: 1927, column: 15, scope: !100, inlinedAt: !101)
!100 = distinct !DISubprogram(name: "insert", scope: !17, file: !17, line: 1924, type: !8, scopeLine: 1925, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!101 = distinct !DILocation(line: 3540, column: 30, scope: !102, inlinedAt: !103)
!102 = distinct !DISubprogram(name: "operator+<char, std::char_traits<char>, std::allocator<char> >", scope: !17, file: !17, line: 3538, type: !8, scopeLine: 3540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!103 = distinct !DILocation(line: 40, column: 23, scope: !7)
!104 = !DILocation(line: 204, column: 36, scope: !105, inlinedAt: !106)
!105 = distinct !DISubprogram(name: "_Alloc_hider", scope: !17, file: !17, line: 203, type: !8, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!106 = distinct !DILocation(line: 670, column: 9, scope: !107, inlinedAt: !108)
!107 = distinct !DISubprogram(name: "basic_string", scope: !17, file: !17, line: 669, type: !8, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!108 = distinct !DILocation(line: 3540, column: 14, scope: !102, inlinedAt: !103)
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!111 = distinct !{!111, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!112 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !113)
!113 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !115)
!114 = distinct !DISubprogram(name: "_M_is_local", scope: !17, file: !17, line: 273, type: !8, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!115 = distinct !DILocation(line: 672, column: 12, scope: !107, inlinedAt: !108)
!116 = !DILocation(line: 252, column: 57, scope: !117, inlinedAt: !118)
!117 = distinct !DISubprogram(name: "_M_local_data", scope: !17, file: !17, line: 249, type: !8, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!118 = distinct !DILocation(line: 274, column: 29, scope: !114, inlinedAt: !115)
!119 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !115)
!120 = !DILocation(line: 672, column: 6, scope: !107, inlinedAt: !108)
!121 = !DILocation(line: 1070, column: 16, scope: !122, inlinedAt: !123)
!122 = distinct !DISubprogram(name: "length", scope: !17, file: !17, line: 1069, type: !8, scopeLine: 1070, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!123 = distinct !DILocation(line: 675, column: 16, scope: !107, inlinedAt: !108)
!124 = !DILocation(line: 675, column: 25, scope: !107, inlinedAt: !108)
!125 = !DILocation(line: 425, column: 10, scope: !82, inlinedAt: !126)
!126 = distinct !DILocation(line: 674, column: 6, scope: !107, inlinedAt: !108)
!127 = !DILocation(line: 425, column: 6, scope: !82, inlinedAt: !126)
!128 = !DILocation(line: 431, column: 33, scope: !82, inlinedAt: !126)
!129 = !DILocation(line: 431, column: 2, scope: !82, inlinedAt: !126)
!130 = !DILocation(line: 224, column: 26, scope: !59, inlinedAt: !131)
!131 = distinct !DILocation(line: 679, column: 6, scope: !107, inlinedAt: !108)
!132 = !DILocation(line: 680, column: 24, scope: !107, inlinedAt: !108)
!133 = !DILocation(line: 261, column: 31, scope: !64, inlinedAt: !134)
!134 = distinct !DILocation(line: 680, column: 6, scope: !107, inlinedAt: !108)
!135 = !DILocation(line: 1070, column: 16, scope: !122, inlinedAt: !136)
!136 = distinct !DILocation(line: 686, column: 18, scope: !107, inlinedAt: !108)
!137 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !138)
!138 = distinct !DILocation(line: 686, column: 2, scope: !107, inlinedAt: !108)
!139 = !DILocation(line: 224, column: 26, scope: !59, inlinedAt: !140)
!140 = distinct !DILocation(line: 687, column: 8, scope: !107, inlinedAt: !108)
!141 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !142)
!142 = distinct !DILocation(line: 267, column: 2, scope: !89, inlinedAt: !143)
!143 = distinct !DILocation(line: 688, column: 8, scope: !107, inlinedAt: !108)
!144 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !145)
!145 = distinct !DILocation(line: 268, column: 2, scope: !89, inlinedAt: !143)
!146 = !DILocation(line: 1063, column: 16, scope: !16, inlinedAt: !147)
!147 = distinct !DILocation(line: 1387, column: 52, scope: !148, inlinedAt: !149)
!148 = distinct !DISubprogram(name: "append", scope: !17, file: !17, line: 1386, type: !8, scopeLine: 1387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!149 = distinct !DILocation(line: 1329, column: 22, scope: !150, inlinedAt: !151)
!150 = distinct !DISubprogram(name: "operator+=", scope: !17, file: !17, line: 1328, type: !8, scopeLine: 1329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!151 = distinct !DILocation(line: 40, column: 16, scope: !7)
!152 = !DILocation(line: 1063, column: 16, scope: !16, inlinedAt: !153)
!153 = distinct !DILocation(line: 391, column: 32, scope: !154, inlinedAt: !155)
!154 = distinct !DISubprogram(name: "_M_check_length", scope: !17, file: !17, line: 389, type: !8, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!155 = distinct !DILocation(line: 1420, column: 2, scope: !156, inlinedAt: !157)
!156 = distinct !DISubprogram(name: "append", scope: !17, file: !17, line: 1417, type: !8, scopeLine: 1418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!157 = distinct !DILocation(line: 1387, column: 22, scope: !148, inlinedAt: !149)
!158 = !DILocation(line: 391, column: 23, scope: !154, inlinedAt: !155)
!159 = !DILocation(line: 391, column: 47, scope: !154, inlinedAt: !155)
!160 = !DILocation(line: 391, column: 6, scope: !154, inlinedAt: !155)
!161 = !DILocation(line: 392, column: 4, scope: !154, inlinedAt: !155)
!162 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !163)
!163 = distinct !DILocation(line: 1387, column: 35, scope: !148, inlinedAt: !149)
!164 = !DILocation(line: 1421, column: 9, scope: !156, inlinedAt: !157)
!165 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !166)
!166 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !167)
!167 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !169)
!168 = distinct !DISubprogram(name: "_M_dispose", scope: !17, file: !17, line: 283, type: !8, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!169 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !171)
!170 = distinct !DISubprogram(name: "~basic_string", scope: !17, file: !17, line: 793, type: !8, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!171 = distinct !DILocation(line: 40, column: 5, scope: !7)
!172 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !167)
!173 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !169)
!174 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !177)
!175 = distinct !DISubprogram(name: "deallocate", scope: !176, file: !176, line: 142, type: !8, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!176 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/new_allocator.h", directory: "")
!177 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !180)
!178 = distinct !DISubprogram(name: "deallocate", scope: !179, file: !179, line: 495, type: !8, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!179 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/alloc_traits.h", directory: "")
!180 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !182)
!181 = distinct !DISubprogram(name: "_M_destroy", scope: !17, file: !17, line: 291, type: !8, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!182 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !169)
!183 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !169)
!184 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !185)
!185 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !186)
!186 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !187)
!187 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !188)
!188 = distinct !DILocation(line: 40, column: 5, scope: !7)
!189 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !186)
!190 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !187)
!191 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !192)
!192 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !193)
!193 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !194)
!194 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !187)
!195 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !187)
!196 = !DILocation(line: 40, column: 5, scope: !7)
!197 = !DILocation(line: 39, column: 24, scope: !7)
!198 = distinct !{!198, !33, !199, !200}
!199 = !DILocation(line: 41, column: 3, scope: !7)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !202)
!202 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !203)
!203 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !204)
!204 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !205)
!205 = distinct !DILocation(line: 40, column: 5, scope: !7)
!206 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !203)
!207 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !204)
!208 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !209)
!209 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !210)
!210 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !211)
!211 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !204)
!212 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !204)
!213 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !214)
!214 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !215)
!215 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !216)
!216 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !217)
!217 = distinct !DILocation(line: 40, column: 5, scope: !7)
!218 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !215)
!219 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !216)
!220 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !221)
!221 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !222)
!222 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !223)
!223 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !216)
!224 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !216)
!225 = distinct !DISubprogram(name: "read_file_into_string", scope: !1, file: !1, line: 45, type: !8, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!226 = !DILocation(line: 229, column: 9, scope: !87, inlinedAt: !227)
!227 = distinct !DILocation(line: 267, column: 2, scope: !89, inlinedAt: !228)
!228 = distinct !DILocation(line: 1174, column: 9, scope: !229, inlinedAt: !230)
!229 = distinct !DISubprogram(name: "clear", scope: !17, file: !17, line: 1173, type: !8, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!230 = distinct !DILocation(line: 48, column: 17, scope: !225)
!231 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !227)
!232 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !233)
!233 = distinct !DILocation(line: 268, column: 22, scope: !89, inlinedAt: !228)
!234 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !235)
!235 = distinct !DILocation(line: 268, column: 2, scope: !89, inlinedAt: !228)
!236 = !DILocation(line: 49, column: 3, scope: !225)
!237 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !238)
!238 = distinct !DILocation(line: 2554, column: 16, scope: !239, inlinedAt: !240)
!239 = distinct !DISubprogram(name: "c_str", scope: !17, file: !17, line: 2553, type: !8, scopeLine: 2554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!240 = distinct !DILocation(line: 49, column: 30, scope: !225)
!241 = !DILocation(line: 49, column: 17, scope: !225)
!242 = !DILocation(line: 50, column: 3, scope: !225)
!243 = !DILocation(line: 51, column: 10, scope: !225)
!244 = !{!245, !245, i64 0}
!245 = !{!"vtable pointer", !14, i64 0}
!246 = !DILocation(line: 138, column: 16, scope: !247, inlinedAt: !249)
!247 = distinct !DISubprogram(name: "rdstate", scope: !248, file: !248, line: 137, type: !8, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!248 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/basic_ios.h", directory: "")
!249 = distinct !DILocation(line: 191, column: 23, scope: !250, inlinedAt: !251)
!250 = distinct !DISubprogram(name: "eof", scope: !248, file: !248, line: 190, type: !8, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!251 = distinct !DILocation(line: 51, column: 14, scope: !225)
!252 = !{!253, !255, i64 32}
!253 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !254, i64 24, !255, i64 28, !255, i64 32, !12, i64 40, !256, i64 48, !13, i64 64, !257, i64 192, !12, i64 200, !258, i64 208}
!254 = !{!"_ZTSSt13_Ios_Fmtflags", !13, i64 0}
!255 = !{!"_ZTSSt12_Ios_Iostate", !13, i64 0}
!256 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !26, i64 8}
!257 = !{!"int", !13, i64 0}
!258 = !{!"_ZTSSt6locale", !12, i64 0}
!259 = !DILocation(line: 167, column: 47, scope: !260, inlinedAt: !262)
!260 = distinct !DISubprogram(name: "operator&", scope: !261, file: !261, line: 166, type: !8, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!261 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/ios_base.h", directory: "")
!262 = distinct !DILocation(line: 191, column: 33, scope: !250, inlinedAt: !251)
!263 = !DILocation(line: 191, column: 43, scope: !250, inlinedAt: !251)
!264 = !DILocation(line: 51, column: 3, scope: !225)
!265 = !DILocation(line: 450, column: 30, scope: !266, inlinedAt: !267)
!266 = distinct !DISubprogram(name: "widen", scope: !248, file: !248, line: 449, type: !8, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!267 = distinct !DILocation(line: 428, column: 46, scope: !268, inlinedAt: !270)
!268 = distinct !DISubprogram(name: "getline", scope: !269, file: !269, line: 427, type: !8, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!269 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/istream", directory: "")
!270 = distinct !DILocation(line: 52, column: 9, scope: !225)
!271 = !{!272, !12, i64 240}
!272 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !253, i64 0, !12, i64 216, !13, i64 224, !273, i64 225, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256}
!273 = !{!"bool", !13, i64 0}
!274 = !DILocation(line: 49, column: 12, scope: !275, inlinedAt: !276)
!275 = distinct !DISubprogram(name: "__check_facet<std::ctype<char> >", scope: !248, file: !248, line: 47, type: !8, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!276 = distinct !DILocation(line: 450, column: 16, scope: !266, inlinedAt: !267)
!277 = !DILocation(line: 49, column: 11, scope: !275, inlinedAt: !276)
!278 = !DILocation(line: 50, column: 2, scope: !275, inlinedAt: !276)
!279 = !DILocation(line: 882, column: 6, scope: !280, inlinedAt: !282)
!280 = distinct !DISubprogram(name: "widen", scope: !281, file: !281, line: 880, type: !8, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!281 = !DIFile(filename: "/opt/rh/gcc-toolset-12/root/usr/lib/gcc/x86_64-redhat-linux/12/../../../../include/c++/12/bits/locale_facets.h", directory: "")
!282 = distinct !DILocation(line: 450, column: 40, scope: !266, inlinedAt: !267)
!283 = !{!284, !13, i64 56}
!284 = !{!"_ZTSSt5ctypeIcE", !285, i64 0, !12, i64 16, !273, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !13, i64 57, !13, i64 313, !13, i64 569}
!285 = !{!"_ZTSNSt6locale5facetE", !257, i64 8}
!286 = !DILocation(line: 883, column: 11, scope: !280, inlinedAt: !282)
!287 = !DILocation(line: 883, column: 4, scope: !280, inlinedAt: !282)
!288 = !DILocation(line: 884, column: 8, scope: !280, inlinedAt: !282)
!289 = !DILocation(line: 885, column: 15, scope: !280, inlinedAt: !282)
!290 = !DILocation(line: 0, scope: !280, inlinedAt: !282)
!291 = !DILocation(line: 428, column: 22, scope: !268, inlinedAt: !270)
!292 = !DILocation(line: 53, column: 22, scope: !225)
!293 = !DILocation(line: 53, column: 28, scope: !225)
!294 = !DILocation(line: 200, column: 25, scope: !39, inlinedAt: !295)
!295 = distinct !DILocation(line: 634, column: 9, scope: !41, inlinedAt: !296)
!296 = distinct !DILocation(line: 53, column: 28, scope: !225)
!297 = !DILocation(line: 395, column: 9, scope: !28, inlinedAt: !298)
!298 = distinct !DILocation(line: 640, column: 30, scope: !41, inlinedAt: !296)
!299 = !DILocation(line: 221, column: 2, scope: !50, inlinedAt: !300)
!300 = distinct !DILocation(line: 641, column: 2, scope: !41, inlinedAt: !296)
!301 = !DILocation(line: 221, column: 12, scope: !50, inlinedAt: !300)
!302 = !DILocation(line: 223, column: 13, scope: !50, inlinedAt: !300)
!303 = !DILocation(line: 223, column: 6, scope: !50, inlinedAt: !300)
!304 = !DILocation(line: 225, column: 14, scope: !50, inlinedAt: !300)
!305 = !DILocation(line: 224, column: 26, scope: !59, inlinedAt: !306)
!306 = distinct !DILocation(line: 225, column: 6, scope: !50, inlinedAt: !300)
!307 = !DILocation(line: 226, column: 18, scope: !50, inlinedAt: !300)
!308 = !DILocation(line: 261, column: 31, scope: !64, inlinedAt: !309)
!309 = distinct !DILocation(line: 226, column: 6, scope: !50, inlinedAt: !300)
!310 = !DILocation(line: 227, column: 4, scope: !50, inlinedAt: !300)
!311 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !312)
!312 = distinct !DILocation(line: 243, column: 22, scope: !50, inlinedAt: !300)
!313 = !DILocation(line: 419, column: 6, scope: !72, inlinedAt: !314)
!314 = distinct !DILocation(line: 476, column: 9, scope: !74, inlinedAt: !315)
!315 = distinct !DILocation(line: 243, column: 2, scope: !50, inlinedAt: !300)
!316 = !DILocation(line: 354, column: 9, scope: !77, inlinedAt: !317)
!317 = distinct !DILocation(line: 420, column: 4, scope: !72, inlinedAt: !314)
!318 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !317)
!319 = !DILocation(line: 420, column: 4, scope: !72, inlinedAt: !314)
!320 = !DILocation(line: 431, column: 33, scope: !82, inlinedAt: !321)
!321 = distinct !DILocation(line: 422, column: 4, scope: !72, inlinedAt: !314)
!322 = !DILocation(line: 431, column: 2, scope: !82, inlinedAt: !321)
!323 = !DILocation(line: 247, column: 16, scope: !50, inlinedAt: !300)
!324 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !325)
!325 = distinct !DILocation(line: 267, column: 2, scope: !89, inlinedAt: !326)
!326 = distinct !DILocation(line: 247, column: 2, scope: !50, inlinedAt: !300)
!327 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !328)
!328 = distinct !DILocation(line: 268, column: 22, scope: !89, inlinedAt: !326)
!329 = !DILocation(line: 268, column: 22, scope: !89, inlinedAt: !326)
!330 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !331)
!331 = distinct !DILocation(line: 268, column: 2, scope: !89, inlinedAt: !326)
!332 = !DILocation(line: 248, column: 7, scope: !50, inlinedAt: !300)
!333 = !DILocation(line: 2170, column: 9, scope: !98, inlinedAt: !334)
!334 = distinct !DILocation(line: 1927, column: 15, scope: !100, inlinedAt: !335)
!335 = distinct !DILocation(line: 3540, column: 30, scope: !102, inlinedAt: !336)
!336 = distinct !DILocation(line: 53, column: 26, scope: !225)
!337 = !DILocation(line: 204, column: 36, scope: !105, inlinedAt: !338)
!338 = distinct !DILocation(line: 670, column: 9, scope: !107, inlinedAt: !339)
!339 = distinct !DILocation(line: 3540, column: 14, scope: !102, inlinedAt: !336)
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!342 = distinct !{!342, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!343 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !344)
!344 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !345)
!345 = distinct !DILocation(line: 672, column: 12, scope: !107, inlinedAt: !339)
!346 = !DILocation(line: 252, column: 57, scope: !117, inlinedAt: !347)
!347 = distinct !DILocation(line: 274, column: 29, scope: !114, inlinedAt: !345)
!348 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !345)
!349 = !DILocation(line: 672, column: 6, scope: !107, inlinedAt: !339)
!350 = !DILocation(line: 1070, column: 16, scope: !122, inlinedAt: !351)
!351 = distinct !DILocation(line: 675, column: 16, scope: !107, inlinedAt: !339)
!352 = !DILocation(line: 675, column: 25, scope: !107, inlinedAt: !339)
!353 = !DILocation(line: 425, column: 10, scope: !82, inlinedAt: !354)
!354 = distinct !DILocation(line: 674, column: 6, scope: !107, inlinedAt: !339)
!355 = !DILocation(line: 425, column: 6, scope: !82, inlinedAt: !354)
!356 = !DILocation(line: 431, column: 33, scope: !82, inlinedAt: !354)
!357 = !DILocation(line: 431, column: 2, scope: !82, inlinedAt: !354)
!358 = !DILocation(line: 224, column: 26, scope: !59, inlinedAt: !359)
!359 = distinct !DILocation(line: 679, column: 6, scope: !107, inlinedAt: !339)
!360 = !DILocation(line: 680, column: 24, scope: !107, inlinedAt: !339)
!361 = !DILocation(line: 261, column: 31, scope: !64, inlinedAt: !362)
!362 = distinct !DILocation(line: 680, column: 6, scope: !107, inlinedAt: !339)
!363 = !DILocation(line: 1070, column: 16, scope: !122, inlinedAt: !364)
!364 = distinct !DILocation(line: 686, column: 18, scope: !107, inlinedAt: !339)
!365 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !366)
!366 = distinct !DILocation(line: 686, column: 2, scope: !107, inlinedAt: !339)
!367 = !DILocation(line: 224, column: 26, scope: !59, inlinedAt: !368)
!368 = distinct !DILocation(line: 687, column: 8, scope: !107, inlinedAt: !339)
!369 = !DILocation(line: 229, column: 26, scope: !87, inlinedAt: !370)
!370 = distinct !DILocation(line: 267, column: 2, scope: !89, inlinedAt: !371)
!371 = distinct !DILocation(line: 688, column: 8, scope: !107, inlinedAt: !339)
!372 = !DILocation(line: 354, column: 7, scope: !77, inlinedAt: !373)
!373 = distinct !DILocation(line: 268, column: 2, scope: !89, inlinedAt: !371)
!374 = !DILocation(line: 1063, column: 16, scope: !16, inlinedAt: !375)
!375 = distinct !DILocation(line: 1387, column: 52, scope: !148, inlinedAt: !376)
!376 = distinct !DILocation(line: 1329, column: 22, scope: !150, inlinedAt: !377)
!377 = distinct !DILocation(line: 53, column: 19, scope: !225)
!378 = !DILocation(line: 1063, column: 16, scope: !16, inlinedAt: !379)
!379 = distinct !DILocation(line: 391, column: 32, scope: !154, inlinedAt: !380)
!380 = distinct !DILocation(line: 1420, column: 2, scope: !156, inlinedAt: !381)
!381 = distinct !DILocation(line: 1387, column: 22, scope: !148, inlinedAt: !376)
!382 = !DILocation(line: 391, column: 23, scope: !154, inlinedAt: !380)
!383 = !DILocation(line: 391, column: 47, scope: !154, inlinedAt: !380)
!384 = !DILocation(line: 391, column: 6, scope: !154, inlinedAt: !380)
!385 = !DILocation(line: 392, column: 4, scope: !154, inlinedAt: !380)
!386 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !387)
!387 = distinct !DILocation(line: 1387, column: 35, scope: !148, inlinedAt: !376)
!388 = !DILocation(line: 1421, column: 9, scope: !156, inlinedAt: !381)
!389 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !390)
!390 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !391)
!391 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !392)
!392 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !393)
!393 = distinct !DILocation(line: 53, column: 5, scope: !225)
!394 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !391)
!395 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !392)
!396 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !397)
!397 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !398)
!398 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !399)
!399 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !392)
!400 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !392)
!401 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !402)
!402 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !403)
!403 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !404)
!404 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !405)
!405 = distinct !DILocation(line: 53, column: 5, scope: !225)
!406 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !403)
!407 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !404)
!408 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !409)
!409 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !410)
!410 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !411)
!411 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !404)
!412 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !404)
!413 = !DILocation(line: 53, column: 5, scope: !225)
!414 = distinct !{!414, !264, !415, !200}
!415 = !DILocation(line: 54, column: 3, scope: !225)
!416 = !DILocation(line: 55, column: 1, scope: !225)
!417 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !418)
!418 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !419)
!419 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !420)
!420 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !421)
!421 = distinct !DILocation(line: 53, column: 5, scope: !225)
!422 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !419)
!423 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !420)
!424 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !425)
!425 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !426)
!426 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !427)
!427 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !420)
!428 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !420)
!429 = !DILocation(line: 234, column: 28, scope: !69, inlinedAt: !430)
!430 = distinct !DILocation(line: 274, column: 16, scope: !114, inlinedAt: !431)
!431 = distinct !DILocation(line: 285, column: 7, scope: !168, inlinedAt: !432)
!432 = distinct !DILocation(line: 794, column: 9, scope: !170, inlinedAt: !433)
!433 = distinct !DILocation(line: 53, column: 5, scope: !225)
!434 = !DILocation(line: 274, column: 26, scope: !114, inlinedAt: !431)
!435 = !DILocation(line: 285, column: 6, scope: !168, inlinedAt: !432)
!436 = !DILocation(line: 158, column: 2, scope: !175, inlinedAt: !437)
!437 = distinct !DILocation(line: 496, column: 13, scope: !178, inlinedAt: !438)
!438 = distinct !DILocation(line: 292, column: 9, scope: !181, inlinedAt: !439)
!439 = distinct !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !432)
!440 = !DILocation(line: 286, column: 4, scope: !168, inlinedAt: !432)

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-pc-linux-gnu-
