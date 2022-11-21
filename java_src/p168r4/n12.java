package p168r4;

import android.media.AudioFormat;
import android.media.AudioTrack;
import android.media.AudioTrack$Builder;
/* renamed from: r4.n12 */
/* loaded from: classes2.dex */
public final class n12 {

    /* renamed from: a */
    public final C5713e5 f28082a;

    /* renamed from: b */
    public final int f28083b;

    /* renamed from: c */
    public final int f28084c = 0;

    /* renamed from: d */
    public final int f28085d;

    /* renamed from: e */
    public final int f28086e;

    /* renamed from: f */
    public final int f28087f;

    /* renamed from: g */
    public final int f28088g;

    /* renamed from: h */
    public final int f28089h;

    /* renamed from: i */
    public final ja1[] f28090i;

    /* renamed from: a */
    public final long m9212a(long j) {
        return (j * 1000000) / this.f28086e;
    }

    /* renamed from: b */
    public final long m9211b(long j) {
        return (j * this.f28086e) / 1000000;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.media.AudioTrack$Builder] */
    /* renamed from: c */
    public final AudioTrack m9210c(boolean z, dg3 dg3Var, int i) {
        AudioTrack audioTrack;
        AudioFormat build;
        AudioFormat build2;
        AudioTrack$Builder offloadedPlayback;
        try {
            int i2 = C5979lc.f27164a;
            if (i2 >= 29) {
                int i3 = this.f28086e;
                build2 = 
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x000d: INVOKE  (r11v11 'build2' android.media.AudioFormat) = 
                      (wrap: android.media.AudioFormat$Builder : 0x000d: INVOKE  
                      (wrap: android.media.AudioFormat$Builder : 0x0009: INVOKE  
                      (wrap: android.media.AudioFormat$Builder : 0x0005: INVOKE  
                      (wrap: ?? : 0x0002: CONSTRUCTOR   call: android.media.AudioFormat$Builder.<init>():void type: CONSTRUCTOR)
                      (r11v10 'i3' int)
                     type: VIRTUAL call: android.media.AudioFormat$Builder.setSampleRate(int):android.media.AudioFormat$Builder)
                      (wrap: int : 0x0009: IGET  (r0v4 int A[REMOVE]) = (r10v0 'this' r4.n12 A[IMMUTABLE_TYPE, THIS]) r4.n12.f int)
                     type: VIRTUAL call: android.media.AudioFormat$Builder.setChannelMask(int):android.media.AudioFormat$Builder)
                      (wrap: int : 0x000b: IGET  (r2v6 int A[REMOVE]) = (r10v0 'this' r4.n12 A[IMMUTABLE_TYPE, THIS]) r4.n12.g int)
                     type: VIRTUAL call: android.media.AudioFormat$Builder.setEncoding(int):android.media.AudioFormat$Builder)
                     type: VIRTUAL call: android.media.AudioFormat$Builder.build():android.media.AudioFormat in method: r4.n12.c(boolean, r4.dg3, int):android.media.AudioTrack, file: classes2.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:287)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:250)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:91)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:123)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:80)
                    	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:302)
                    	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:296)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:275)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:377)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:306)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:272)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: android.media.AudioFormat$Builder, state: NOT_LOADED
                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:303)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:696)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:395)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:141)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
                    	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:93)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:805)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:399)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:141)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
                    	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:93)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:805)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:399)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:141)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
                    	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:93)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:805)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:399)
                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:141)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:117)
                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:104)
                    	at jadx.core.codegen.InsnGen.addArgDot(InsnGen.java:93)
                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:805)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:399)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:280)
                    	... 27 more
                    */
                /*
                    this = this;
                    int r11 = p168r4.C5979lc.f27164a     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r0 = 29
                    r1 = 1
                    if (r11 < r0) goto L3a
                    int r11 = r10.f28086e     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r0 = r10.f28087f     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r2 = r10.f28088g     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioFormat r11 = p168r4.bb2.m12814x(r11, r0, r2)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioAttributes r12 = r12.m12138a()     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack$Builder r0 = new android.media.AudioTrack$Builder     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r0.<init>()     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack$Builder r12 = r0.setAudioAttributes(r12)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack$Builder r11 = r12.setAudioFormat(r11)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack$Builder r11 = r11.setTransferMode(r1)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r12 = r10.f28089h     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack$Builder r11 = r11.setBufferSizeInBytes(r12)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack$Builder r11 = r11.setSessionId(r13)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r12 = 0
                    android.media.AudioTrack$Builder r11 = p168r4.m12.m9522a(r11, r12)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioTrack r11 = r11.build()     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    goto L7d
                L3a:
                    r0 = 21
                    if (r11 < r0) goto L57
                    android.media.AudioTrack r11 = new android.media.AudioTrack     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioAttributes r3 = r12.m12138a()     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r12 = r10.f28086e     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r0 = r10.f28087f     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r2 = r10.f28088g     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    android.media.AudioFormat r4 = p168r4.bb2.m12814x(r12, r0, r2)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r5 = r10.f28089h     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r6 = 1
                    r2 = r11
                    r7 = r13
                    r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    goto L7d
                L57:
                    int r11 = r12.f22253a     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    if (r13 != 0) goto L6c
                    android.media.AudioTrack r11 = new android.media.AudioTrack     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r3 = 3
                    int r4 = r10.f28086e     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r5 = r10.f28087f     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r6 = r10.f28088g     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r7 = r10.f28089h     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r8 = 1
                    r2 = r11
                    r2.<init>(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    goto L7d
                L6c:
                    android.media.AudioTrack r11 = new android.media.AudioTrack     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r3 = 3
                    int r4 = r10.f28086e     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r5 = r10.f28087f     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r6 = r10.f28088g     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    int r7 = r10.f28089h     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                    r8 = 1
                    r2 = r11
                    r9 = r13
                    r2.<init>(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.IllegalArgumentException -> L98 java.lang.UnsupportedOperationException -> L9a
                L7d:
                    int r3 = r11.getState()
                    if (r3 != r1) goto L84
                    return r11
                L84:
                    r11.release()     // Catch: java.lang.Exception -> L87
                L87:
                    r4.yo1 r11 = new r4.yo1
                    int r4 = r10.f28086e
                    int r5 = r10.f28087f
                    int r6 = r10.f28089h
                    r4.e5 r7 = r10.f28082a
                    r8 = 0
                    r9 = 0
                    r2 = r11
                    r2.<init>(r3, r4, r5, r6, r7, r8, r9)
                    throw r11
                L98:
                    r11 = move-exception
                    goto L9b
                L9a:
                    r11 = move-exception
                L9b:
                    r7 = r11
                    r4.yo1 r11 = new r4.yo1
                    r1 = 0
                    int r2 = r10.f28086e
                    int r3 = r10.f28087f
                    int r4 = r10.f28089h
                    r4.e5 r5 = r10.f28082a
                    r6 = 0
                    r0 = r11
                    r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                    throw r11
                */
                throw new UnsupportedOperationException("Method not decompiled: p168r4.n12.m9210c(boolean, r4.dg3, int):android.media.AudioTrack");
            }

            public n12(C5713e5 c5713e5, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, ja1[] ja1VarArr) {
                this.f28082a = c5713e5;
                this.f28083b = i;
                this.f28085d = i3;
                this.f28086e = i4;
                this.f28087f = i5;
                this.f28088g = i6;
                this.f28090i = ja1VarArr;
                int minBufferSize = AudioTrack.getMinBufferSize(i4, i5, i6);
                C5903ja.m10371d(minBufferSize != -2);
                this.f28089h = C5979lc.m9705c0(minBufferSize * 4, ((int) m9211b(250000L)) * i3, Math.max(minBufferSize, ((int) m9211b(750000L)) * i3));
            }
        }
