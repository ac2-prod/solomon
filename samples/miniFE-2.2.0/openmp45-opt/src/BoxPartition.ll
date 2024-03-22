
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-amdgcn-amd-amdhsa--gfx90a
; ModuleID = '../utils/BoxPartition.cpp'
source_filename = "../utils/BoxPartition.cpp"
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
!1 = !DIFile(filename: "../utils/BoxPartition.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
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
; ModuleID = '/tmp/BoxPartition-6196ff.bc'
source_filename = "../utils/BoxPartition.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Box = type { [6 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z13box_map_localRK3BoxiPKiiii(ptr nocapture noundef nonnull readonly align 4 dereferenceable(24) %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !7 {
  %7 = shl nsw i32 %1, 1, !dbg !10
  %8 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !13
  %9 = load i32, ptr %8, align 4, !dbg !13, !tbaa !14
  %10 = add nsw i32 %9, %7, !dbg !18
  %11 = load i32, ptr %0, align 4, !dbg !19, !tbaa !14
  %12 = sub i32 %10, %11, !dbg !20
  %13 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 2, !dbg !21
  %14 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 3, !dbg !25
  %15 = load i32, ptr %14, align 4, !dbg !25, !tbaa !14
  %16 = add nsw i32 %15, %7, !dbg !26
  %17 = load i32, ptr %13, align 4, !dbg !27, !tbaa !14
  %18 = sub i32 %16, %17, !dbg !28
  %19 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 4, !dbg !29
  %20 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 5, !dbg !31
  %21 = load i32, ptr %20, align 4, !dbg !31, !tbaa !14
  %22 = add nsw i32 %21, %7, !dbg !32
  %23 = load i32, ptr %19, align 4, !dbg !33, !tbaa !14
  %24 = sub i32 %22, %23, !dbg !34
  %25 = add nsw i32 %3, %1, !dbg !35
  %26 = add nsw i32 %4, %1, !dbg !36
  %27 = add nsw i32 %5, %1, !dbg !37
  %28 = icmp sgt i32 %25, -1, !dbg !38
  br i1 %28, label %29, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread, !dbg !39

29:                                               ; preds = %6
  %30 = icmp slt i32 %25, %12, !dbg !40
  %31 = icmp sgt i32 %26, -1
  %or.cond.i = select i1 %30, i1 %31, i1 false, !dbg !41
  br i1 %or.cond.i, label %32, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread, !dbg !41

32:                                               ; preds = %29
  %33 = icmp slt i32 %26, %18, !dbg !42
  %34 = icmp sgt i32 %27, -1
  %or.cond3.i = select i1 %33, i1 %34, i1 false, !dbg !43
  %35 = icmp slt i32 %27, %24
  %or.cond38.i = select i1 %or.cond3.i, i1 %35, i1 false, !dbg !43
  br i1 %or.cond38.i, label %_ZL19box_map_local_entryRK3Boxiiii.exit, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread, !dbg !43

_ZL19box_map_local_entryRK3Boxiiii.exit:          ; preds = %32
  %36 = mul nsw i32 %18, %27, !dbg !44
  %37 = add i32 %36, %26, !dbg !45
  %38 = mul i32 %37, %12, !dbg !45
  %39 = add nsw i32 %38, %25, !dbg !46
  %40 = icmp sgt i32 %39, -1, !dbg !47
  br i1 %40, label %41, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread, !dbg !48

41:                                               ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit
  %42 = zext i32 %39 to i64
  %43 = getelementptr inbounds i32, ptr %2, i64 %42, !dbg !49
  %44 = load i32, ptr %43, align 4, !dbg !49, !tbaa !14
  br label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread, !dbg !50

_ZL19box_map_local_entryRK3Boxiiii.exit.thread:   ; preds = %6, %29, %32, %41, %_ZL19box_map_local_entryRK3Boxiiii.exit
  %.0 = phi i32 [ %44, %41 ], [ %39, %_ZL19box_map_local_entryRK3Boxiiii.exit ], [ -1, %32 ], [ -1, %29 ], [ -1, %6 ], !dbg !51
  ret i32 %.0, !dbg !52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull readonly align 4 dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #2 !dbg !53 {
  %6 = alloca %struct.Box, align 16
  %7 = alloca %struct.Box, align 16
  %8 = sub nsw i32 %1, %0, !dbg !54
  %9 = icmp eq i32 %8, 1, !dbg !55
  br i1 %9, label %10, label %29, !dbg !56

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4, !dbg !57, !tbaa !14
  %12 = sext i32 %0 to i64, !dbg !58
  %13 = getelementptr inbounds %struct.Box, ptr %4, i64 %12, !dbg !58
  store i32 %11, ptr %13, align 4, !dbg !59, !tbaa !14
  %14 = getelementptr inbounds i32, ptr %3, i64 1, !dbg !60
  %15 = load i32, ptr %14, align 4, !dbg !60, !tbaa !14
  %16 = getelementptr inbounds i32, ptr %13, i64 1, !dbg !61
  store i32 %15, ptr %16, align 4, !dbg !62, !tbaa !14
  %17 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 2, !dbg !63
  %18 = load i32, ptr %17, align 4, !dbg !65, !tbaa !14
  %19 = getelementptr inbounds [6 x i32], ptr %13, i64 0, i64 2, !dbg !66
  store i32 %18, ptr %19, align 4, !dbg !69, !tbaa !14
  %20 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 3, !dbg !70
  %21 = load i32, ptr %20, align 4, !dbg !70, !tbaa !14
  %22 = getelementptr inbounds i32, ptr %19, i64 1, !dbg !71
  store i32 %21, ptr %22, align 4, !dbg !72, !tbaa !14
  %23 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 4, !dbg !73
  %24 = load i32, ptr %23, align 4, !dbg !75, !tbaa !14
  %25 = getelementptr inbounds [6 x i32], ptr %13, i64 0, i64 4, !dbg !76
  store i32 %24, ptr %25, align 4, !dbg !78, !tbaa !14
  %26 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 5, !dbg !79
  %27 = load i32, ptr %26, align 4, !dbg !79, !tbaa !14
  %28 = getelementptr inbounds i32, ptr %25, i64 1, !dbg !80
  store i32 %27, ptr %28, align 4, !dbg !81, !tbaa !14
  br label %70, !dbg !82

29:                                               ; preds = %5
  %30 = shl nsw i32 %2, 1, !dbg !83
  %31 = sext i32 %30 to i64, !dbg !85
  %32 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 %31, !dbg !85
  %33 = getelementptr inbounds i32, ptr %32, i64 1, !dbg !86
  %34 = load i32, ptr %33, align 4, !dbg !86, !tbaa !14
  %35 = load i32, ptr %32, align 4, !dbg !87, !tbaa !14
  %36 = sub nsw i32 %34, %35, !dbg !88
  %37 = sdiv i32 %8, 2, !dbg !89
  %38 = sub nsw i32 %8, %37, !dbg !90
  %39 = sitofp i32 %36 to double, !dbg !91
  %40 = sitofp i32 %38 to double, !dbg !92
  %41 = sitofp i32 %8 to double, !dbg !93
  %42 = fdiv contract double %40, %41, !dbg !94
  %43 = fmul contract double %42, %39, !dbg !95
  %44 = fptosi double %43 to i32, !dbg !96
  %45 = sub nsw i32 %36, %44, !dbg !97
  %46 = add nsw i32 %2, 2, !dbg !98
  %47 = srem i32 %46, 3, !dbg !99
  %.off = add i32 %8, 1, !dbg !100
  %.not = icmp ult i32 %.off, 3, !dbg !100
  br i1 %.not, label %58, label %48, !dbg !100

48:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10, !dbg !101
  %49 = load <4 x i32>, ptr %3, align 4, !dbg !102, !tbaa !14
  store <4 x i32> %49, ptr %6, align 16, !dbg !103, !tbaa !14
  %50 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 4, !dbg !104
  %51 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 4, !dbg !106
  %52 = load <2 x i32>, ptr %50, align 4, !dbg !108, !tbaa !14
  store <2 x i32> %52, ptr %51, align 16, !dbg !109, !tbaa !14
  %53 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 %31, !dbg !110
  %54 = load i32, ptr %53, align 8, !dbg !112, !tbaa !14
  %55 = add nsw i32 %54, %45, !dbg !113
  %56 = getelementptr inbounds i32, ptr %53, i64 1, !dbg !114
  store i32 %55, ptr %56, align 4, !dbg !115, !tbaa !14
  %57 = add nsw i32 %37, %0, !dbg !116
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %0, i32 noundef %57, i32 noundef %47, ptr noundef nonnull align 4 dereferenceable(24) %6, ptr noundef %4), !dbg !117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10, !dbg !118
  br label %58, !dbg !118

58:                                               ; preds = %48, %29
  %.not68 = icmp eq i32 %8, %37, !dbg !119
  br i1 %.not68, label %70, label %59, !dbg !119

59:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10, !dbg !120
  %60 = load <4 x i32>, ptr %3, align 4, !dbg !121, !tbaa !14
  store <4 x i32> %60, ptr %7, align 16, !dbg !122, !tbaa !14
  %61 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 4, !dbg !123
  %62 = getelementptr inbounds [6 x i32], ptr %7, i64 0, i64 4, !dbg !125
  %63 = load <2 x i32>, ptr %61, align 4, !dbg !127, !tbaa !14
  store <2 x i32> %63, ptr %62, align 16, !dbg !128, !tbaa !14
  %64 = add nsw i32 %37, %0, !dbg !129
  %65 = getelementptr inbounds [6 x i32], ptr %7, i64 0, i64 %31, !dbg !130
  %66 = load i32, ptr %65, align 8, !dbg !132, !tbaa !14
  %67 = add nsw i32 %66, %45, !dbg !132
  store i32 %67, ptr %65, align 8, !dbg !132, !tbaa !14
  %68 = add i32 %66, %36, !dbg !133
  %69 = getelementptr inbounds i32, ptr %65, i64 1, !dbg !134
  store i32 %68, ptr %69, align 4, !dbg !135, !tbaa !14
  call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef %64, i32 noundef %1, i32 noundef %47, ptr noundef nonnull align 4 dereferenceable(24) %7, ptr noundef %4), !dbg !136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10, !dbg !137
  br label %70, !dbg !137

