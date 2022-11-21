package p168r4;

import android.util.SparseArray;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.k64 */
/* loaded from: classes2.dex */
public final class k64 implements a04 {

    /* renamed from: l */
    public static final g04 f26317l = i64.f24990a;

    /* renamed from: e */
    public boolean f26322e;

    /* renamed from: f */
    public boolean f26323f;

    /* renamed from: g */
    public boolean f26324g;

    /* renamed from: h */
    public long f26325h;

    /* renamed from: i */
    public g64 f26326i;

    /* renamed from: j */
    public d04 f26327j;

    /* renamed from: k */
    public boolean f26328k;

    /* renamed from: a */
    public final C5758fc f26318a = new C5758fc(0);

    /* renamed from: c */
    public final C6423xb f26320c = new C6423xb(4096);

    /* renamed from: b */
    public final SparseArray<j64> f26319b = new SparseArray<>();

    /* renamed from: d */
    public final h64 f26321d = new h64();

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f26327j = d04Var;
    }

    @Override // p168r4.a04
    /* renamed from: e */
    public final boolean mo4475e(b04 b04Var) {
        byte[] bArr = new byte[14];
        vz3 vz3Var = (vz3) b04Var;
        vz3Var.mo5960i(bArr, 0, 14, false);
        if ((((bArr[0] & DefaultClassResolver.NAME) << 24) | ((bArr[1] & DefaultClassResolver.NAME) << 16) | ((bArr[2] & DefaultClassResolver.NAME) << 8) | (bArr[3] & DefaultClassResolver.NAME)) != 442 || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        vz3Var.m5955o(bArr[13] & 7, false);
        vz3Var.mo5960i(bArr, 0, 3, false);
        if ((((bArr[0] & DefaultClassResolver.NAME) << 16) | ((bArr[1] & DefaultClassResolver.NAME) << 8) | (bArr[2] & DefaultClassResolver.NAME)) != 1) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0151  */
    @Override // p168r4.a04
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4474f(p168r4.b04 r13, p168r4.w04 r14) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.k64.mo4474f(r4.b04, r4.w04):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r4 != r6) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[LOOP:0: B:14:0x0030->B:16:0x0038, LOOP_END] */
    @Override // p168r4.a04
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4472i(long r4, long r6) {
        /*
            r3 = this;
            r4.fc r4 = r3.f26318a
            long r4 = r4.m11582c()
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 == 0) goto L23
            r4.fc r4 = r3.f26318a
            long r4 = r4.m11584a()
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 == 0) goto L28
            r0 = 0
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 == 0) goto L28
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 == 0) goto L28
        L23:
            r4.fc r4 = r3.f26318a
            r4.m11581d(r6)
        L28:
            r4.g64 r4 = r3.f26326i
            r5 = 0
            if (r4 == 0) goto L30
            r4.m7270b(r6)
        L30:
            android.util.SparseArray<r4.j64> r4 = r3.f26319b
            int r4 = r4.size()
            if (r5 >= r4) goto L46
            android.util.SparseArray<r4.j64> r4 = r3.f26319b
            java.lang.Object r4 = r4.valueAt(r5)
            r4.j64 r4 = (p168r4.j64) r4
            r4.m10395a()
            int r5 = r5 + 1
            goto L30
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.k64.mo4472i(long, long):void");
    }
}
