; ModuleID = 'Mandelbrot_Kernels.cl'
source_filename = "Mandelbrot_Kernels.cl"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable writeonly
define dso_local spir_kernel void @mandelbrot_vector_float(<4 x i8>* nocapture %0, float %1, float %2, float %3, float %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
  %9 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %10 = trunc i64 %9 to i32
  %11 = sdiv i32 %6, 4
  %12 = srem i32 %10, %11
  %13 = sdiv i32 %10, %11
  %14 = shl nsw i32 %12, 2
  %15 = or i32 %14, 1
  %16 = or i32 %14, 2
  %17 = or i32 %14, 3
  %18 = sitofp i32 %14 to float
  %19 = tail call float @llvm.fmuladd.f32(float %3, float %18, float %1)
  %20 = insertelement <4 x float> undef, float %19, i64 0
  %21 = sitofp i32 %15 to float
  %22 = tail call float @llvm.fmuladd.f32(float %3, float %21, float %1)
  %23 = insertelement <4 x float> %20, float %22, i64 1
  %24 = sitofp i32 %16 to float
  %25 = tail call float @llvm.fmuladd.f32(float %3, float %24, float %1)
  %26 = insertelement <4 x float> %23, float %25, i64 2
  %27 = sitofp i32 %17 to float
  %28 = tail call float @llvm.fmuladd.f32(float %3, float %27, float %1)
  %29 = insertelement <4 x float> %26, float %28, i64 3
  %30 = sitofp i32 %13 to float
  %31 = tail call float @llvm.fmuladd.f32(float %4, float %30, float %2)
  %32 = insertelement <4 x float> undef, float %31, i64 0
  %33 = shufflevector <4 x float> %32, <4 x float> undef, <4 x i32> zeroinitializer
  %34 = fmul float %31, %31
  %35 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %34)
  %36 = fcmp ole float %35, 4.000000e+00
  %37 = zext i1 %36 to i32
  %38 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %34)
  %39 = fcmp ole float %38, 4.000000e+00
  %40 = zext i1 %39 to i32
  %41 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %34)
  %42 = fcmp ole float %41, 4.000000e+00
  %43 = zext i1 %42 to i32
  %44 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %34)
  %45 = fcmp ole float %44, 4.000000e+00
  %46 = zext i1 %45 to i32
  %47 = or i1 %36, %39
  %48 = or i1 %47, %42
  %49 = or i1 %48, %45
  %50 = icmp ne i32 %5, 0
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %197