70:                                               ; preds = %58, %59, %10
  ret void, !dbg !138
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_(i32 noundef %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 4 dereferenceable(24) %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #3 !dbg !139 {
  %10 = sext i32 %0 to i64, !dbg !140
  %11 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %10, i64 24), !dbg !141
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !141
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !141
  %14 = select i1 %12, i64 -1, i64 %13, !dbg !141
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #11, !dbg !141
  store ptr %15, ptr %4, align 8, !dbg !142, !tbaa !143
  tail call void @_Z13box_partitioniiiRK3BoxPS_(i32 noundef 0, i32 noundef %0, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull %15), !dbg !145
  %16 = sext i32 %1 to i64, !dbg !146
  %17 = getelementptr inbounds %struct.Box, ptr %15, i64 %16, !dbg !146
  %18 = load i32, ptr %17, align 4, !dbg !149, !tbaa !14
  %19 = getelementptr inbounds [6 x i32], ptr %17, i64 0, i64 2, !dbg !150
  %20 = load i32, ptr %19, align 4, !dbg !152, !tbaa !14
  %21 = getelementptr inbounds [6 x i32], ptr %17, i64 0, i64 4, !dbg !153
  %22 = load i32, ptr %21, align 4, !dbg !155, !tbaa !14
  %23 = getelementptr inbounds i32, ptr %17, i64 1, !dbg !156
  %24 = load i32, ptr %23, align 4, !dbg !156, !tbaa !14
  %25 = sub nsw i32 %24, %18, !dbg !157
  %.fr = freeze i32 %25
  %26 = getelementptr inbounds i32, ptr %19, i64 1, !dbg !158
  %27 = load i32, ptr %26, align 4, !dbg !158, !tbaa !14
  %28 = sub nsw i32 %27, %20, !dbg !159
  %.fr701.i = freeze i32 %28
  %29 = getelementptr inbounds i32, ptr %21, i64 1, !dbg !160
  %30 = load i32, ptr %29, align 4, !dbg !160, !tbaa !14
  %31 = sub nsw i32 %30, %22, !dbg !161
  %.fr.i = freeze i32 %31
  %32 = shl nsw i32 %3, 1, !dbg !162
  %33 = add nsw i32 %.fr, %32, !dbg !163
  %34 = add nsw i32 %.fr701.i, %32, !dbg !164
  %35 = add nsw i32 %.fr.i, %32, !dbg !165
  %36 = mul nsw i32 %34, %33, !dbg !166
  %37 = mul nsw i32 %36, %35, !dbg !167
  %38 = sext i32 %37 to i64, !dbg !168
  %39 = shl nsw i64 %38, 2, !dbg !169
  %40 = tail call noalias ptr @malloc(i64 noundef %39) #12, !dbg !170
  %41 = add nsw i32 %0, 1, !dbg !171
  %42 = sext i32 %41 to i64, !dbg !172
  %43 = shl nsw i64 %42, 2, !dbg !173
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #12, !dbg !174
  %45 = tail call noalias ptr @malloc(i64 noundef %43) #12, !dbg !175
  %46 = sub nsw i32 %18, %3, !dbg !176
  %47 = add nsw i32 %24, %3, !dbg !177
  %48 = sub nsw i32 %20, %3, !dbg !178
  %49 = add nsw i32 %27, %3, !dbg !179
  %50 = sub nsw i32 %22, %3, !dbg !180
  %51 = add nsw i32 %30, %3, !dbg !181
  %52 = icmp sgt i32 %37, 0, !dbg !182
  br i1 %52, label %.lr.ph.preheader.i, label %.preheader229.i, !dbg !183

.lr.ph.preheader.i:                               ; preds = %9
  %53 = zext i32 %37 to i64, !dbg !183
  %54 = shl nuw nsw i64 %53, 2, !dbg !183
  tail call void @llvm.memset.p0.i64(ptr align 4 %40, i8 -1, i64 %54, i1 false), !dbg !184, !tbaa !14
  br label %.preheader229.i, !dbg !185

.preheader229.i:                                  ; preds = %.lr.ph.preheader.i, %9
  %55 = icmp sgt i32 %0, 0, !dbg !185
  br i1 %55, label %.lr.ph600.i, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, !dbg !186

.lr.ph600.i:                                      ; preds = %.preheader229.i
  %56 = sub i32 0, %3
  %57 = add i32 %.fr.i, %3
  %58 = icmp sgt i32 %57, %56
  %59 = add i32 %.fr701.i, %3
  %60 = add i32 %.fr, %3
  %61 = icmp sgt i32 %60, %56
  %62 = getelementptr inbounds [6 x i32], ptr %17, i64 0, i64 3
  %63 = getelementptr inbounds [6 x i32], ptr %17, i64 0, i64 5
  br i1 %58, label %.lr.ph600.split.us.i, label %.lr.ph600.split.preheader.i, !dbg !187

.lr.ph600.split.preheader.i:                      ; preds = %.lr.ph600.i
  %64 = zext i32 %0 to i64, !dbg !186
  br label %._crit_edge.sink.split.i, !dbg !188

.lr.ph600.split.us.i:                             ; preds = %.lr.ph600.i
  %65 = icmp sgt i32 %59, %56
  %wide.trip.count.i = zext i32 %0 to i64, !dbg !189
  br i1 %65, label %.lr.ph600.split.us.split.us.i.preheader, label %._crit_edge.sink.split.i, !dbg !190

.lr.ph600.split.us.split.us.i.preheader:          ; preds = %.lr.ph600.split.us.i
  br i1 %61, label %.lr.ph600.split.us.split.us.i.us, label %.lr.ph600.split.us.split.us.i.preheader45, !dbg !191

.lr.ph600.split.us.split.us.i.preheader45:        ; preds = %.lr.ph600.split.us.split.us.i.preheader
  %66 = shl nuw nsw i64 %wide.trip.count.i, 2, !dbg !186
  tail call void @llvm.memset.p0.i64(ptr align 4 %44, i8 0, i64 %66, i1 false), !dbg !192, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 4 %45, i8 0, i64 %66, i1 false), !dbg !193, !tbaa !14
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, !dbg !188

.lr.ph600.split.us.split.us.i.us:                 ; preds = %.lr.ph600.split.us.split.us.i.preheader, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph600.split.us.split.us.i.preheader ]
  %.0599.us.us.i.us = phi i32 [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph600.split.us.split.us.i.preheader ]
  %.0159598.us.us.i.us = phi i32 [ %.5164.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph600.split.us.split.us.i.preheader ]
  %.0203596.us.us.i.us = phi ptr [ %.6.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ null, %.lr.ph600.split.us.split.us.i.preheader ]
  %.0209595.us.us.i.us = phi i32 [ %.7.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], [ 0, %.lr.ph600.split.us.split.us.i.preheader ]
  %67 = trunc i64 %indvars.iv.i.us to i32, !dbg !194
  %68 = add i32 %67, %1, !dbg !194
  %69 = srem i32 %68, %0, !dbg !194
  %70 = getelementptr inbounds i32, ptr %44, i64 %indvars.iv.i.us, !dbg !195
  store i32 %.0599.us.us.i.us, ptr %70, align 4, !dbg !192, !tbaa !14
  %71 = getelementptr inbounds i32, ptr %45, i64 %indvars.iv.i.us, !dbg !196
  store i32 %.0159598.us.us.i.us, ptr %71, align 4, !dbg !193, !tbaa !14
  %72 = sext i32 %69 to i64, !dbg !197
  %73 = getelementptr inbounds %struct.Box, ptr %15, i64 %72, !dbg !197
  %74 = load i32, ptr %73, align 4, !dbg !198, !tbaa !14
  %.not.i.us.us.i.us = icmp sgt i32 %47, %74, !dbg !201
  br i1 %.not.i.us.us.i.us, label %75, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !dbg !202

75:                                               ; preds = %.lr.ph600.split.us.split.us.i.us
  %76 = getelementptr inbounds i32, ptr %73, i64 1, !dbg !203
  %77 = load i32, ptr %76, align 4, !dbg !203, !tbaa !14
  %.not12.i.us.us.i.us = icmp sgt i32 %77, %46, !dbg !204
  br i1 %.not12.i.us.us.i.us, label %78, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !dbg !205

78:                                               ; preds = %75
  %79 = getelementptr inbounds [6 x i32], ptr %73, i64 0, i64 2, !dbg !206
  %80 = load i32, ptr %79, align 4, !dbg !208, !tbaa !14
  %.not13.i.us.us.i.us = icmp sgt i32 %49, %80, !dbg !209
  br i1 %.not13.i.us.us.i.us, label %81, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !dbg !210

81:                                               ; preds = %78
  %82 = getelementptr inbounds [6 x i32], ptr %73, i64 0, i64 3, !dbg !211
  %83 = load i32, ptr %82, align 4, !dbg !211, !tbaa !14
  %.not14.i.us.us.i.us = icmp sgt i32 %83, %48, !dbg !212
  br i1 %.not14.i.us.us.i.us, label %84, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !dbg !213

84:                                               ; preds = %81
  %85 = getelementptr inbounds [6 x i32], ptr %73, i64 0, i64 4, !dbg !214
  %86 = load i32, ptr %85, align 4, !dbg !216, !tbaa !14
  %.not15.i.us.us.i.us = icmp sgt i32 %51, %86, !dbg !217
  br i1 %.not15.i.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !dbg !218

