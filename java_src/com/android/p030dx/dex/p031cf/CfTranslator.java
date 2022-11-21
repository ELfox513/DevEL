package com.android.p030dx.dex.p031cf;

import com.android.p030dx.command.dexer.DxContext;
import com.android.p030dx.dex.DexOptions;
import com.android.p030dx.dex.code.DalvCode;
import com.android.p030dx.dex.code.RopTranslator;
import com.android.p030dx.dex.file.CallSiteIdsSection;
import com.android.p030dx.dex.file.ClassDefItem;
import com.android.p030dx.dex.file.DexFile;
import com.android.p030dx.dex.file.EncodedField;
import com.android.p030dx.dex.file.FieldIdsSection;
import com.android.p030dx.dex.file.MethodHandlesSection;
import com.android.p030dx.dex.file.MethodIdsSection;
import p111l1.C4557d;
import p129n1.C4695d;
import p147p1.C5305f;
import p156q1.InterfaceC5394d;
import p156q1.InterfaceC5395e;
import p201v1.C6971c;
import p210w1.C7136a;
import p210w1.C7153m;
import p210w1.C7165u;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7213e;
import p218x1.AbstractC7218g0;
import p218x1.C7209c0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7215f;
import p218x1.C7217g;
import p218x1.C7219h;
import p218x1.C7222j;
import p218x1.C7223k;
import p218x1.C7225m;
import p218x1.C7226n;
import p218x1.C7228p;
import p218x1.C7229q;
import p218x1.C7230r;
import p218x1.C7237y;
import p218x1.C7238z;
import p218x1.InterfaceC7206b;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.cf.CfTranslator */
/* loaded from: classes.dex */
public class CfTranslator {
    private static final boolean DEBUG = false;

    private CfTranslator() {
    }

