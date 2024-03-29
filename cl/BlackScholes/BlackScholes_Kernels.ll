; ModuleID = '../AMDAPP_samples/cl/BlackScholes/BlackScholes_Kernels.cl'
source_filename = "../AMDAPP_samples/cl/BlackScholes/BlackScholes_Kernels.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable writeonly
define dso_local void @phi(<4 x float> %0, <4 x float>* nocapture %1) local_unnamed_addr #0 {
  %3 = tail call <4 x float> @_Z4fabsDv4_f(<4 x float> %0) #6
  %4 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %3, <4 x float> <float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>)
  %5 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %4, !fpmath !3
  %6 = fneg <4 x float> %0
  %7 = fmul <4 x float> %6, %0
  %8 = fmul <4 x float> %7, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %9 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %8) #6
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> <float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000>, <4 x float> <float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000>)
  %11 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %10, <4 x float> <float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000>)
  %12 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %11, <4 x float> <float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000>)
  %13 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %12, <4 x float> <float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000>)
  %14 = fmul <4 x float> %9, <float 0xBFD9884540000000, float 0xBFD9884540000000, float 0xBFD9884540000000, float 0xBFD9884540000000>
  %15 = fmul <4 x float> %5, %14
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> %13, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>)
  %17 = fcmp uge <4 x float> %0, zeroinitializer
  %18 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %16
  %19 = select <4 x i1> %17, <4 x float> %16, <4 x float> %18
  store <4 x float> %19, <4 x float>* %1, align 16, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z4fabsDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z3expDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @blackScholes(<4 x float>* nocapture readonly %0, i32 %1, <4 x float>* nocapture %2, <4 x float>* nocapture %3) local_unnamed_addr #3 !kernel_arg_addr_space !7 !kernel_arg_access_qual !8 !kernel_arg_type !9 !kernel_arg_base_type !10 !kernel_arg_type_qual !11 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %6 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %7 = sext i32 %1 to i64
  %8 = mul i64 %6, %7
  %9 = add i64 %8, %5
  %10 = getelementptr inbounds <4 x float>, <4 x float>* %0, i64 %9
  %11 = load <4 x float>, <4 x float>* %10, align 16, !tbaa !4
  %12 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %11
  %13 = fmul <4 x float> %12, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> <float 1.000000e+01, float 1.000000e+01, float 1.000000e+01, float 1.000000e+01>, <4 x float> %13)
  %15 = fmul <4 x float> %12, <float 1.000000e+01, float 1.000000e+01, float 1.000000e+01, float 1.000000e+01>
  %16 = fadd <4 x float> %11, %15
  %17 = fmul <4 x float> %12, <float 0x3FA99999A0000000, float 0x3FA99999A0000000, float 0x3FA99999A0000000, float 0x3FA99999A0000000>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float> %17)
  %19 = fmul <4 x float> %12, <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3F847AE140000000>, <4 x float> %19)
  %21 = tail call <4 x float> @_Z4sqrtDv4_f(<4 x float> %16) #6
  %22 = fmul <4 x float> %21, %20
  %23 = fdiv <4 x float> %14, %14, !fpmath !3
  %24 = tail call <4 x float> @_Z3logDv4_f(<4 x float> %23) #6
  %25 = fmul <4 x float> %20, %20
  %26 = fmul <4 x float> %25, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %27 = fadd <4 x float> %18, %26
  %28 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %16, <4 x float> %24)
  %29 = fdiv <4 x float> %28, %22, !fpmath !3
  %30 = fsub <4 x float> %29, %22
  %31 = fneg <4 x float> %18
  %32 = fmul <4 x float> %16, %31
  %33 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %32) #6
  %34 = fmul <4 x float> %14, %33
  %35 = tail call <4 x float> @_Z4fabsDv4_f(<4 x float> %29) #6
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> <float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %37 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %36, !fpmath !3
  %38 = fneg <4 x float> %29
  %39 = fmul <4 x float> %29, %38
  %40 = fmul <4 x float> %39, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %41 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %40) #6
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> <float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000>, <4 x float> <float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000>) #7
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %42, <4 x float> <float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000>) #7
  %44 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %43, <4 x float> <float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000>) #7
  %45 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %44, <4 x float> <float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000>) #7
  %46 = fmul <4 x float> %41, <float 0xBFD9884540000000, float 0xBFD9884540000000, float 0xBFD9884540000000, float 0xBFD9884540000000>
  %47 = fmul <4 x float> %37, %46
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %45, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %49 = fcmp uge <4 x float> %29, zeroinitializer
  %50 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %48
  %51 = select <4 x i1> %49, <4 x float> %48, <4 x float> %50
  %52 = tail call <4 x float> @_Z4fabsDv4_f(<4 x float> %30) #6
  %53 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %52, <4 x float> <float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %54 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %53, !fpmath !3
  %55 = fneg <4 x float> %30
  %56 = fmul <4 x float> %30, %55
  %57 = fmul <4 x float> %56, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %58 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %57) #6
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> <float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000>, <4 x float> <float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000>) #7
  %60 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %59, <4 x float> <float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000>) #7
  %61 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %60, <4 x float> <float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000>) #7
  %62 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %61, <4 x float> <float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000>) #7
  %63 = fmul <4 x float> %58, <float 0xBFD9884540000000, float 0xBFD9884540000000, float 0xBFD9884540000000, float 0xBFD9884540000000>
  %64 = fmul <4 x float> %54, %63
  %65 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %64, <4 x float> %62, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %66 = fcmp uge <4 x float> %30, zeroinitializer
  %67 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %65
  %68 = select <4 x i1> %66, <4 x float> %65, <4 x float> %67
  %69 = fneg <4 x float> %34
  %70 = fmul <4 x float> %68, %69
  %71 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %51, <4 x float> %70)
  %72 = getelementptr inbounds <4 x float>, <4 x float>* %2, i64 %9
  store <4 x float> %71, <4 x float>* %72, align 16, !tbaa !4
  %73 = tail call <4 x float> @_Z4fabsDv4_f(<4 x float> %38) #6
  %74 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %73, <4 x float> <float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %75 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %74, !fpmath !3
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> <float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000>, <4 x float> <float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000>) #7
  %77 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %76, <4 x float> <float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000>) #7
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %77, <4 x float> <float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000>) #7
  %79 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %75, <4 x float> %78, <4 x float> <float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000>) #7
  %80 = fmul <4 x float> %46, %75
  %81 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %80, <4 x float> %79, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %82 = fcmp ule <4 x float> %29, zeroinitializer
  %83 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %81
  %84 = select <4 x i1> %82, <4 x float> %81, <4 x float> %83
  %85 = tail call <4 x float> @_Z4fabsDv4_f(<4 x float> %55) #6
  %86 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> <float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000, float 0x3FCDA67120000000>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %87 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %86, !fpmath !3
  %88 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %87, <4 x float> <float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000, float 0x3FF548CDE0000000>, <4 x float> <float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000, float 0xBFFD23DD40000000>) #7
  %89 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %87, <4 x float> %88, <4 x float> <float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000, float 0x3FFC80EF00000000>) #7
  %90 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %87, <4 x float> %89, <4 x float> <float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000, float 0xBFD6D1F0E0000000>) #7
  %91 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %87, <4 x float> %90, <4 x float> <float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000, float 0x3FD470BF40000000>) #7
  %92 = fmul <4 x float> %63, %87
  %93 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %92, <4 x float> %91, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>) #7
  %94 = fcmp ule <4 x float> %30, zeroinitializer
  %95 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %93
  %96 = select <4 x i1> %94, <4 x float> %93, <4 x float> %95
  %97 = fneg <4 x float> %14
  %98 = fmul <4 x float> %84, %97
  %99 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %34, <4 x float> %96, <4 x float> %98)
  %100 = getelementptr inbounds <4 x float>, <4 x float>* %3, i64 %9
  store <4 x float> %99, <4 x float>* %100, align 16, !tbaa !4
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z4sqrtDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z3logDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: convergent nofree nounwind uwtable writeonly
define dso_local void @phi_scalar(float %0, float* nocapture %1) local_unnamed_addr #4 {
  %3 = tail call float @_Z4fabsf(float %0) #6
  %4 = tail call float @llvm.fmuladd.f32(float %3, float 0x3FCDA67120000000, float 1.000000e+00)
  %5 = fdiv float 1.000000e+00, %4, !fpmath !3
  %6 = fneg float %0
  %7 = fmul float %6, %0
  %8 = fmul float %7, 5.000000e-01
  %9 = tail call float @_Z3expf(float %8) #6
  %10 = tail call float @llvm.fmuladd.f32(float %5, float 0x3FF548CDE0000000, float 0xBFFD23DD40000000)
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %10, float 0x3FFC80EF00000000)
  %12 = tail call float @llvm.fmuladd.f32(float %5, float %11, float 0xBFD6D1F0E0000000)
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %12, float 0x3FD470BF40000000)
  %14 = fmul float %9, 0xBFD9884540000000
  %15 = fmul float %5, %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %13, float 1.000000e+00)
  %17 = fcmp olt float %0, 0.000000e+00
  %18 = fsub float 1.000000e+00, %16
  %19 = select i1 %17, float %18, float %16
  store float %19, float* %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z4fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z3expf(float) local_unnamed_addr #1

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @blackScholes_scalar(float* nocapture readonly %0, i32 %1, float* nocapture %2, float* nocapture %3) local_unnamed_addr #5 !kernel_arg_addr_space !7 !kernel_arg_access_qual !8 !kernel_arg_type !14 !kernel_arg_base_type !14 !kernel_arg_type_qual !11 {
  %5 = tail call i64 @_Z13get_global_idj(i32 0) #6
  %6 = tail call i64 @_Z13get_global_idj(i32 1) #6
  %7 = sext i32 %1 to i64
  %8 = mul i64 %6, %7
  %9 = add i64 %8, %5
  %10 = getelementptr inbounds float, float* %0, i64 %9
  %11 = load float, float* %10, align 4, !tbaa !12
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %12, 1.000000e+02
  %14 = tail call float @llvm.fmuladd.f32(float %11, float 1.000000e+01, float %13)
  %15 = fmul float %12, 1.000000e+01
  %16 = fadd float %11, %15
  %17 = fmul float %12, 0x3FA99999A0000000
  %18 = tail call float @llvm.fmuladd.f32(float %11, float 0x3F847AE140000000, float %17)
  %19 = fmul float %12, 0x3FB99999A0000000
  %20 = tail call float @llvm.fmuladd.f32(float %11, float 0x3F847AE140000000, float %19)
  %21 = tail call float @_Z4sqrtf(float %16) #6
  %22 = fmul float %21, %20
  %23 = fdiv float %14, %14, !fpmath !3
  %24 = tail call float @_Z3logf(float %23) #6
  %25 = fmul float %20, %20
  %26 = fmul float %25, 5.000000e-01
  %27 = fadd float %18, %26
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %16, float %24)
  %29 = fdiv float %28, %22, !fpmath !3
  %30 = fsub float %29, %22
  %31 = fneg float %18
  %32 = fmul float %16, %31
  %33 = tail call float @_Z3expf(float %32) #6
  %34 = fmul float %14, %33
  %35 = tail call float @_Z4fabsf(float %29) #6
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 0x3FCDA67120000000, float 1.000000e+00) #7
  %37 = fdiv float 1.000000e+00, %36, !fpmath !3
  %38 = fneg float %29
  %39 = fmul float %29, %38
  %40 = fmul float %39, 5.000000e-01
  %41 = tail call float @_Z3expf(float %40) #6
  %42 = tail call float @llvm.fmuladd.f32(float %37, float 0x3FF548CDE0000000, float 0xBFFD23DD40000000) #7
  %43 = tail call float @llvm.fmuladd.f32(float %37, float %42, float 0x3FFC80EF00000000) #7
  %44 = tail call float @llvm.fmuladd.f32(float %37, float %43, float 0xBFD6D1F0E0000000) #7
  %45 = tail call float @llvm.fmuladd.f32(float %37, float %44, float 0x3FD470BF40000000) #7
  %46 = fmul float %41, 0xBFD9884540000000
  %47 = fmul float %37, %46
  %48 = tail call float @llvm.fmuladd.f32(float %47, float %45, float 1.000000e+00) #7
  %49 = fcmp olt float %29, 0.000000e+00
  %50 = fsub float 1.000000e+00, %48
  %51 = select i1 %49, float %50, float %48
  %52 = tail call float @_Z4fabsf(float %30) #6
  %53 = tail call float @llvm.fmuladd.f32(float %52, float 0x3FCDA67120000000, float 1.000000e+00) #7
  %54 = fdiv float 1.000000e+00, %53, !fpmath !3
  %55 = fneg float %30
  %56 = fmul float %30, %55
  %57 = fmul float %56, 5.000000e-01
  %58 = tail call float @_Z3expf(float %57) #6
  %59 = tail call float @llvm.fmuladd.f32(float %54, float 0x3FF548CDE0000000, float 0xBFFD23DD40000000) #7
  %60 = tail call float @llvm.fmuladd.f32(float %54, float %59, float 0x3FFC80EF00000000) #7
  %61 = tail call float @llvm.fmuladd.f32(float %54, float %60, float 0xBFD6D1F0E0000000) #7
  %62 = tail call float @llvm.fmuladd.f32(float %54, float %61, float 0x3FD470BF40000000) #7
  %63 = fmul float %58, 0xBFD9884540000000
  %64 = fmul float %54, %63
  %65 = tail call float @llvm.fmuladd.f32(float %64, float %62, float 1.000000e+00) #7
  %66 = fcmp olt float %30, 0.000000e+00
  %67 = fsub float 1.000000e+00, %65
  %68 = select i1 %66, float %67, float %65
  %69 = fneg float %34
  %70 = fmul float %68, %69
  %71 = tail call float @llvm.fmuladd.f32(float %14, float %51, float %70)
  %72 = getelementptr inbounds float, float* %2, i64 %9
  store float %71, float* %72, align 4, !tbaa !12
  %73 = tail call float @_Z4fabsf(float %38) #6
  %74 = tail call float @llvm.fmuladd.f32(float %73, float 0x3FCDA67120000000, float 1.000000e+00) #7
  %75 = fdiv float 1.000000e+00, %74, !fpmath !3
  %76 = tail call float @llvm.fmuladd.f32(float %75, float 0x3FF548CDE0000000, float 0xBFFD23DD40000000) #7
  %77 = tail call float @llvm.fmuladd.f32(float %75, float %76, float 0x3FFC80EF00000000) #7
  %78 = tail call float @llvm.fmuladd.f32(float %75, float %77, float 0xBFD6D1F0E0000000) #7
  %79 = tail call float @llvm.fmuladd.f32(float %75, float %78, float 0x3FD470BF40000000) #7
  %80 = fmul float %46, %75
  %81 = tail call float @llvm.fmuladd.f32(float %80, float %79, float 1.000000e+00) #7
  %82 = fcmp ogt float %29, 0.000000e+00
  %83 = fsub float 1.000000e+00, %81
  %84 = select i1 %82, float %83, float %81
  %85 = tail call float @_Z4fabsf(float %55) #6
  %86 = tail call float @llvm.fmuladd.f32(float %85, float 0x3FCDA67120000000, float 1.000000e+00) #7
  %87 = fdiv float 1.000000e+00, %86, !fpmath !3
  %88 = tail call float @llvm.fmuladd.f32(float %87, float 0x3FF548CDE0000000, float 0xBFFD23DD40000000) #7
  %89 = tail call float @llvm.fmuladd.f32(float %87, float %88, float 0x3FFC80EF00000000) #7
  %90 = tail call float @llvm.fmuladd.f32(float %87, float %89, float 0xBFD6D1F0E0000000) #7
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %90, float 0x3FD470BF40000000) #7
  %92 = fmul float %63, %87
  %93 = tail call float @llvm.fmuladd.f32(float %92, float %91, float 1.000000e+00) #7
  %94 = fcmp ogt float %30, 0.000000e+00
  %95 = fsub float 1.000000e+00, %93
  %96 = select i1 %94, float %95, float %93
  %97 = fneg float %14
  %98 = fmul float %84, %97
  %99 = tail call float @llvm.fmuladd.f32(float %34, float %96, float %98)
  %100 = getelementptr inbounds float, float* %3, i64 %9
  store float %99, float* %100, align 4, !tbaa !12
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z4sqrtf(float) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z3logf(float) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nofree nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { convergent nounwind readnone }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
!3 = !{float 2.500000e+00}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{i32 1, i32 0, i32 1, i32 1}
!8 = !{!"none", !"none", !"none", !"none"}
!9 = !{!"float4*", !"int", !"float4*", !"float4*"}
!10 = !{!"float __attribute__((ext_vector_type(4)))*", !"int", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*"}
!11 = !{!"const", !"", !"", !""}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!"float*", !"int", !"float*", !"float*"}