_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us:       ; preds = %84
  %87 = getelementptr inbounds [6 x i32], ptr %73, i64 0, i64 5, !dbg !219
  %88 = load i32, ptr %87, align 4, !dbg !219, !tbaa !14
  %.not218.us.us.i.us = icmp sgt i32 %88, %50, !dbg !220
  br i1 %.not218.us.us.i.us, label %.preheader228.lr.ph.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !dbg !221

.preheader228.lr.ph.us.us.i.us:                   ; preds = %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us
  %89 = icmp ne i32 %69, %1
  %90 = sub nsw i32 %86, %3
  %91 = add nsw i32 %88, %3
  %92 = sub nsw i32 %80, %3
  %93 = add nsw i32 %83, %3
  %94 = sub nsw i32 %74, %3
  %95 = add nsw i32 %77, %3
  br label %.preheader228.us.us.us.us.i.us, !dbg !187

.preheader228.us.us.us.us.i.us:                   ; preds = %.preheader228.lr.ph.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us
  %.1472.us.us.us.us.i.us = phi i32 [ %.us-phi463.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], [ %.0599.us.us.i.us, %.preheader228.lr.ph.us.us.i.us ]
  %.1160471.us.us.us.us.i.us = phi i32 [ %.us-phi462.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], [ %.0159598.us.us.i.us, %.preheader228.lr.ph.us.us.i.us ]
  %.0168470.us.us.us.us.i.us = phi i32 [ %242, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], [ %56, %.preheader228.lr.ph.us.us.i.us ]
  %.1204469.us.us.us.us.i.us = phi ptr [ %.us-phi461.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], [ %.0203596.us.us.i.us, %.preheader228.lr.ph.us.us.i.us ]
  %.1210468.us.us.us.us.i.us = phi i32 [ %.us-phi460.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], [ %.0209595.us.us.i.us, %.preheader228.lr.ph.us.us.i.us ]
  %96 = add nsw i32 %.0168470.us.us.us.us.i.us, %22
  %97 = add i32 %.0168470.us.us.us.us.i.us, %3
  %98 = icmp sgt i32 %97, -1
  %.not179.us.us.us.us.i.us = icmp sle i32 %86, %96
  %99 = icmp slt i32 %96, %88
  %or.cond185.not219.not.not.not.us.us.us.us.i.us = select i1 %.not179.us.us.us.us.i.us, i1 %99, i1 false
  %100 = icmp slt i32 %.0168470.us.us.us.us.i.us, %.fr.i
  %.not180.us.us.us.us.i.us = icmp sle i32 %90, %96
  %101 = icmp slt i32 %96, %91
  br i1 %98, label %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us: ; preds = %.preheader228.us.us.us.us.i.us
  %102 = icmp sgt i32 %.0168470.us.us.us.us.i.us, -1
  %or.cond.us.us.us.us.i.us = select i1 %89, i1 %102, i1 false
  %or.cond.fr.us.us.us.us.i.us = freeze i1 %or.cond.us.us.us.us.i.us
  br i1 %or.cond.fr.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.us.i.us, label %.preheader.us.us.us478.us.us.us.i.us, !dbg !222