52:                                               ; preds = %8, %52
  %53 = phi <4 x float> [ %188, %52 ], [ %33, %8 ]
  %54 = phi <4 x float> [ %176, %52 ], [ %29, %8 ]
  %55 = phi <4 x i32> [ %190, %52 ], [ zeroinitializer, %8 ]
  %56 = phi i32 [ %191, %52 ], [ 0, %8 ]
  %57 = fneg <4 x float> %53
  %58 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %54, <4 x float> %54, <4 x float> %29) #3
  %59 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %57, <4 x float> %53, <4 x float> %58) #3
  %60 = fmul <4 x float> %54, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %61 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %60, <4 x float> %53, <4 x float> %33) #3
  %62 = fneg <4 x float> %61
  %63 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %59, <4 x float> %59, <4 x float> %29) #3
  %64 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %62, <4 x float> %61, <4 x float> %63) #3
  %65 = fmul <4 x float> %59, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %66 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %65, <4 x float> %61, <4 x float> %33) #3
  %67 = fneg <4 x float> %66
  %68 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %64, <4 x float> %64, <4 x float> %29) #3
  %69 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %67, <4 x float> %66, <4 x float> %68) #3
  %70 = fmul <4 x float> %64, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %71 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %70, <4 x float> %66, <4 x float> %33) #3
  %72 = fneg <4 x float> %71
  %73 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %69, <4 x float> %69, <4 x float> %29) #3
  %74 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %72, <4 x float> %71, <4 x float> %73) #3
  %75 = fmul <4 x float> %69, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %76 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %75, <4 x float> %71, <4 x float> %33) #3
  %77 = fneg <4 x float> %76
  %78 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %74, <4 x float> %74, <4 x float> %29) #3
  %79 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %77, <4 x float> %76, <4 x float> %78) #3
  %80 = fmul <4 x float> %74, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %81 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %80, <4 x float> %76, <4 x float> %33) #3
  %82 = fneg <4 x float> %81
  %83 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %79, <4 x float> %79, <4 x float> %29) #3
  %84 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %82, <4 x float> %81, <4 x float> %83) #3
  %85 = fmul <4 x float> %79, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %86 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %85, <4 x float> %81, <4 x float> %33) #3
  %87 = fneg <4 x float> %86
  %88 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %84, <4 x float> %84, <4 x float> %29) #3
  %89 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %87, <4 x float> %86, <4 x float> %88) #3
  %90 = fmul <4 x float> %84, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %91 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %90, <4 x float> %86, <4 x float> %33) #3
  %92 = fneg <4 x float> %91
  %93 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %89, <4 x float> %89, <4 x float> %29) #3
  %94 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %92, <4 x float> %91, <4 x float> %93) #3
  %95 = fmul <4 x float> %89, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %96 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %95, <4 x float> %91, <4 x float> %33) #3
  %97 = fneg <4 x float> %96
  %98 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %94, <4 x float> %94, <4 x float> %29) #3
  %99 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %97, <4 x float> %96, <4 x float> %98) #3
  %100 = fmul <4 x float> %94, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %101 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %100, <4 x float> %96, <4 x float> %33) #3
  %102 = fneg <4 x float> %101
  %103 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %99, <4 x float> %99, <4 x float> %29) #3
  %104 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %102, <4 x float> %101, <4 x float> %103) #3
  %105 = fmul <4 x float> %99, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %106 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %105, <4 x float> %101, <4 x float> %33) #3
  %107 = fneg <4 x float> %106
  %108 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %104, <4 x float> %104, <4 x float> %29) #3
  %109 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %107, <4 x float> %106, <4 x float> %108) #3
  %110 = fmul <4 x float> %104, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %111 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %110, <4 x float> %106, <4 x float> %33) #3
  %112 = fneg <4 x float> %111
  %113 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %109, <4 x float> %109, <4 x float> %29) #3
  %114 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %112, <4 x float> %111, <4 x float> %113) #3
  %115 = fmul <4 x float> %109, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %116 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %115, <4 x float> %111, <4 x float> %33) #3
  %117 = fneg <4 x float> %116
  %118 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %114, <4 x float> %114, <4 x float> %29) #3
  %119 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %117, <4 x float> %116, <4 x float> %118) #3
  %120 = fmul <4 x float> %114, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %121 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %120, <4 x float> %116, <4 x float> %33) #3
  %122 = fneg <4 x float> %121
  %123 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %119, <4 x float> %119, <4 x float> %29) #3
  %124 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %122, <4 x float> %121, <4 x float> %123) #3
  %125 = fmul <4 x float> %119, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %126 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %125, <4 x float> %121, <4 x float> %33) #3
  %127 = fneg <4 x float> %126
  %128 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %124, <4 x float> %124, <4 x float> %29) #3
  %129 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %127, <4 x float> %126, <4 x float> %128) #3
  %130 = fmul <4 x float> %124, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %131 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %130, <4 x float> %126, <4 x float> %33) #3
  %132 = fneg <4 x float> %131
  %133 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %129, <4 x float> %129, <4 x float> %29) #3
  %134 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %132, <4 x float> %131, <4 x float> %133) #3
  %135 = fmul <4 x float> %129, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %136 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %135, <4 x float> %131, <4 x float> %33) #3
  %137 = extractelement <4 x float> %134, i64 0
  %138 = extractelement <4 x float> %136, i64 0
  %139 = fmul float %138, %138
  %140 = tail call float @llvm.fmuladd.f32(float %137, float %137, float %139)
  %141 = fcmp ole float %140, 4.000000e+00
  %142 = zext i1 %141 to i32
  %143 = insertelement <4 x i32> undef, i32 %142, i64 0
  %144 = extractelement <4 x float> %134, i64 1
  %145 = extractelement <4 x float> %136, i64 1
  %146 = fmul float %145, %145
  %147 = tail call float @llvm.fmuladd.f32(float %144, float %144, float %146)
  %148 = fcmp ole float %147, 4.000000e+00
  %149 = zext i1 %148 to i32
  %150 = insertelement <4 x i32> %143, i32 %149, i64 1
  %151 = extractelement <4 x float> %134, i64 2
  %152 = extractelement <4 x float> %136, i64 2
  %153 = fmul float %152, %152
  %154 = tail call float @llvm.fmuladd.f32(float %151, float %151, float %153)
  %155 = fcmp ole float %154, 4.000000e+00
  %156 = zext i1 %155 to i32
  %157 = insertelement <4 x i32> %150, i32 %156, i64 2
  %158 = extractelement <4 x float> %134, i64 3
  %159 = extractelement <4 x float> %136, i64 3
  %160 = fmul float %159, %159
  %161 = tail call float @llvm.fmuladd.f32(float %158, float %158, float %160)
  %162 = fcmp ole float %161, 4.000000e+00
  %163 = zext i1 %162 to i32
  %164 = insertelement <4 x i32> %157, i32 %163, i64 3
  %165 = extractelement <4 x float> %54, i64 0
  %166 = select i1 %141, float %137, float %165
  %167 = insertelement <4 x float> undef, float %166, i64 0
  %168 = extractelement <4 x float> %54, i64 1
  %169 = select i1 %148, float %144, float %168
  %170 = insertelement <4 x float> %167, float %169, i64 1
  %171 = extractelement <4 x float> %54, i64 2
  %172 = select i1 %155, float %151, float %171
  %173 = insertelement <4 x float> %170, float %172, i64 2
  %174 = extractelement <4 x float> %54, i64 3
  %175 = select i1 %162, float %158, float %174
  %176 = insertelement <4 x float> %173, float %175, i64 3
  %177 = extractelement <4 x float> %53, i64 0
  %178 = select i1 %141, float %138, float %177
  %179 = insertelement <4 x float> undef, float %178, i64 0
  %180 = extractelement <4 x float> %53, i64 1
  %181 = select i1 %148, float %145, float %180
  %182 = insertelement <4 x float> %179, float %181, i64 1
  %183 = extractelement <4 x float> %53, i64 2
  %184 = select i1 %155, float %152, float %183
  %185 = insertelement <4 x float> %182, float %184, i64 2
  %186 = extractelement <4 x float> %53, i64 3
  %187 = select i1 %162, float %159, float %186
  %188 = insertelement <4 x float> %185, float %187, i64 3
  %189 = shl <4 x i32> %164, <i32 4, i32 4, i32 4, i32 4>
  %190 = add <4 x i32> %189, %55
  %191 = add i32 %56, 16
  %192 = or i1 %141, %148
  %193 = or i1 %192, %155
  %194 = or i1 %193, %162
  %195 = icmp ult i32 %191, %5
  %196 = and i1 %195, %194
  br i1 %196, label %52, label %197

