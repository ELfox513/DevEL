package p168r4;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.v64 */
/* loaded from: classes2.dex */
public final class v64 implements a04 {

    /* renamed from: q */
    public static final g04 f32621q = s64.f31273a;

    /* renamed from: a */
    public final List<C5758fc> f32622a;

    /* renamed from: b */
    public final C6423xb f32623b;

    /* renamed from: c */
    public final SparseIntArray f32624c;

    /* renamed from: d */
    public final y64 f32625d;

    /* renamed from: e */
    public final SparseArray<a74> f32626e;

    /* renamed from: f */
    public final SparseBooleanArray f32627f;

    /* renamed from: g */
    public final SparseBooleanArray f32628g;

    /* renamed from: h */
    public final r64 f32629h;

    /* renamed from: i */
    public q64 f32630i;

    /* renamed from: j */
    public d04 f32631j;

    /* renamed from: k */
    public int f32632k;

    /* renamed from: l */
    public boolean f32633l;

    /* renamed from: m */
    public boolean f32634m;

    /* renamed from: n */
    public boolean f32635n;

    /* renamed from: o */
    public int f32636o;

    /* renamed from: p */
    public int f32637p;

    public v64(int i) {
        this(1, 0, 112800);
    }

    @Override // p168r4.a04
    /* renamed from: h */
    public final void mo4473h(d04 d04Var) {
        this.f32631j = d04Var;
    }

    public v64(int i, int i2, int i3) {
        C5758fc c5758fc = new C5758fc(0L);
        this.f32625d = new i54(0);
        this.f32622a = Collections.singletonList(c5758fc);
        this.f32623b = new C6423xb(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.f32627f = sparseBooleanArray;
        this.f32628g = new SparseBooleanArray();
        SparseArray<a74> sparseArray = new SparseArray<>();
        this.f32626e = sparseArray;
        this.f32624c = new SparseIntArray();
        this.f32629h = new r64(112800);
        this.f32631j = d04.f22017n;
        this.f32637p = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f32626e.put(sparseArray2.keyAt(i4), (a74) sparseArray2.valueAt(i4));
        }
        this.f32626e.put(0, new n64(new t64(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
        r2 = r2 + 1;
     */
    @Override // p168r4.a04
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4475e(p168r4.b04 r7) {
        /*
            r6 = this;
            r4.xb r0 = r6.f32623b
            byte[] r0 = r0.m5402q()
            r4.vz3 r7 = (p168r4.vz3) r7
            r1 = 0
            r2 = 940(0x3ac, float:1.317E-42)
            r7.mo5960i(r0, r1, r2, r1)
            r2 = 0
        Lf:
            r3 = 188(0xbc, float:2.63E-43)
            if (r2 >= r3) goto L2b
            r3 = 0
        L14:
            r4 = 5
            if (r3 >= r4) goto L26
            int r4 = r3 * 188
            int r4 = r4 + r2
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L23
            int r2 = r2 + 1
            goto Lf
        L23:
            int r3 = r3 + 1
            goto L14
        L26:
            r7.m5956n(r2, r1)
            r7 = 1
            return r7
        L2b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.v64.mo4475e(r4.b04):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x01ae, code lost:
        if (r2 == false) goto L78;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    @Override // p168r4.a04
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo4474f(p168r4.b04 r19, p168r4.w04 r20) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.v64.mo4474f(r4.b04, r4.w04):int");
    }

    @Override // p168r4.a04
    /* renamed from: i */
    public final void mo4472i(long j, long j2) {
        q64 q64Var;
        int size = this.f32622a.size();
        for (int i = 0; i < size; i++) {
            C5758fc c5758fc = this.f32622a.get(i);
            if (c5758fc.m11582c() != -9223372036854775807L) {
                long m11584a = c5758fc.m11584a();
                if (m11584a != -9223372036854775807L) {
                    if (m11584a != 0) {
                        if (m11584a == j2) {
                        }
                    }
                }
            }
            c5758fc.m11581d(j2);
        }
        if (j2 != 0 && (q64Var = this.f32630i) != null) {
            q64Var.m7270b(j2);
        }
        this.f32623b.m5410i(0);
        this.f32624c.clear();
        for (int i2 = 0; i2 < this.f32626e.size(); i2++) {
            this.f32626e.valueAt(i2).mo9145a();
        }
        this.f32636o = 0;
    }
}