.preheader.us.us.us478.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us
  %.2312.us.us.us479.us.us.us.i.us = phi i32 [ %.us-phi.us360.us.us.us.us.i.us, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us ], [ %.1472.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %.0169310.us.us.us480.us.us.us.i.us = phi i32 [ %143, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us ], [ %56, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %103 = add nsw i32 %.0169310.us.us.us480.us.us.us.i.us, %20
  %104 = add i32 %.0169310.us.us.us480.us.us.us.i.us, %3
  %105 = icmp sgt i32 %104, -1
  %.not183.us.us.us481.us.us.us.i.us = icmp sle i32 %80, %103
  %or.cond186.us.us.us482.us.us.us.i.us = select i1 %or.cond185.not219.not.not.not.us.us.us.us.i.us, i1 %.not183.us.us.us481.us.us.us.i.us, i1 false
  %106 = icmp slt i32 %103, %83
  %or.cond187.us.us.us483.us.us.us.i.us = select i1 %or.cond186.us.us.us482.us.us.us.i.us, i1 %106, i1 false
  br i1 %105, label %.lr.ph251.split.us330.us.us485.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph251.split.us330.us.us485.us.us.us.i.us:     ; preds = %.preheader.us.us.us478.us.us.us.i.us
  %107 = load i32, ptr %23, align 4, !tbaa !14
  %108 = add nsw i32 %107, %32
  %109 = load i32, ptr %17, align 4, !tbaa !14
  %110 = sub i32 %108, %109
  %111 = load i32, ptr %62, align 4, !tbaa !14
  %112 = add nsw i32 %111, %32
  %113 = load i32, ptr %19, align 4, !tbaa !14
  %114 = sub i32 %112, %113
  %115 = load i32, ptr %63, align 4, !tbaa !14
  %116 = add nsw i32 %115, %32
  %117 = load i32, ptr %21, align 4, !tbaa !14
  %118 = sub i32 %116, %117
  %119 = icmp slt i32 %104, %114
  %120 = icmp slt i32 %97, %118
  %or.cond38.i.us322.us.us.us.us.us.i.us = select i1 %119, i1 %120, i1 false
  %121 = mul nsw i32 %114, %97
  %122 = add i32 %121, %104
  %123 = mul i32 %122, %110
  %or.cond38.i.us322.fr.us.us.us.us.us.i.us = freeze i1 %or.cond38.i.us322.us.us.us.us.us.i.us
  br i1 %or.cond38.i.us322.fr.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, !dbg !223

.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph251.split.us330.us.us485.us.us.us.i.us
  %or.cond187.us.fr.us.us.us.us.us.i.us = freeze i1 %or.cond187.us.us.us483.us.us.us.i.us
  br i1 %or.cond187.us.fr.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us332.split.us.split.us359.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us332.split.us.split.us.us.us.us.us.us.i.us

.lr.ph251.split.split.split.us332.split.us.split.us.us.us.us.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us, %128
  %.0167248.us318.us.us.us.us.us.us.us.i.us = phi i32 [ %129, %128 ], [ %56, %.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us ]
  %124 = add nsw i32 %.0167248.us318.us.us.us.us.us.us.us.i.us, %3, !dbg !225
  %125 = icmp sge i32 %124, %110
  %126 = add nuw nsw i32 %124, %123
  %127 = icmp slt i32 %126, 0
  %or.cond682.i.us = select i1 %125, i1 true, i1 %127, !dbg !226
  br i1 %or.cond682.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %128, !dbg !226

128:                                              ; preds = %.lr.ph251.split.split.split.us332.split.us.split.us.us.us.us.us.us.i.us
  %129 = add i32 %.0167248.us318.us.us.us.us.us.us.us.i.us, 1, !dbg !227
  %exitcond.not.i.us = icmp eq i32 %129, %60, !dbg !228
  br i1 %exitcond.not.i.us, label %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us332.split.us.split.us.us.us.us.us.us.i.us, !dbg !191, !llvm.loop !229

.lr.ph251.split.split.split.us332.split.us.split.us359.us.us.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us, %141
  %.3250.us317.us.us.us.us.us.us.i.us = phi i32 [ %.4.us327.us.us.us.us.us.us.i.us, %141 ], [ %.2312.us.us.us479.us.us.us.i.us, %.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us ]
  %.0167248.us318.us.us356.us.us.us.us.i.us = phi i32 [ %142, %141 ], [ %56, %.lr.ph251.split.split.split.us332.split.us.us.us.us.us.us.i.us ]
  %130 = add nsw i32 %.0167248.us318.us.us356.us.us.us.us.i.us, %18, !dbg !232
  %131 = add nsw i32 %.0167248.us318.us.us356.us.us.us.us.i.us, %3, !dbg !225
  %132 = icmp slt i32 %131, %110
  br i1 %132, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us323.us.us357.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, !dbg !226

_ZL19box_map_local_entryRK3Boxiiii.exit.us323.us.us357.us.us.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us332.split.us.split.us359.us.us.us.us.i.us
  %133 = add nuw nsw i32 %131, %123, !dbg !233
  %134 = icmp slt i32 %133, 0, !dbg !234
  br i1 %134, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %135, !dbg !235

135:                                              ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us323.us.us357.us.us.us.us.i.us
  %.not184.us324.us.us.us.us.us.us.i.us = icmp sle i32 %74, %130
  %136 = icmp slt i32 %130, %77
  %or.cond189.us326.us.us.us.us.us.us.i.us = select i1 %.not184.us324.us.us.us.us.us.us.i.us, i1 %136, i1 false, !dbg !236
  br i1 %or.cond189.us326.us.us.us.us.us.us.i.us, label %137, label %141, !dbg !236

137:                                              ; preds = %135
  %138 = add nsw i32 %.3250.us317.us.us.us.us.us.us.i.us, 1, !dbg !237
  %139 = zext i32 %133 to i64
  %140 = getelementptr inbounds i32, ptr %40, i64 %139, !dbg !238
  store i32 %.3250.us317.us.us.us.us.us.us.i.us, ptr %140, align 4, !dbg !239, !tbaa !14
  br label %141, !dbg !240

141:                                              ; preds = %137, %135
  %.4.us327.us.us.us.us.us.us.i.us = phi i32 [ %138, %137 ], [ %.3250.us317.us.us.us.us.us.us.i.us, %135 ], !dbg !241
  %142 = add i32 %.0167248.us318.us.us356.us.us.us.us.i.us, 1, !dbg !227
  %exitcond717.not.i.us = icmp eq i32 %142, %60, !dbg !228
  br i1 %exitcond717.not.i.us, label %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us332.split.us.split.us359.us.us.us.us.i.us, !dbg !191, !llvm.loop !242

._crit_edge.split.us328.split.us.us.us.us.us.us.i.us: ; preds = %128, %141
  %.us-phi.us360.us.us.us.us.i.us = phi i32 [ %.4.us327.us.us.us.us.us.us.i.us, %141 ], [ %.2312.us.us.us479.us.us.us.i.us, %128 ]
  %143 = add nsw i32 %.0169310.us.us.us480.us.us.us.i.us, 1, !dbg !243
  %exitcond718.not.i.us = icmp eq i32 %143, %59, !dbg !244
  br i1 %exitcond718.not.i.us, label %._crit_edge313.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us478.us.us.us.i.us, !dbg !190, !llvm.loop !245

.preheader.us.us.us.us.us.us.us.i.us:             ; preds = %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.2312.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi467.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1472.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %.2161311.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi466.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160471.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %.0169310.us.us.us.us.us.us.us.i.us = phi i32 [ %241, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %56, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %.2205309.us.us.us.us.us.us.us.i.us = phi ptr [ %.us-phi465.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204469.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %.2211308.us.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi464.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210468.us.us.us.us.i.us, %.preheader.lr.ph.split.us.split.us.us.us.us.us.i.us ]
  %144 = add nsw i32 %.0169310.us.us.us.us.us.us.us.i.us, %20
  %145 = add i32 %.0169310.us.us.us.us.us.us.us.i.us, %3
  %146 = icmp sgt i32 %145, -1
  %.not183.us.us.us.us.us.us.us.i.us = icmp sle i32 %80, %144
  %or.cond186.us.us.us.us.us.us.us.i.us = select i1 %or.cond185.not219.not.not.not.us.us.us.us.i.us, i1 %.not183.us.us.us.us.us.us.us.i.us, i1 false
  %147 = icmp slt i32 %144, %83
  %or.cond187.us.us.us.us.us.us.us.i.us = select i1 %or.cond186.us.us.us.us.us.us.us.i.us, i1 %147, i1 false
  %or.cond187.us.us.us.us.fr.us.us.us.i.us = freeze i1 %or.cond187.us.us.us.us.us.us.us.i.us
  %148 = icmp slt i32 %.0169310.us.us.us.us.us.us.us.i.us, %.fr701.i
  %.not181.us.us.us.us.us.us.us.i.us = icmp sle i32 %92, %144
  %149 = icmp slt i32 %144, %93
  br i1 %146, label %.lr.ph251.split.us330.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph251.split.us330.us.us.us.us.us.us.i.us:     ; preds = %.preheader.us.us.us.us.us.us.us.i.us
  %150 = icmp sgt i32 %.0169310.us.us.us.us.us.us.us.i.us, -1
  %or.cond3.us.us.us.us.us.us.us.i.us = select i1 %100, i1 %150, i1 false
  %or.cond3.us.us.us.fr.us.us.us.us.i.us = freeze i1 %or.cond3.us.us.us.us.us.us.us.i.us
  br i1 %or.cond3.us.us.us.fr.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us502.us.us.us.i.us, !dbg !247

.lr.ph251.split.split.split.us.us.us.us.split.us502.us.us.us.i.us: ; preds = %.lr.ph251.split.us330.us.us.us.us.us.us.i.us
  %151 = load i32, ptr %23, align 4, !tbaa !14
  %152 = add nsw i32 %151, %32
  %153 = load i32, ptr %17, align 4, !tbaa !14
  %154 = sub i32 %152, %153
  %155 = load i32, ptr %62, align 4, !tbaa !14
  %156 = add nsw i32 %155, %32
  %157 = load i32, ptr %19, align 4, !tbaa !14
  %158 = sub i32 %156, %157
  %159 = load i32, ptr %63, align 4, !tbaa !14
  %160 = add nsw i32 %159, %32
  %161 = load i32, ptr %21, align 4, !tbaa !14
  %162 = sub i32 %160, %161
  %163 = icmp slt i32 %145, %158
  %164 = icmp slt i32 %97, %162
  %or.cond38.i.us.us.us.us.us494.us.us.us.i.us = select i1 %163, i1 %164, i1 false
  %165 = mul nsw i32 %158, %97
  %166 = add i32 %165, %145
  %167 = mul i32 %166, %154
  %or.cond38.i.us.us.us.us.us494.fr.us.us.us.i.us = freeze i1 %or.cond38.i.us.us.us.us.us494.us.us.us.i.us
  br i1 %or.cond38.i.us.us.us.us.us494.fr.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, !dbg !223

.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us.us.us.us.split.us502.us.us.us.i.us
  br i1 %or.cond187.us.us.us.us.fr.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us559.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us.us.us.us.i.us

.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us.us.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us, %172
  %.0167248.us299.us.us.us.us490.us.us.us.us.us.i.us = phi i32 [ %173, %172 ], [ %56, %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us ]
  %168 = add nsw i32 %.0167248.us299.us.us.us.us490.us.us.us.us.us.i.us, %3, !dbg !225
  %169 = icmp sge i32 %168, %154
  %170 = add nuw nsw i32 %168, %167
  %171 = icmp slt i32 %170, 0
  %or.cond687.i.us = select i1 %169, i1 true, i1 %171, !dbg !226
  br i1 %or.cond687.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %172, !dbg !226

172:                                              ; preds = %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us.us.us.us.i.us
  %173 = add i32 %.0167248.us299.us.us.us.us490.us.us.us.us.us.i.us, 1, !dbg !227
  %exitcond719.not.i.us = icmp eq i32 %173, %60, !dbg !228
  br i1 %exitcond719.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us.us.us.us.i.us, !dbg !191, !llvm.loop !248

.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us559.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us, %185
  %.3250.us297.us.us.us.us489.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us499.us.us.us.us.i.us, %185 ], [ %.2312.us.us.us.us.us.us.us.i.us, %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us ]
  %.0167248.us299.us.us.us.us490.us.us556.us.us.i.us = phi i32 [ %186, %185 ], [ %56, %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.us.us.us.i.us ]
  %174 = add nsw i32 %.0167248.us299.us.us.us.us490.us.us556.us.us.i.us, %18, !dbg !232
  %175 = add nsw i32 %.0167248.us299.us.us.us.us490.us.us556.us.us.i.us, %3, !dbg !225
  %176 = icmp slt i32 %175, %154
  br i1 %176, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us495.us.us557.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, !dbg !226

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us495.us.us557.us.us.i.us: ; preds = %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us559.us.us.i.us
  %177 = add nuw nsw i32 %175, %167, !dbg !233
  %178 = icmp slt i32 %177, 0, !dbg !234
  br i1 %178, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %179, !dbg !235

179:                                              ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us495.us.us557.us.us.i.us
  %.not184.us.us.us.us.us496.us.us.us.us.i.us = icmp sle i32 %74, %174
  %180 = icmp slt i32 %174, %77
  %or.cond189.us.us.us.us.us498.us.us.us.us.i.us = select i1 %.not184.us.us.us.us.us496.us.us.us.us.i.us, i1 %180, i1 false, !dbg !236
  br i1 %or.cond189.us.us.us.us.us498.us.us.us.us.i.us, label %181, label %185, !dbg !236

181:                                              ; preds = %179
  %182 = add nsw i32 %.3250.us297.us.us.us.us489.us.us.us.us.i.us, 1, !dbg !237
  %183 = zext i32 %177 to i64
  %184 = getelementptr inbounds i32, ptr %40, i64 %183, !dbg !238
  store i32 %.3250.us297.us.us.us.us489.us.us.us.us.i.us, ptr %184, align 4, !dbg !239, !tbaa !14
  br label %185, !dbg !240

185:                                              ; preds = %181, %179
  %.4.us.us.us.us.us499.us.us.us.us.i.us = phi i32 [ %182, %181 ], [ %.3250.us297.us.us.us.us489.us.us.us.us.i.us, %179 ], !dbg !241
  %186 = add i32 %.0167248.us299.us.us.us.us490.us.us556.us.us.i.us, 1, !dbg !227
  %exitcond720.not.i.us = icmp eq i32 %186, %60, !dbg !228
  br i1 %exitcond720.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us559.us.us.i.us, !dbg !191, !llvm.loop !249

.lr.ph251.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us: ; preds = %.lr.ph251.split.us330.us.us.us.us.us.us.i.us, %239
  %.3250.us297.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2312.us.us.us.us.us.us.us.i.us, %.lr.ph251.split.us330.us.us.us.us.us.us.i.us ]
  %.3162249.us298.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2161311.us.us.us.us.us.us.us.i.us, %.lr.ph251.split.us330.us.us.us.us.us.us.i.us ]
  %.0167248.us299.us.us.us.us.us.us.us.us.i.us = phi i32 [ %240, %239 ], [ %56, %.lr.ph251.split.us330.us.us.us.us.us.us.i.us ]
  %.3206247.us300.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.5208.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2205309.us.us.us.us.us.us.us.i.us, %.lr.ph251.split.us330.us.us.us.us.us.us.i.us ]
  %.3212246.us301.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.6215.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2211308.us.us.us.us.us.us.us.i.us, %.lr.ph251.split.us330.us.us.us.us.us.us.i.us ]
  %187 = add nsw i32 %.0167248.us299.us.us.us.us.us.us.us.us.i.us, %18, !dbg !232
  %188 = load i32, ptr %23, align 4, !dbg !250, !tbaa !14
  %189 = add nsw i32 %188, %32, !dbg !251
  %190 = load i32, ptr %17, align 4, !dbg !252, !tbaa !14
  %191 = sub i32 %189, %190, !dbg !253
  %192 = load i32, ptr %62, align 4, !dbg !254, !tbaa !14
  %193 = add nsw i32 %192, %32, !dbg !255
  %194 = load i32, ptr %19, align 4, !dbg !256, !tbaa !14
  %195 = sub i32 %193, %194, !dbg !257
  %196 = add nsw i32 %.0167248.us299.us.us.us.us.us.us.us.us.i.us, %3, !dbg !225
  %197 = icmp slt i32 %196, %191
  br i1 %197, label %198, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, !dbg !226