197:                                              ; preds = %52, %8
  %198 = phi <4 x i32> [ zeroinitializer, %8 ], [ %190, %52 ]
  %199 = phi <4 x float> [ %29, %8 ], [ %176, %52 ]
  %200 = phi <4 x float> [ %33, %8 ], [ %188, %52 ]
  %201 = phi i32 [ %37, %8 ], [ %142, %52 ]
  %202 = phi i32 [ %40, %8 ], [ %149, %52 ]
  %203 = phi i32 [ %43, %8 ], [ %156, %52 ]
  %204 = phi i32 [ %46, %8 ], [ %163, %52 ]
  %205 = and i32 %201, %202
  %206 = and i32 %205, %203
  %207 = and i32 %206, %204
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %290

209:                                              ; preds = %197, %209
  %210 = phi i32 [ %260, %209 ], [ 16, %197 ]
  %211 = phi <4 x i32> [ %259, %209 ], [ %198, %197 ]
  %212 = phi <4 x float> [ %272, %209 ], [ %199, %197 ]
  %213 = phi <4 x float> [ %284, %209 ], [ %200, %197 ]
  %214 = extractelement <4 x float> %212, i64 0
  %215 = extractelement <4 x float> %213, i64 0
  %216 = fmul float %215, %215
  %217 = tail call float @llvm.fmuladd.f32(float %214, float %214, float %216)
  %218 = fcmp ole float %217, 4.000000e+00
  %219 = extractelement <4 x i32> %211, i64 0
  %220 = icmp ult i32 %219, %5
  %221 = and i1 %220, %218
  %222 = zext i1 %221 to i32
  %223 = insertelement <4 x i32> undef, i32 %222, i64 0
  %224 = extractelement <4 x float> %212, i64 1
  %225 = extractelement <4 x float> %213, i64 1
  %226 = fmul float %225, %225
  %227 = tail call float @llvm.fmuladd.f32(float %224, float %224, float %226)
  %228 = fcmp ole float %227, 4.000000e+00
  %229 = extractelement <4 x i32> %211, i64 1
  %230 = icmp ult i32 %229, %5
  %231 = and i1 %230, %228
  %232 = zext i1 %231 to i32
  %233 = insertelement <4 x i32> %223, i32 %232, i64 1
  %234 = extractelement <4 x float> %212, i64 2
  %235 = extractelement <4 x float> %213, i64 2
  %236 = fmul float %235, %235
  %237 = tail call float @llvm.fmuladd.f32(float %234, float %234, float %236)
  %238 = fcmp ole float %237, 4.000000e+00
  %239 = extractelement <4 x i32> %211, i64 2
  %240 = icmp ult i32 %239, %5
  %241 = and i1 %240, %238
  %242 = zext i1 %241 to i32
  %243 = insertelement <4 x i32> %233, i32 %242, i64 2
  %244 = extractelement <4 x float> %212, i64 3
  %245 = extractelement <4 x float> %213, i64 3
  %246 = fmul float %245, %245
  %247 = tail call float @llvm.fmuladd.f32(float %244, float %244, float %246)
  %248 = fcmp ole float %247, 4.000000e+00
  %249 = extractelement <4 x i32> %211, i64 3
  %250 = icmp ult i32 %249, %5
  %251 = and i1 %250, %248
  %252 = zext i1 %251 to i32
  %253 = insertelement <4 x i32> %243, i32 %252, i64 3
  %254 = fneg <4 x float> %213
  %255 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %212, <4 x float> %212, <4 x float> %29) #3
  %256 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %254, <4 x float> %213, <4 x float> %255) #3
  %257 = fmul <4 x float> %212, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %258 = tail call <4 x float> @_Z3madDv4_fS_S_(<4 x float> %257, <4 x float> %213, <4 x float> %33) #3
  %259 = add <4 x i32> %253, %211
  %260 = add nsw i32 %210, -1
  %261 = extractelement <4 x float> %256, i64 0
  %262 = select i1 %221, float %261, float %214
  %263 = insertelement <4 x float> undef, float %262, i64 0
  %264 = extractelement <4 x float> %256, i64 1
  %265 = select i1 %231, float %264, float %224
  %266 = insertelement <4 x float> %263, float %265, i64 1
  %267 = extractelement <4 x float> %256, i64 2
  %268 = select i1 %241, float %267, float %234
  %269 = insertelement <4 x float> %266, float %268, i64 2
  %270 = extractelement <4 x float> %256, i64 3
  %271 = select i1 %251, float %270, float %244
  %272 = insertelement <4 x float> %269, float %271, i64 3
  %273 = extractelement <4 x float> %258, i64 0
  %274 = select i1 %221, float %273, float %215
  %275 = insertelement <4 x float> undef, float %274, i64 0
  %276 = extractelement <4 x float> %258, i64 1
  %277 = select i1 %231, float %276, float %225
  %278 = insertelement <4 x float> %275, float %277, i64 1
  %279 = extractelement <4 x float> %258, i64 2
  %280 = select i1 %241, float %279, float %235
  %281 = insertelement <4 x float> %278, float %280, i64 2
  %282 = extractelement <4 x float> %258, i64 3
  %283 = select i1 %251, float %282, float %245
  %284 = insertelement <4 x float> %281, float %283, i64 3
  %285 = or i1 %221, %231
  %286 = or i1 %241, %285
  %287 = or i1 %251, %286
  %288 = icmp ne i32 %260, 0
  %289 = and i1 %288, %287
  br i1 %289, label %209, label %290

