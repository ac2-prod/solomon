
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-amdgcn-amd-amdhsa--gfx90a
; ModuleID = '../utils/mytimer.cpp'
source_filename = "../utils/mytimer.cpp"
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
!1 = !DIFile(filename: "../utils/mytimer.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
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
; ModuleID = '/tmp/mytimer-89b22e.bc'
source_filename = "../utils/mytimer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%"struct.miniFE::timezone" = type { i32, i32 }

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef double @_ZN6miniFE7mytimerEv() local_unnamed_addr #0 !dbg !7 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %"struct.miniFE::timezone", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #3, !dbg !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #3, !dbg !11
  %3 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef nonnull %2) #3, !dbg !12
  %4 = load i64, ptr %1, align 8, !dbg !13, !tbaa !14
  %5 = sitofp i64 %4 to double, !dbg !19
  %6 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1, !dbg !20
  %7 = load i64, ptr %6, align 8, !dbg !20, !tbaa !21
  %8 = sitofp i64 %7 to double, !dbg !22
  %9 = fdiv contract double %8, 1.000000e+06, !dbg !23
  %10 = fadd contract double %9, %5, !dbg !24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #3, !dbg !25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #3, !dbg !25
  ret double %10, !dbg !26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../utils/mytimer.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)"}
!7 = distinct !DISubprogram(name: "mytimer", scope: !1, file: !1, line: 111, type: !8, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!8 = !DISubroutineType(types: !9)
!9 = !{}
!10 = !DILocation(line: 115, column: 3, scope: !7)
!11 = !DILocation(line: 116, column: 3, scope: !7)
!12 = !DILocation(line: 117, column: 3, scope: !7)
!13 = !DILocation(line: 118, column: 27, scope: !7)
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTS7timeval", !16, i64 0, !16, i64 8}
!16 = !{!"long", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C++ TBAA"}
!19 = !DILocation(line: 118, column: 24, scope: !7)
!20 = !DILocation(line: 118, column: 39, scope: !7)
!21 = !{!15, !16, i64 8}
!22 = !DILocation(line: 118, column: 36, scope: !7)
!23 = !DILocation(line: 118, column: 46, scope: !7)
!24 = !DILocation(line: 118, column: 34, scope: !7)
!25 = !DILocation(line: 127, column: 1, scope: !7)
!26 = !DILocation(line: 118, column: 3, scope: !7)

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-pc-linux-gnu-