198:                                              ; preds = %.lr.ph251.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  %199 = load i32, ptr %63, align 4, !dbg !258, !tbaa !14
  %200 = add nsw i32 %199, %32, !dbg !259
  %201 = load i32, ptr %21, align 4, !dbg !260, !tbaa !14
  %202 = sub i32 %200, %201, !dbg !261
  %203 = icmp slt i32 %145, %195, !dbg !262
  %204 = icmp slt i32 %97, %202
  %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us = select i1 %203, i1 %204, i1 false, !dbg !223
  br i1 %or.cond38.i.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, !dbg !223

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %198
  %205 = mul nsw i32 %195, %97, !dbg !263
  %206 = add i32 %205, %145, !dbg !264
  %207 = mul i32 %206, %191, !dbg !264
  %208 = add nsw i32 %207, %196, !dbg !233
  %209 = icmp slt i32 %208, 0, !dbg !234
  br i1 %209, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %210, !dbg !235

210:                                              ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us
  %.not184.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %74, %187
  %or.cond188.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond187.us.us.us.us.fr.us.us.us.i.us, i1 %.not184.us.us.us.us.us.us.us.us.us.i.us, i1 false, !dbg !236
  %211 = icmp slt i32 %187, %77
  %or.cond189.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond188.us.us.us.us.us.us.us.us.us.i.us, i1 %211, i1 false, !dbg !236
  br i1 %or.cond189.us.us.us.us.us.us.us.us.us.i.us, label %212, label %216, !dbg !236

212:                                              ; preds = %210
  %213 = add nsw i32 %.3250.us297.us.us.us.us.us.us.us.us.i.us, 1, !dbg !237
  %214 = zext i32 %208 to i64
  %215 = getelementptr inbounds i32, ptr %40, i64 %214, !dbg !238
  store i32 %.3250.us297.us.us.us.us.us.us.us.us.i.us, ptr %215, align 4, !dbg !239, !tbaa !14
  br label %216, !dbg !240

216:                                              ; preds = %212, %210
  %.4.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %213, %212 ], [ %.3250.us297.us.us.us.us.us.us.us.us.i.us, %210 ], !dbg !241
  %217 = icmp sgt i32 %.0167248.us299.us.us.us.us.us.us.us.us.i.us, -1
  %or.cond5.not.not.not.not.not.not.us.us.us.us.us.us.us.us.us.i.us = select i1 %148, i1 %217, i1 false
  %218 = icmp slt i32 %.0167248.us299.us.us.us.us.us.us.us.us.i.us, %.fr
  %or.cond190.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond5.not.not.not.not.not.not.us.us.us.us.us.us.us.us.us.i.us, i1 %218, i1 false, !dbg !265
  %or.cond191.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond190.us.us.us.us.us.us.us.us.us.i.us, i1 %.not180.us.us.us.us.i.us, i1 false, !dbg !265
  %or.cond193.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond191.us.us.us.us.us.us.us.us.us.i.us, i1 %101, i1 false, !dbg !265
  %or.cond194.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond193.us.us.us.us.us.us.us.us.us.i.us, i1 %.not181.us.us.us.us.us.us.us.i.us, i1 false, !dbg !265
  %or.cond196.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond194.us.us.us.us.us.us.us.us.us.i.us, i1 %149, i1 false, !dbg !265
  %.not182.us.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %94, %187
  %or.cond197.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond196.us.us.us.us.us.us.us.us.us.i.us, i1 %.not182.us.us.us.us.us.us.us.us.us.i.us, i1 false, !dbg !265
  %219 = icmp slt i32 %187, %95
  %or.cond199.us.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond197.us.us.us.us.us.us.us.us.us.i.us, i1 %219, i1 false, !dbg !265
  br i1 %or.cond199.us.us.us.us.us.us.us.us.us.i.us, label %.preheader.us, label %239, !dbg !265

.preheader.us:                                    ; preds = %216, %.preheader.us
  %.0.i200.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %220, %.preheader.us ], [ 32, %216 ], !dbg !266
  %.not.us.us.us.us.us.us.us.us.us.i.us = icmp sgt i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %.3162249.us298.us.us.us.us.us.us.us.us.i.us, !dbg !269
  %220 = shl i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us, 1, !dbg !270
  br i1 %.not.us.us.us.us.us.us.us.us.us.i.us, label %221, label %.preheader.us, !dbg !271, !llvm.loop !272

221:                                              ; preds = %.preheader.us
  %222 = add nsw i32 %.3162249.us298.us.us.us.us.us.us.us.us.i.us, 1, !dbg !274
  %223 = icmp eq ptr %.3206247.us300.us.us.us.us.us.us.us.us.i.us, null, !dbg !275
  br i1 %223, label %230, label %224, !dbg !276

224:                                              ; preds = %221
  %225 = icmp slt i32 %.3212246.us301.us.us.us.us.us.us.us.us.i.us, %.0.i200.us.us.us.us.us.us.us.us.us.i.us, !dbg !277
  br i1 %225, label %226, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, !dbg !278

226:                                              ; preds = %224
  %227 = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64, !dbg !279
  %228 = shl nsw i64 %227, 2, !dbg !280
  %229 = tail call ptr @realloc(ptr noundef nonnull %.3206247.us300.us.us.us.us.us.us.us.us.i.us, i64 noundef %228) #13, !dbg !281
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, !dbg !282

230:                                              ; preds = %221
  %231 = sext i32 %.0.i200.us.us.us.us.us.us.us.us.us.i.us to i64, !dbg !283
  %232 = shl nsw i64 %231, 2, !dbg !284
  %233 = tail call noalias ptr @malloc(i64 noundef %232) #12, !dbg !285
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, !dbg !286

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us: ; preds = %230, %226, %224
  %.5214.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.3212246.us301.us.us.us.us.us.us.us.us.i.us, %224 ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %226 ], [ %.0.i200.us.us.us.us.us.us.us.us.us.i.us, %230 ], !dbg !241
  %.4207.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.3206247.us300.us.us.us.us.us.us.us.us.i.us, %224 ], [ %229, %226 ], [ %233, %230 ], !dbg !241
  %234 = zext i32 %208 to i64
  %235 = getelementptr inbounds i32, ptr %40, i64 %234, !dbg !287
  %236 = load i32, ptr %235, align 4, !dbg !287, !tbaa !14
  %237 = sext i32 %.3162249.us298.us.us.us.us.us.us.us.us.i.us to i64, !dbg !288
  %238 = getelementptr inbounds i32, ptr %.4207.us.us.us.us.us.us.us.us.us.i.us, i64 %237, !dbg !288
  store i32 %236, ptr %238, align 4, !dbg !289, !tbaa !14
  br label %239, !dbg !290

239:                                              ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us, %216
  %.6215.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.5214.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3212246.us301.us.us.us.us.us.us.us.us.i.us, %216 ], !dbg !241
  %.5208.us.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.4207.us.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3206247.us300.us.us.us.us.us.us.us.us.i.us, %216 ], !dbg !241
  %.4163.us.us.us.us.us.us.us.us.us.i.us = phi i32 [ %222, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.us.i.us ], [ %.3162249.us298.us.us.us.us.us.us.us.us.i.us, %216 ], !dbg !241
  %240 = add i32 %.0167248.us299.us.us.us.us.us.us.us.us.i.us, 1, !dbg !227
  %exitcond721.not.i.us = icmp eq i32 %240, %60, !dbg !228
  br i1 %exitcond721.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.us.i.us, label %.lr.ph251.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us, !dbg !191, !llvm.loop !291

._crit_edge.split.us.us.us.us.us.us.us.us.i.us:   ; preds = %172, %185, %239
  %.us-phi464.us.us.us.us.i.us = phi i32 [ %.6215.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2211308.us.us.us.us.us.us.us.i.us, %185 ], [ %.2211308.us.us.us.us.us.us.us.i.us, %172 ]
  %.us-phi465.us.us.us.us.i.us = phi ptr [ %.5208.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2205309.us.us.us.us.us.us.us.i.us, %185 ], [ %.2205309.us.us.us.us.us.us.us.i.us, %172 ]
  %.us-phi466.us.us.us.us.i.us = phi i32 [ %.4163.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.2161311.us.us.us.us.us.us.us.i.us, %185 ], [ %.2161311.us.us.us.us.us.us.us.i.us, %172 ]
  %.us-phi467.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.us.i.us, %239 ], [ %.4.us.us.us.us.us499.us.us.us.us.i.us, %185 ], [ %.2312.us.us.us.us.us.us.us.i.us, %172 ]
  %241 = add nsw i32 %.0169310.us.us.us.us.us.us.us.i.us, 1, !dbg !243
  %exitcond722.not.i.us = icmp eq i32 %241, %59, !dbg !244
  br i1 %exitcond722.not.i.us, label %._crit_edge313.split.us.split.us.us.us.us.us.i.us, label %.preheader.us.us.us.us.us.us.us.i.us, !dbg !190, !llvm.loop !292

._crit_edge313.split.us.split.us.us.us.us.us.i.us: ; preds = %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us
  %.us-phi460.us.us.us.us.i.us = phi i32 [ %.us-phi464.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1210468.us.us.us.us.i.us, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us ]
  %.us-phi461.us.us.us.us.i.us = phi ptr [ %.us-phi465.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1204469.us.us.us.us.i.us, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us ]
  %.us-phi462.us.us.us.us.i.us = phi i32 [ %.us-phi466.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.1160471.us.us.us.us.i.us, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us ]
  %.us-phi463.us.us.us.us.i.us = phi i32 [ %.us-phi467.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.us.i.us ], [ %.us-phi.us360.us.us.us.us.i.us, %._crit_edge.split.us328.split.us.us.us.us.us.us.i.us ]
  %242 = add nsw i32 %.0168470.us.us.us.us.i.us, 1, !dbg !293
  %exitcond723.not.i.us = icmp eq i32 %242, %57, !dbg !294
  br i1 %exitcond723.not.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, label %.preheader228.us.us.us.us.i.us, !dbg !187, !llvm.loop !295