290:                                              ; preds = %209, %197
  %291 = phi <4 x i32> [ %198, %197 ], [ %259, %209 ]
  %292 = phi <4 x float> [ %199, %197 ], [ %272, %209 ]
  %293 = phi <4 x float> [ %200, %197 ], [ %284, %209 ]
  %294 = extractelement <4 x i32> %291, i64 0
  %295 = sitofp i32 %294 to float
  %296 = fadd float %295, 1.000000e+00
  %297 = extractelement <4 x float> %292, i64 0
  %298 = extractelement <4 x float> %293, i64 0
  %299 = fmul float %298, %298
  %300 = tail call float @llvm.fmuladd.f32(float %297, float %297, float %299)
  %301 = tail call float @_Z11native_log2f(float %300) #3
  %302 = tail call float @_Z11native_log2f(float %301) #3
  %303 = fsub float %296, %302
  %304 = extractelement <4 x i32> %291, i64 1
  %305 = sitofp i32 %304 to float
  %306 = fadd float %305, 1.000000e+00
  %307 = extractelement <4 x float> %292, i64 1
  %308 = extractelement <4 x float> %293, i64 1
  %309 = fmul float %308, %308
  %310 = tail call float @llvm.fmuladd.f32(float %307, float %307, float %309)
  %311 = tail call float @_Z11native_log2f(float %310) #3
  %312 = tail call float @_Z11native_log2f(float %311) #3
  %313 = fsub float %306, %312
  %314 = extractelement <4 x i32> %291, i64 2
  %315 = sitofp i32 %314 to float
  %316 = fadd float %315, 1.000000e+00
  %317 = extractelement <4 x float> %292, i64 2
  %318 = extractelement <4 x float> %293, i64 2
  %319 = fmul float %318, %318
  %320 = tail call float @llvm.fmuladd.f32(float %317, float %317, float %319)
  %321 = tail call float @_Z11native_log2f(float %320) #3
  %322 = tail call float @_Z11native_log2f(float %321) #3
  %323 = fsub float %316, %322
  %324 = extractelement <4 x i32> %291, i64 3
  %325 = sitofp i32 %324 to float
  %326 = fadd float %325, 1.000000e+00
  %327 = extractelement <4 x float> %292, i64 3
  %328 = extractelement <4 x float> %293, i64 3
  %329 = fmul float %328, %328
  %330 = tail call float @llvm.fmuladd.f32(float %327, float %327, float %329)
  %331 = tail call float @_Z11native_log2f(float %330) #3
  %332 = tail call float @_Z11native_log2f(float %331) #3
  %333 = fsub float %326, %332
  %334 = fmul float %303, 2.000000e+00
  %335 = fmul float %334, 0x400921FF20000000
  %336 = fmul float %335, 3.906250e-03
  %337 = tail call float @_Z10native_cosf(float %336) #3
  %338 = fadd float %337, 1.000000e+00
  %339 = fmul float %338, 5.000000e-01
  %340 = fmul float %339, 2.550000e+02
  %341 = fptoui float %340 to i8
  %342 = tail call float @llvm.fmuladd.f32(float %336, float 2.000000e+00, float 0x4000C154C0000000)
  %343 = tail call float @_Z10native_cosf(float %342) #3
  %344 = fadd float %343, 1.000000e+00
  %345 = fmul float %344, 5.000000e-01
  %346 = fmul float %345, 2.550000e+02
  %347 = fptoui float %346 to i8
  %348 = fadd float %336, 0xC000C154C0000000
  %349 = tail call float @_Z10native_cosf(float %348) #3
  %350 = fadd float %349, 1.000000e+00
  %351 = fmul float %350, 5.000000e-01
  %352 = fmul float %351, 2.550000e+02
  %353 = fptoui float %352 to i8
  %354 = insertelement <4 x i8> <i8 undef, i8 undef, i8 undef, i8 -1>, i8 %341, i64 0
  %355 = insertelement <4 x i8> %354, i8 %347, i64 1
  %356 = insertelement <4 x i8> %355, i8 %353, i64 2
  %357 = icmp eq i32 %294, %5
  %358 = select i1 %357, <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, <4 x i8> %356
  %359 = icmp ne i32 %7, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %290
  %361 = trunc i32 %294 to i8
  %362 = insertelement <4 x i8> undef, i8 %361, i64 0
  %363 = lshr i32 %294, 8
  %364 = trunc i32 %363 to i8
  %365 = insertelement <4 x i8> %362, i8 %364, i64 1
  %366 = lshr i32 %294, 16
  %367 = trunc i32 %366 to i8
  %368 = insertelement <4 x i8> %365, i8 %367, i64 2
  %369 = lshr i32 %294, 24
  %370 = trunc i32 %369 to i8
  %371 = insertelement <4 x i8> %368, i8 %370, i64 3
  br label %372