    private static ClassDefItem translate0(DxContext dxContext, C5305f c5305f, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        C7212d0 mo13346b;
        dxContext.optimizerOptions.loadOptimizeLists(cfOptions.optimizeListFile, cfOptions.dontOptimizeListFile);
        C7214e0 m13570p = c5305f.m13570p();
        int mo13347a = c5305f.mo13347a() & (-33);
        if (cfOptions.positionInfo == 1) {
            mo13346b = null;
        } else {
            mo13346b = c5305f.mo13346b();
        }
        ClassDefItem classDefItem = new ClassDefItem(m13570p, mo13347a, c5305f.m13571o(), c5305f.m13577i(), mo13346b);
        C6971c classAnnotations = AttributeTranslator.getClassAnnotations(c5305f, cfOptions);
        if (classAnnotations.size() != 0) {
            classDefItem.setClassAnnotations(classAnnotations, dexFile);
        }
        FieldIdsSection fieldIds = dexFile.getFieldIds();
        MethodIdsSection methodIds = dexFile.getMethodIds();
        MethodHandlesSection methodHandles = dexFile.getMethodHandles();
        CallSiteIdsSection callSiteIds = dexFile.getCallSiteIds();
        processFields(c5305f, classDefItem, dexFile);
        processMethods(dxContext, c5305f, cfOptions, dexOptions, classDefItem, dexFile);
        InterfaceC7206b m13580f = c5305f.m13580f();
        int size = m13580f.size();
        for (int i = 0; i < size; i++) {
            AbstractC7204a mo2093h = m13580f.mo2093h(i);
            if (mo2093h instanceof C7238z) {
                methodIds.intern((AbstractC7213e) mo2093h);
            } else if (mo2093h instanceof C7229q) {
                methodIds.intern(((C7229q) mo2093h).m2073E());
            } else if (mo2093h instanceof C7226n) {
                fieldIds.intern((C7226n) mo2093h);
            } else if (mo2093h instanceof C7225m) {
                fieldIds.intern(((C7225m) mo2093h).m2078x());
            } else if (mo2093h instanceof C7237y) {
                methodHandles.intern((C7237y) mo2093h);
            } else if (mo2093h instanceof C7230r) {
                C7230r c7230r = (C7230r) mo2093h;
                C4695d.C4696a m15743x = c5305f.m13582d().m15743x(c7230r.m2064u());
                C7219h m2087u = C7219h.m2087u(m15743x.m15740b(), c7230r.m2072A(), m15743x.m15741a());
                c7230r.m2066H(c5305f.m13570p());
                c7230r.m2067F(m2087u);
                for (C7222j c7222j : c7230r.m2070C()) {
                    callSiteIds.intern(c7222j);
                }
            }
        }
        return classDefItem;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb A[Catch: RuntimeException -> 0x0165, TryCatch #0 {RuntimeException -> 0x0165, blocks: (B:5:0x001f, B:7:0x0043, B:15:0x0055, B:19:0x005d, B:21:0x009c, B:23:0x00a4, B:25:0x00ae, B:28:0x00b7, B:30:0x00bb, B:32:0x00c2, B:35:0x00ce), top: B:72:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0109 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0113 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0128 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0144 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0151 A[Catch: RuntimeException -> 0x0163, TryCatch #1 {RuntimeException -> 0x0163, blocks: (B:37:0x00ea, B:41:0x0103, B:43:0x0109, B:45:0x010f, B:47:0x0113, B:48:0x0117, B:50:0x0128, B:55:0x0133, B:57:0x013a, B:59:0x0144, B:60:0x0147, B:62:0x0151, B:63:0x0154, B:56:0x0137), top: B:74:0x00ea }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void processMethods(com.android.p030dx.command.dexer.DxContext r28, p147p1.C5305f r29, com.android.p030dx.dex.p031cf.CfOptions r30, com.android.p030dx.dex.DexOptions r31, com.android.p030dx.dex.file.ClassDefItem r32, com.android.p030dx.dex.file.DexFile r33) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p030dx.dex.p031cf.CfTranslator.processMethods(com.android.dx.command.dexer.DxContext, p1.f, com.android.dx.dex.cf.CfOptions, com.android.dx.dex.DexOptions, com.android.dx.dex.file.ClassDefItem, com.android.dx.dex.file.DexFile):void");
    }

    private static void updateDexStatistics(DxContext dxContext, CfOptions cfOptions, DexOptions dexOptions, C7165u c7165u, C7165u c7165u2, C7153m c7153m, int i, int i2) {
        DalvCode translate = RopTranslator.translate(c7165u, cfOptions.positionInfo, c7153m, i, dexOptions);
        DalvCode translate2 = RopTranslator.translate(c7165u2, cfOptions.positionInfo, c7153m, i, dexOptions);
        DalvCode.AssignIndicesCallback assignIndicesCallback = new DalvCode.AssignIndicesCallback() { // from class: com.android.dx.dex.cf.CfTranslator.1
            @Override // com.android.p030dx.dex.code.DalvCode.AssignIndicesCallback
            public int getIndex(AbstractC7204a abstractC7204a) {
                return 0;
            }
        };
        translate.assignIndices(assignIndicesCallback);
        translate2.assignIndices(assignIndicesCallback);
        dxContext.codeStatistics.updateDexStatistics(translate2, translate);
        dxContext.codeStatistics.updateOriginalByteCount(i2);
    }

    private static AbstractC7218g0 coerceConstant(AbstractC7218g0 abstractC7218g0, C7402c c7402c) {
        if (abstractC7218g0.getType().equals(c7402c)) {
            return abstractC7218g0;
        }
        int mo1523f = c7402c.mo1523f();
        if (mo1523f != 1) {
            if (mo1523f != 2) {
                if (mo1523f != 3) {
                    if (mo1523f == 8) {
                        return C7209c0.m2123B(((C7228p) abstractC7218g0).m2075B());
                    }
                    throw new UnsupportedOperationException("can't coerce " + abstractC7218g0 + " to " + c7402c);
                }
                return C7223k.m2080C(((C7228p) abstractC7218g0).m2075B());
            }
            return C7217g.m2088C(((C7228p) abstractC7218g0).m2075B());
        }
        return C7215f.m2094C(((C7228p) abstractC7218g0).m2075B());
    }

    private static void processFields(C5305f c5305f, ClassDefItem classDefItem, DexFile dexFile) {
        C7214e0 m13570p = c5305f.m13570p();
        InterfaceC5395e m13579g = c5305f.m13579g();
        int size = m13579g.size();
        for (int i = 0; i < size; i++) {
            InterfaceC5394d interfaceC5394d = m13579g.get(i);
            try {
                C7226n c7226n = new C7226n(m13570p, interfaceC5394d.mo13332d());
                int mo13334a = interfaceC5394d.mo13334a();
                if (C7136a.m2452i(mo13334a)) {
                    AbstractC7218g0 mo13336e = interfaceC5394d.mo13336e();
                    EncodedField encodedField = new EncodedField(c7226n, mo13334a);
                    if (mo13336e != null) {
                        mo13336e = coerceConstant(mo13336e, c7226n.getType());
                    }
                    classDefItem.addStaticField(encodedField, mo13336e);
                } else {
                    classDefItem.addInstanceField(new EncodedField(c7226n, mo13334a));
                }
                C6971c annotations = AttributeTranslator.getAnnotations(interfaceC5394d.getAttributes());
                if (annotations.size() != 0) {
                    classDefItem.addFieldAnnotations(c7226n, annotations, dexFile);
                }
                dexFile.getFieldIds().intern(c7226n);
            } catch (RuntimeException e) {
                throw C4557d.m16010d(e, "...while processing " + interfaceC5394d.getName().toHuman() + " " + interfaceC5394d.getDescriptor().toHuman());
            }
        }
    }

    public static ClassDefItem translate(DxContext dxContext, C5305f c5305f, byte[] bArr, CfOptions cfOptions, DexOptions dexOptions, DexFile dexFile) {
        try {
            return translate0(dxContext, c5305f, bArr, cfOptions, dexOptions, dexFile);
        } catch (RuntimeException e) {
            throw C4557d.m16010d(e, "...while processing " + c5305f.m13578h());
        }
    }
}