_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us: ; preds = %._crit_edge313.split.us.split.us.us.us.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, %84, %81, %78, %75, %.lr.ph600.split.us.split.us.i.us
  %.7.us.us.i.us = phi i32 [ %.0209595.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0209595.us.us.i.us, %84 ], [ %.0209595.us.us.i.us, %81 ], [ %.0209595.us.us.i.us, %78 ], [ %.0209595.us.us.i.us, %75 ], [ %.0209595.us.us.i.us, %.lr.ph600.split.us.split.us.i.us ], [ %.us-phi460.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], !dbg !297
  %.6.us.us.i.us = phi ptr [ %.0203596.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0203596.us.us.i.us, %84 ], [ %.0203596.us.us.i.us, %81 ], [ %.0203596.us.us.i.us, %78 ], [ %.0203596.us.us.i.us, %75 ], [ %.0203596.us.us.i.us, %.lr.ph600.split.us.split.us.i.us ], [ %.us-phi461.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], !dbg !298
  %.5164.us.us.i.us = phi i32 [ %.0159598.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0159598.us.us.i.us, %84 ], [ %.0159598.us.us.i.us, %81 ], [ %.0159598.us.us.i.us, %78 ], [ %.0159598.us.us.i.us, %75 ], [ %.0159598.us.us.i.us, %.lr.ph600.split.us.split.us.i.us ], [ %.us-phi462.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], !dbg !299
  %.5.us.us.i.us = phi i32 [ %.0599.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0599.us.us.i.us, %84 ], [ %.0599.us.us.i.us, %81 ], [ %.0599.us.us.i.us, %78 ], [ %.0599.us.us.i.us, %75 ], [ %.0599.us.us.i.us, %.lr.ph600.split.us.split.us.i.us ], [ %.us-phi463.us.us.us.us.i.us, %._crit_edge313.split.us.split.us.us.us.us.us.i.us ], !dbg !300
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1, !dbg !301
  %exitcond725.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i, !dbg !185
  br i1 %exitcond725.not.i.us, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, label %.lr.ph600.split.us.split.us.i.us, !dbg !186, !llvm.loop !302

_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i: ; preds = %.preheader228.us.us.us.us.i.us, %.lr.ph251.split.us330.us.us485.us.us.us.i.us, %.preheader.us.us.us478.us.us.us.i.us, %.lr.ph251.split.split.split.us.us.us.us.split.us502.us.us.us.i.us, %.preheader.us.us.us.us.us.us.us.i.us, %.lr.ph251.split.split.split.us332.split.us.split.us.us.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us323.us.us357.us.us.us.us.i.us, %.lr.ph251.split.split.split.us332.split.us.split.us359.us.us.us.us.i.us, %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us495.us.us557.us.us.i.us, %.lr.ph251.split.split.split.us.us.us.us.split.us502.split.us.split.us559.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.us.i.us, %198, %.lr.ph251.split.split.split.us.us.us.us.split.us.us.us.us.us.i.us
  tail call void @abort() #14, !dbg !304
  unreachable, !dbg !304

._crit_edge.sink.split.i:                         ; preds = %.lr.ph600.split.us.i, %.lr.ph600.split.preheader.i
  %wide.trip.count.sink.i = phi i64 [ %64, %.lr.ph600.split.preheader.i ], [ %wide.trip.count.i, %.lr.ph600.split.us.i ]
  %243 = shl nuw nsw i64 %wide.trip.count.sink.i, 2, !dbg !186
  tail call void @llvm.memset.p0.i64(ptr align 4 %44, i8 0, i64 %243, i1 false), !dbg !192, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr align 4 %45, i8 0, i64 %243, i1 false), !dbg !193, !tbaa !14
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, !dbg !188