372:                                              ; preds = %360, %290
  %373 = phi <4 x i8> [ %371, %360 ], [ %358, %290 ]
  %374 = shl nsw i32 %10, 2
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds <4 x i8>, <4 x i8>* %0, i64 %375
  store <4 x i8> %373, <4 x i8>* %376, align 4, !tbaa !8
  %377 = fmul float %313, 2.000000e+00
  %378 = fmul float %377, 0x400921FF20000000
  %379 = fmul float %378, 3.906250e-03
  %380 = tail call float @_Z10native_cosf(float %379) #3
  %381 = fadd float %380, 1.000000e+00
  %382 = fmul float %381, 5.000000e-01
  %383 = fmul float %382, 2.550000e+02
  %384 = fptoui float %383 to i8
  %385 = tail call float @llvm.fmuladd.f32(float %379, float 2.000000e+00, float 0x4000C154C0000000)
  %386 = tail call float @_Z10native_cosf(float %385) #3
  %387 = fadd float %386, 1.000000e+00
  %388 = fmul float %387, 5.000000e-01
  %389 = fmul float %388, 2.550000e+02
  %390 = fptoui float %389 to i8
  %391 = fadd float %379, 0xC000C154C0000000
  %392 = tail call float @_Z10native_cosf(float %391) #3
  %393 = fadd float %392, 1.000000e+00
  %394 = fmul float %393, 5.000000e-01
  %395 = fmul float %394, 2.550000e+02
  %396 = fptoui float %395 to i8
  %397 = insertelement <4 x i8> <i8 undef, i8 undef, i8 undef, i8 -1>, i8 %384, i64 0
  %398 = insertelement <4 x i8> %397, i8 %390, i64 1
  %399 = insertelement <4 x i8> %398, i8 %396, i64 2
  %400 = icmp eq i32 %304, %5
  %401 = select i1 %400, <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, <4 x i8> %399
  br i1 %359, label %402, label %414

402:                                              ; preds = %372
  %403 = trunc i32 %304 to i8
  %404 = insertelement <4 x i8> undef, i8 %403, i64 0
  %405 = lshr i32 %304, 8
  %406 = trunc i32 %405 to i8
  %407 = insertelement <4 x i8> %404, i8 %406, i64 1
  %408 = lshr i32 %304, 16
  %409 = trunc i32 %408 to i8
  %410 = insertelement <4 x i8> %407, i8 %409, i64 2
  %411 = lshr i32 %304, 24
  %412 = trunc i32 %411 to i8
  %413 = insertelement <4 x i8> %410, i8 %412, i64 3
  br label %414

414:                                              ; preds = %402, %372
  %415 = phi <4 x i8> [ %413, %402 ], [ %401, %372 ]
  %416 = or i32 %374, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds <4 x i8>, <4 x i8>* %0, i64 %417
  store <4 x i8> %415, <4 x i8>* %418, align 4, !tbaa !8
  %419 = fmul float %323, 2.000000e+00
  %420 = fmul float %419, 0x400921FF20000000
  %421 = fmul float %420, 3.906250e-03
  %422 = tail call float @_Z10native_cosf(float %421) #3
  %423 = fadd float %422, 1.000000e+00
  %424 = fmul float %423, 5.000000e-01
  %425 = fmul float %424, 2.550000e+02
  %426 = fptoui float %425 to i8
  %427 = tail call float @llvm.fmuladd.f32(float %421, float 2.000000e+00, float 0x4000C154C0000000)
  %428 = tail call float @_Z10native_cosf(float %427) #3
  %429 = fadd float %428, 1.000000e+00
  %430 = fmul float %429, 5.000000e-01
  %431 = fmul float %430, 2.550000e+02
  %432 = fptoui float %431 to i8
  %433 = fadd float %421, 0xC000C154C0000000
  %434 = tail call float @_Z10native_cosf(float %433) #3
  %435 = fadd float %434, 1.000000e+00
  %436 = fmul float %435, 5.000000e-01
  %437 = fmul float %436, 2.550000e+02
  %438 = fptoui float %437 to i8
  %439 = insertelement <4 x i8> <i8 undef, i8 undef, i8 undef, i8 -1>, i8 %426, i64 0
  %440 = insertelement <4 x i8> %439, i8 %432, i64 1
  %441 = insertelement <4 x i8> %440, i8 %438, i64 2
  %442 = icmp eq i32 %314, %5
  %443 = select i1 %442, <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, <4 x i8> %441
  br i1 %359, label %444, label %456