_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit: ; preds = %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, %.lr.ph600.split.us.split.us.i.preheader45, %.preheader229.i, %._crit_edge.sink.split.i
  %.0203.lcssa.i = phi ptr [ null, %.preheader229.i ], [ null, %._crit_edge.sink.split.i ], [ null, %.lr.ph600.split.us.split.us.i.preheader45 ], [ %.6.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], !dbg !298
  %.0159.lcssa.i = phi i32 [ 0, %.preheader229.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph600.split.us.split.us.i.preheader45 ], [ %.5164.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], !dbg !299
  %.0.lcssa.i = phi i32 [ 0, %.preheader229.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph600.split.us.split.us.i.preheader45 ], [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ], !dbg !300
  %244 = getelementptr inbounds i32, ptr %44, i64 %10, !dbg !188
  store i32 %.0.lcssa.i, ptr %244, align 4, !dbg !305, !tbaa !14
  %245 = getelementptr inbounds i32, ptr %45, i64 %10, !dbg !306
  store i32 %.0159.lcssa.i, ptr %245, align 4, !dbg !307, !tbaa !14
  store ptr %40, ptr %5, align 8, !dbg !308, !tbaa !143
  store ptr %44, ptr %6, align 8, !dbg !309, !tbaa !143
  store ptr %45, ptr %7, align 8, !dbg !310, !tbaa !143
  store ptr %.0203.lcssa.i, ptr %8, align 8, !dbg !311, !tbaa !143
  ret void, !dbg !312
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare dso_local noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../utils/BoxPartition.cpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"openmp", i32 50}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"AMD clang version 17.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.7.0 23352 d1e13c532a947d0cbfc94759c00dcf152294aa13)"}
!7 = distinct !DISubprogram(name: "box_map_local", scope: !1, file: !1, line: 60, type: !8, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!8 = !DISubroutineType(types: !9)
!9 = !{}
!10 = !DILocation(line: 42, column: 20, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "box_map_local_entry", scope: !1, file: !1, line: 36, type: !8, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!12 = distinct !DILocation(line: 67, column: 16, scope: !7)
!13 = !DILocation(line: 42, column: 30, scope: !11, inlinedAt: !12)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C++ TBAA"}
!18 = !DILocation(line: 42, column: 28, scope: !11, inlinedAt: !12)
!19 = !DILocation(line: 42, column: 42, scope: !11, inlinedAt: !12)
!20 = !DILocation(line: 42, column: 40, scope: !11, inlinedAt: !12)
!21 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !24)
!22 = distinct !DISubprogram(name: "operator[]", scope: !23, file: !23, line: 51, type: !8, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!23 = !DIFile(filename: "../utils/Box.hpp", directory: "/home/z30118/work/231010pragma/miniFE-2.2.0/openmp45-opt/src")
!24 = distinct !DILocation(line: 43, column: 30, scope: !11, inlinedAt: !12)
!25 = !DILocation(line: 43, column: 30, scope: !11, inlinedAt: !12)
!26 = !DILocation(line: 43, column: 28, scope: !11, inlinedAt: !12)
!27 = !DILocation(line: 43, column: 42, scope: !11, inlinedAt: !12)
!28 = !DILocation(line: 43, column: 40, scope: !11, inlinedAt: !12)
!29 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !30)
!30 = distinct !DILocation(line: 44, column: 30, scope: !11, inlinedAt: !12)
!31 = !DILocation(line: 44, column: 30, scope: !11, inlinedAt: !12)
!32 = !DILocation(line: 44, column: 28, scope: !11, inlinedAt: !12)
!33 = !DILocation(line: 44, column: 42, scope: !11, inlinedAt: !12)
!34 = !DILocation(line: 44, column: 40, scope: !11, inlinedAt: !12)
!35 = !DILocation(line: 47, column: 11, scope: !11, inlinedAt: !12)
!36 = !DILocation(line: 48, column: 11, scope: !11, inlinedAt: !12)
!37 = !DILocation(line: 49, column: 11, scope: !11, inlinedAt: !12)
!38 = !DILocation(line: 51, column: 10, scope: !11, inlinedAt: !12)
!39 = !DILocation(line: 51, column: 21, scope: !11, inlinedAt: !12)
!40 = !DILocation(line: 51, column: 32, scope: !11, inlinedAt: !12)
!41 = !DILocation(line: 51, column: 37, scope: !11, inlinedAt: !12)
!42 = !DILocation(line: 52, column: 32, scope: !11, inlinedAt: !12)
!43 = !DILocation(line: 52, column: 37, scope: !11, inlinedAt: !12)
!44 = !DILocation(line: 55, column: 22, scope: !11, inlinedAt: !12)
!45 = !DILocation(line: 55, column: 32, scope: !11, inlinedAt: !12)
!46 = !DILocation(line: 55, column: 47, scope: !11, inlinedAt: !12)
!47 = !DILocation(line: 69, column: 10, scope: !7)
!48 = !DILocation(line: 69, column: 8, scope: !7)
!49 = !DILocation(line: 70, column: 14, scope: !7)
!50 = !DILocation(line: 71, column: 3, scope: !7)
!51 = !DILocation(line: 0, scope: !7)
!52 = !DILocation(line: 73, column: 3, scope: !7)
!53 = distinct !DISubprogram(name: "box_partition", scope: !1, file: !1, line: 79, type: !8, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!54 = !DILocation(line: 83, column: 21, scope: !53)
!55 = !DILocation(line: 84, column: 10, scope: !53)
!56 = !DILocation(line: 84, column: 8, scope: !53)
!57 = !DILocation(line: 85, column: 23, scope: !53)
!58 = !DILocation(line: 85, column: 5, scope: !53)
!59 = !DILocation(line: 85, column: 21, scope: !53)
!60 = !DILocation(line: 85, column: 53, scope: !53)
!61 = !DILocation(line: 85, column: 35, scope: !53)
!62 = !DILocation(line: 85, column: 51, scope: !53)
!63 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !64)
!64 = distinct !DILocation(line: 86, column: 23, scope: !53)
!65 = !DILocation(line: 86, column: 23, scope: !53)
!66 = !DILocation(line: 47, column: 38, scope: !67, inlinedAt: !68)
!67 = distinct !DISubprogram(name: "operator[]", scope: !23, file: !23, line: 47, type: !8, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!68 = distinct !DILocation(line: 86, column: 5, scope: !53)
!69 = !DILocation(line: 86, column: 21, scope: !53)
!70 = !DILocation(line: 86, column: 53, scope: !53)
!71 = !DILocation(line: 86, column: 35, scope: !53)
!72 = !DILocation(line: 86, column: 51, scope: !53)
!73 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !74)
!74 = distinct !DILocation(line: 87, column: 23, scope: !53)
!75 = !DILocation(line: 87, column: 23, scope: !53)
!76 = !DILocation(line: 47, column: 38, scope: !67, inlinedAt: !77)
!77 = distinct !DILocation(line: 87, column: 5, scope: !53)
!78 = !DILocation(line: 87, column: 21, scope: !53)
!79 = !DILocation(line: 87, column: 53, scope: !53)
!80 = !DILocation(line: 87, column: 35, scope: !53)
!81 = !DILocation(line: 87, column: 51, scope: !53)
!82 = !DILocation(line: 88, column: 3, scope: !53)
!83 = !DILocation(line: 51, column: 60, scope: !22, inlinedAt: !84)
!84 = distinct !DILocation(line: 90, column: 19, scope: !53)
!85 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !84)
!86 = !DILocation(line: 90, column: 19, scope: !53)
!87 = !DILocation(line: 90, column: 36, scope: !53)
!88 = !DILocation(line: 90, column: 34, scope: !53)
!89 = !DILocation(line: 91, column: 27, scope: !53)
!90 = !DILocation(line: 92, column: 27, scope: !53)
!91 = !DILocation(line: 94, column: 40, scope: !53)
!92 = !DILocation(line: 94, column: 56, scope: !53)
!93 = !DILocation(line: 94, column: 75, scope: !53)
!94 = !DILocation(line: 94, column: 64, scope: !53)
!95 = !DILocation(line: 94, column: 43, scope: !53)
!96 = !DILocation(line: 94, column: 29, scope: !53)
!97 = !DILocation(line: 95, column: 25, scope: !53)
!98 = !DILocation(line: 96, column: 34, scope: !53)
!99 = !DILocation(line: 96, column: 40, scope: !53)
!100 = !DILocation(line: 98, column: 10, scope: !53)
!101 = !DILocation(line: 99, column: 7, scope: !53)
!102 = !DILocation(line: 100, column: 20, scope: !53)
!103 = !DILocation(line: 100, column: 18, scope: !53)
!104 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !105)
!105 = distinct !DILocation(line: 102, column: 20, scope: !53)
!106 = !DILocation(line: 47, column: 38, scope: !67, inlinedAt: !107)
!107 = distinct !DILocation(line: 102, column: 7, scope: !53)
!108 = !DILocation(line: 102, column: 20, scope: !53)
!109 = !DILocation(line: 102, column: 18, scope: !53)
!110 = !DILocation(line: 47, column: 38, scope: !67, inlinedAt: !111)
!111 = distinct !DILocation(line: 104, column: 25, scope: !53)
!112 = !DILocation(line: 104, column: 25, scope: !53)
!113 = !DILocation(line: 104, column: 41, scope: !53)
!114 = !DILocation(line: 104, column: 7, scope: !53)
!115 = !DILocation(line: 104, column: 23, scope: !53)
!116 = !DILocation(line: 106, column: 29, scope: !53)
!117 = !DILocation(line: 106, column: 7, scope: !53)
!118 = !DILocation(line: 107, column: 5, scope: !53)
!119 = !DILocation(line: 109, column: 10, scope: !53)
!120 = !DILocation(line: 110, column: 7, scope: !53)
!121 = !DILocation(line: 111, column: 20, scope: !53)
!122 = !DILocation(line: 111, column: 18, scope: !53)
!123 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !124)
!124 = distinct !DILocation(line: 113, column: 20, scope: !53)
!125 = !DILocation(line: 47, column: 38, scope: !67, inlinedAt: !126)
!126 = distinct !DILocation(line: 113, column: 7, scope: !53)
!127 = !DILocation(line: 113, column: 20, scope: !53)
!128 = !DILocation(line: 113, column: 18, scope: !53)
!129 = !DILocation(line: 115, column: 10, scope: !53)
!130 = !DILocation(line: 47, column: 38, scope: !67, inlinedAt: !131)
!131 = distinct !DILocation(line: 116, column: 7, scope: !53)
!132 = !DILocation(line: 116, column: 23, scope: !53)
!133 = !DILocation(line: 117, column: 42, scope: !53)
!134 = !DILocation(line: 117, column: 7, scope: !53)
!135 = !DILocation(line: 117, column: 24, scope: !53)
!136 = !DILocation(line: 119, column: 7, scope: !53)
!137 = !DILocation(line: 120, column: 5, scope: !53)
!138 = !DILocation(line: 122, column: 1, scope: !53)
!139 = distinct !DISubprogram(name: "box_partition_rcb", scope: !1, file: !1, line: 278, type: !8, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!140 = !DILocation(line: 288, column: 20, scope: !139)
!141 = !DILocation(line: 288, column: 11, scope: !139)
!142 = !DILocation(line: 288, column: 9, scope: !139)
!143 = !{!144, !144, i64 0}
!144 = !{!"any pointer", !16, i64 0}
!145 = !DILocation(line: 290, column: 3, scope: !139)
!146 = !DILocation(line: 153, column: 23, scope: !147, inlinedAt: !148)
!147 = distinct !DISubprogram(name: "box_partition_maps", scope: !1, file: !1, line: 143, type: !8, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!148 = distinct !DILocation(line: 292, column: 3, scope: !139)
!149 = !DILocation(line: 155, column: 21, scope: !147, inlinedAt: !148)
!150 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !151)
!151 = distinct !DILocation(line: 156, column: 21, scope: !147, inlinedAt: !148)
!152 = !DILocation(line: 156, column: 21, scope: !147, inlinedAt: !148)
!153 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !154)
!154 = distinct !DILocation(line: 157, column: 21, scope: !147, inlinedAt: !148)
!155 = !DILocation(line: 157, column: 21, scope: !147, inlinedAt: !148)
!156 = !DILocation(line: 158, column: 21, scope: !147, inlinedAt: !148)
!157 = !DILocation(line: 158, column: 34, scope: !147, inlinedAt: !148)
!158 = !DILocation(line: 159, column: 21, scope: !147, inlinedAt: !148)
!159 = !DILocation(line: 159, column: 34, scope: !147, inlinedAt: !148)
!160 = !DILocation(line: 160, column: 21, scope: !147, inlinedAt: !148)
!161 = !DILocation(line: 160, column: 34, scope: !147, inlinedAt: !148)
!162 = !DILocation(line: 162, column: 27, scope: !147, inlinedAt: !148)
!163 = !DILocation(line: 162, column: 35, scope: !147, inlinedAt: !148)
!164 = !DILocation(line: 163, column: 35, scope: !147, inlinedAt: !148)
!165 = !DILocation(line: 164, column: 35, scope: !147, inlinedAt: !148)
!166 = !DILocation(line: 166, column: 35, scope: !147, inlinedAt: !148)
!167 = !DILocation(line: 166, column: 47, scope: !147, inlinedAt: !148)
!168 = !DILocation(line: 168, column: 37, scope: !147, inlinedAt: !148)
!169 = !DILocation(line: 168, column: 47, scope: !147, inlinedAt: !148)
!170 = !DILocation(line: 168, column: 29, scope: !147, inlinedAt: !148)
!171 = !DILocation(line: 169, column: 42, scope: !147, inlinedAt: !148)
!172 = !DILocation(line: 169, column: 37, scope: !147, inlinedAt: !148)
!173 = !DILocation(line: 169, column: 48, scope: !147, inlinedAt: !148)
!174 = !DILocation(line: 169, column: 29, scope: !147, inlinedAt: !148)
!175 = !DILocation(line: 170, column: 29, scope: !147, inlinedAt: !148)
!176 = !DILocation(line: 180, column: 35, scope: !147, inlinedAt: !148)
!177 = !DILocation(line: 181, column: 35, scope: !147, inlinedAt: !148)
!178 = !DILocation(line: 182, column: 35, scope: !147, inlinedAt: !148)
!179 = !DILocation(line: 183, column: 35, scope: !147, inlinedAt: !148)
!180 = !DILocation(line: 184, column: 35, scope: !147, inlinedAt: !148)
!181 = !DILocation(line: 185, column: 35, scope: !147, inlinedAt: !148)
!182 = !DILocation(line: 187, column: 19, scope: !147, inlinedAt: !148)
!183 = !DILocation(line: 187, column: 3, scope: !147, inlinedAt: !148)
!184 = !DILocation(line: 187, column: 53, scope: !147, inlinedAt: !148)
!185 = !DILocation(line: 194, column: 19, scope: !147, inlinedAt: !148)
!186 = !DILocation(line: 194, column: 3, scope: !147, inlinedAt: !148)
!187 = !DILocation(line: 211, column: 7, scope: !147, inlinedAt: !148)
!188 = !DILocation(line: 269, column: 3, scope: !147, inlinedAt: !148)
!189 = !DILocation(line: 194, scope: !147, inlinedAt: !148)
!190 = !DILocation(line: 212, column: 7, scope: !147, inlinedAt: !148)
!191 = !DILocation(line: 213, column: 7, scope: !147, inlinedAt: !148)
!192 = !DILocation(line: 196, column: 16, scope: !147, inlinedAt: !148)
!193 = !DILocation(line: 197, column: 16, scope: !147, inlinedAt: !148)
!194 = !DILocation(line: 195, column: 33, scope: !147, inlinedAt: !148)
!195 = !DILocation(line: 196, column: 5, scope: !147, inlinedAt: !148)
!196 = !DILocation(line: 197, column: 5, scope: !147, inlinedAt: !148)
!197 = !DILocation(line: 199, column: 39, scope: !147, inlinedAt: !148)
!198 = !DILocation(line: 128, column: 21, scope: !199, inlinedAt: !200)
!199 = distinct !DISubprogram(name: "box_disjoint", scope: !1, file: !1, line: 126, type: !8, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!200 = distinct !DILocation(line: 199, column: 12, scope: !147, inlinedAt: !148)
!201 = !DILocation(line: 128, column: 18, scope: !199, inlinedAt: !200)
!202 = !DILocation(line: 128, column: 29, scope: !199, inlinedAt: !200)
!203 = !DILocation(line: 128, column: 32, scope: !199, inlinedAt: !200)
!204 = !DILocation(line: 128, column: 40, scope: !199, inlinedAt: !200)
!205 = !DILocation(line: 128, column: 51, scope: !199, inlinedAt: !200)
!206 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !207)
!207 = distinct !DILocation(line: 129, column: 21, scope: !199, inlinedAt: !200)
!208 = !DILocation(line: 129, column: 21, scope: !199, inlinedAt: !200)
!209 = !DILocation(line: 129, column: 18, scope: !199, inlinedAt: !200)
!210 = !DILocation(line: 129, column: 29, scope: !199, inlinedAt: !200)
!211 = !DILocation(line: 129, column: 32, scope: !199, inlinedAt: !200)
!212 = !DILocation(line: 129, column: 40, scope: !199, inlinedAt: !200)
!213 = !DILocation(line: 129, column: 51, scope: !199, inlinedAt: !200)
!214 = !DILocation(line: 51, column: 50, scope: !22, inlinedAt: !215)
!215 = distinct !DILocation(line: 130, column: 21, scope: !199, inlinedAt: !200)
!216 = !DILocation(line: 130, column: 21, scope: !199, inlinedAt: !200)
!217 = !DILocation(line: 130, column: 18, scope: !199, inlinedAt: !200)
!218 = !DILocation(line: 130, column: 29, scope: !199, inlinedAt: !200)
!219 = !DILocation(line: 130, column: 32, scope: !199, inlinedAt: !200)
!220 = !DILocation(line: 130, column: 40, scope: !199, inlinedAt: !200)
!221 = !DILocation(line: 199, column: 10, scope: !147, inlinedAt: !148)
!222 = !DILocation(line: 242, column: 25, scope: !147, inlinedAt: !148)
!223 = !DILocation(line: 52, column: 37, scope: !11, inlinedAt: !224)
!224 = distinct !DILocation(line: 220, column: 11, scope: !147, inlinedAt: !148)
!225 = !DILocation(line: 47, column: 11, scope: !11, inlinedAt: !224)
!226 = !DILocation(line: 51, column: 21, scope: !11, inlinedAt: !224)
!227 = !DILocation(line: 213, column: 58, scope: !147, inlinedAt: !148)
!228 = !DILocation(line: 213, column: 40, scope: !147, inlinedAt: !148)
!229 = distinct !{!229, !191, !230, !231}
!230 = !DILocation(line: 264, column: 7, scope: !147, inlinedAt: !148)
!231 = !{!"llvm.loop.mustprogress"}
!232 = !DILocation(line: 217, column: 38, scope: !147, inlinedAt: !148)
!233 = !DILocation(line: 55, column: 47, scope: !11, inlinedAt: !224)
!234 = !DILocation(line: 222, column: 20, scope: !147, inlinedAt: !148)
!235 = !DILocation(line: 222, column: 14, scope: !147, inlinedAt: !148)
!236 = !DILocation(line: 224, column: 31, scope: !147, inlinedAt: !148)
!237 = !DILocation(line: 230, column: 37, scope: !147, inlinedAt: !148)
!238 = !DILocation(line: 230, column: 11, scope: !147, inlinedAt: !148)
!239 = !DILocation(line: 230, column: 29, scope: !147, inlinedAt: !148)
!240 = !DILocation(line: 239, column: 9, scope: !147, inlinedAt: !148)
!241 = !DILocation(line: 0, scope: !147, inlinedAt: !148)
!242 = distinct !{!242, !191, !230, !231}
!243 = !DILocation(line: 212, column: 58, scope: !147, inlinedAt: !148)
!244 = !DILocation(line: 212, column: 40, scope: !147, inlinedAt: !148)
!245 = distinct !{!245, !190, !246, !231}
!246 = !DILocation(line: 265, column: 5, scope: !147, inlinedAt: !148)
!247 = !DILocation(line: 244, column: 48, scope: !147, inlinedAt: !148)
!248 = distinct !{!248, !191, !230, !231}
!249 = distinct !{!249, !191, !230, !231}
!250 = !DILocation(line: 42, column: 30, scope: !11, inlinedAt: !224)
!251 = !DILocation(line: 42, column: 28, scope: !11, inlinedAt: !224)
!252 = !DILocation(line: 42, column: 42, scope: !11, inlinedAt: !224)
!253 = !DILocation(line: 42, column: 40, scope: !11, inlinedAt: !224)
!254 = !DILocation(line: 43, column: 30, scope: !11, inlinedAt: !224)
!255 = !DILocation(line: 43, column: 28, scope: !11, inlinedAt: !224)
!256 = !DILocation(line: 43, column: 42, scope: !11, inlinedAt: !224)
!257 = !DILocation(line: 43, column: 40, scope: !11, inlinedAt: !224)
!258 = !DILocation(line: 44, column: 30, scope: !11, inlinedAt: !224)
!259 = !DILocation(line: 44, column: 28, scope: !11, inlinedAt: !224)
!260 = !DILocation(line: 44, column: 42, scope: !11, inlinedAt: !224)
!261 = !DILocation(line: 44, column: 40, scope: !11, inlinedAt: !224)
!262 = !DILocation(line: 52, column: 32, scope: !11, inlinedAt: !224)
!263 = !DILocation(line: 55, column: 22, scope: !11, inlinedAt: !224)
!264 = !DILocation(line: 55, column: 32, scope: !11, inlinedAt: !224)
!265 = !DILocation(line: 245, column: 48, scope: !147, inlinedAt: !148)
!266 = !DILocation(line: 0, scope: !267, inlinedAt: !268)
!267 = distinct !DISubprogram(name: "resize_int", scope: !1, file: !1, line: 133, type: !8, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !9)
!268 = distinct !DILocation(line: 252, column: 11, scope: !147, inlinedAt: !148)
!269 = !DILocation(line: 136, column: 13, scope: !267, inlinedAt: !268)
!270 = !DILocation(line: 136, column: 28, scope: !267, inlinedAt: !268)
!271 = !DILocation(line: 136, column: 3, scope: !267, inlinedAt: !268)
!272 = distinct !{!272, !271, !273, !231}
!273 = !DILocation(line: 136, column: 36, scope: !267, inlinedAt: !268)
!274 = !DILocation(line: 252, column: 59, scope: !147, inlinedAt: !148)
!275 = !DILocation(line: 137, column: 13, scope: !267, inlinedAt: !268)
!276 = !DILocation(line: 137, column: 8, scope: !267, inlinedAt: !268)
!277 = !DILocation(line: 139, column: 23, scope: !267, inlinedAt: !268)
!278 = !DILocation(line: 139, column: 13, scope: !267, inlinedAt: !268)
!279 = !DILocation(line: 140, column: 43, scope: !267, inlinedAt: !268)
!280 = !DILocation(line: 140, column: 42, scope: !267, inlinedAt: !268)
!281 = !DILocation(line: 140, column: 18, scope: !267, inlinedAt: !268)
!282 = !DILocation(line: 140, column: 61, scope: !267, inlinedAt: !268)
!283 = !DILocation(line: 138, column: 38, scope: !267, inlinedAt: !268)
!284 = !DILocation(line: 138, column: 37, scope: !267, inlinedAt: !268)
!285 = !DILocation(line: 138, column: 18, scope: !267, inlinedAt: !268)
!286 = !DILocation(line: 138, column: 57, scope: !267, inlinedAt: !268)
!287 = !DILocation(line: 253, column: 30, scope: !147, inlinedAt: !148)
!288 = !DILocation(line: 253, column: 11, scope: !147, inlinedAt: !148)
!289 = !DILocation(line: 253, column: 28, scope: !147, inlinedAt: !148)
!290 = !DILocation(line: 263, column: 9, scope: !147, inlinedAt: !148)
!291 = distinct !{!291, !191, !230, !231}
!292 = distinct !{!292, !190, !246, !231}
!293 = !DILocation(line: 211, column: 58, scope: !147, inlinedAt: !148)
!294 = !DILocation(line: 211, column: 40, scope: !147, inlinedAt: !148)
!295 = distinct !{!295, !187, !296, !231}
!296 = !DILocation(line: 266, column: 5, scope: !147, inlinedAt: !148)
!297 = !DILocation(line: 173, column: 9, scope: !147, inlinedAt: !148)
!298 = !DILocation(line: 172, column: 9, scope: !147, inlinedAt: !148)
!299 = !DILocation(line: 189, column: 9, scope: !147, inlinedAt: !148)
!300 = !DILocation(line: 190, column: 10, scope: !147, inlinedAt: !148)
!301 = !DILocation(line: 194, column: 26, scope: !147, inlinedAt: !148)
!302 = distinct !{!302, !186, !303, !231}
!303 = !DILocation(line: 268, column: 3, scope: !147, inlinedAt: !148)
!304 = !DILocation(line: 222, column: 28, scope: !147, inlinedAt: !148)
!305 = !DILocation(line: 269, column: 15, scope: !147, inlinedAt: !148)
!306 = !DILocation(line: 270, column: 3, scope: !147, inlinedAt: !148)
!307 = !DILocation(line: 270, column: 15, scope: !147, inlinedAt: !148)
!308 = !DILocation(line: 272, column: 18, scope: !147, inlinedAt: !148)
!309 = !DILocation(line: 273, column: 18, scope: !147, inlinedAt: !148)
!310 = !DILocation(line: 274, column: 18, scope: !147, inlinedAt: !148)
!311 = !DILocation(line: 275, column: 18, scope: !147, inlinedAt: !148)
!312 = !DILocation(line: 295, column: 1, scope: !139)

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-pc-linux-gnu-