444:                                              ; preds = %414
  %445 = trunc i32 %314 to i8
  %446 = insertelement <4 x i8> undef, i8 %445, i64 0
  %447 = lshr i32 %314, 8
  %448 = trunc i32 %447 to i8
  %449 = insertelement <4 x i8> %446, i8 %448, i64 1
  %450 = lshr i32 %314, 16
  %451 = trunc i32 %450 to i8
  %452 = insertelement <4 x i8> %449, i8 %451, i64 2
  %453 = lshr i32 %314, 24
  %454 = trunc i32 %453 to i8
  %455 = insertelement <4 x i8> %452, i8 %454, i64 3
  br label %456

456:                                              ; preds = %444, %414
  %457 = phi <4 x i8> [ %455, %444 ], [ %443, %414 ]
  %458 = or i32 %374, 2
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds <4 x i8>, <4 x i8>* %0, i64 %459
  store <4 x i8> %457, <4 x i8>* %460, align 4, !tbaa !8
  %461 = fmul float %333, 2.000000e+00
  %462 = fmul float %461, 0x400921FF20000000
  %463 = fmul float %462, 3.906250e-03
  %464 = tail call float @_Z10native_cosf(float %463) #3
  %465 = fadd float %464, 1.000000e+00
  %466 = fmul float %465, 5.000000e-01
  %467 = fmul float %466, 2.550000e+02
  %468 = fptoui float %467 to i8
  %469 = tail call float @llvm.fmuladd.f32(float %463, float 2.000000e+00, float 0x4000C154C0000000)
  %470 = tail call float @_Z10native_cosf(float %469) #3
  %471 = fadd float %470, 1.000000e+00
  %472 = fmul float %471, 5.000000e-01
  %473 = fmul float %472, 2.550000e+02
  %474 = fptoui float %473 to i8
  %475 = fadd float %463, 0xC000C154C0000000
  %476 = tail call float @_Z10native_cosf(float %475) #3
  %477 = fadd float %476, 1.000000e+00
  %478 = fmul float %477, 5.000000e-01
  %479 = fmul float %478, 2.550000e+02
  %480 = fptoui float %479 to i8
  %481 = insertelement <4 x i8> <i8 undef, i8 undef, i8 undef, i8 -1>, i8 %468, i64 0
  %482 = insertelement <4 x i8> %481, i8 %474, i64 1
  %483 = insertelement <4 x i8> %482, i8 %480, i64 2
  %484 = icmp eq i32 %324, %5
  %485 = select i1 %484, <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, <4 x i8> %483
  br i1 %359, label %486, label %498

486:                                              ; preds = %456
  %487 = trunc i32 %324 to i8
  %488 = insertelement <4 x i8> undef, i8 %487, i64 0
  %489 = lshr i32 %324, 8
  %490 = trunc i32 %489 to i8
  %491 = insertelement <4 x i8> %488, i8 %490, i64 1
  %492 = lshr i32 %324, 16
  %493 = trunc i32 %492 to i8
  %494 = insertelement <4 x i8> %491, i8 %493, i64 2
  %495 = lshr i32 %324, 24
  %496 = trunc i32 %495 to i8
  %497 = insertelement <4 x i8> %494, i8 %496, i64 3
  br label %498

498:                                              ; preds = %486, %456
  %499 = phi <4 x i8> [ %497, %486 ], [ %485, %456 ]
  %500 = or i32 %374, 3
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds <4 x i8>, <4 x i8>* %0, i64 %501
  store <4 x i8> %499, <4 x i8>* %502, align 4, !tbaa !8
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z3madDv4_fS_S_(<4 x float>, <4 x float>, <4 x float>) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z11native_log2f(float) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z10native_cosf(float) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0-4ubuntu1 "}
!3 = !{i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"uchar4*", !"float", !"float", !"float", !"float", !"uint", !"int", !"int"}
!6 = !{!"uchar __attribute__((ext_vector_type(4)))*", !"float", !"float", !"float", !"float", !"uint", !"int", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
