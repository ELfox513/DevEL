package p168r4;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.net.HttpStatus;
import com.prineside.tdi2.managers.BasicLevelManager;
/* renamed from: r4.e74 */
/* loaded from: classes2.dex */
public final class e74 implements f74 {

    /* renamed from: m */
    public static final int[] f22891m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* renamed from: n */
    public static final int[] f22892n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, BasicLevelManager.PREVIEW_HEIGHT, 253, 279, HttpStatus.SC_TEMPORARY_REDIRECT, 337, 371, HttpStatus.SC_REQUEST_TIMEOUT, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, GL20.GL_INVALID_OPERATION, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, GL20.GL_DITHER, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* renamed from: a */
    public final d04 f22893a;

    /* renamed from: b */
    public final d14 f22894b;

    /* renamed from: c */
    public final i74 f22895c;

    /* renamed from: d */
    public final int f22896d;

    /* renamed from: e */
    public final byte[] f22897e;

    /* renamed from: f */
    public final C6423xb f22898f;

    /* renamed from: g */
    public final int f22899g;

    /* renamed from: h */
    public final C5713e5 f22900h;

    /* renamed from: i */
    public int f22901i;

    /* renamed from: j */
    public long f22902j;

    /* renamed from: k */
    public int f22903k;

    /* renamed from: l */
    public long f22904l;

    @Override // p168r4.f74
    /* renamed from: V */
    public final void mo11255V(long j) {
        this.f22901i = 0;
        this.f22902j = j;
        this.f22903k = 0;
        this.f22904l = 0L;
    }

    /* renamed from: d */
    public final int m11845d(int i) {
        int i2 = this.f22895c.f25000b;
        return i / (i2 + i2);
    }

    /* renamed from: e */
    public final int m11844e(int i) {
        return (i + i) * this.f22895c.f25000b;
    }

    @Override // p168r4.f74
    /* renamed from: a */
    public final void mo11254a(int i, long j) {
        this.f22893a.mo10798j(new l74(this.f22895c, this.f22896d, i, j));
        this.f22894b.mo4004f(this.f22900h);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003b -> B:4:0x001f). Please submit an issue!!! */
    @Override // p168r4.f74
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo11253b(p168r4.b04 r20, long r21) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.e74.mo11253b(r4.b04, long):boolean");
    }

    /* renamed from: c */
    public final void m11846c(int i) {
        long j = this.f22902j;
        long m9698h = C5979lc.m9698h(this.f22904l, 1000000L, this.f22895c.f25001c);
        int m11844e = m11844e(i);
        this.f22894b.mo4005e(j + m9698h, 1, m11844e, this.f22903k - m11844e, null);
        this.f22904l += i;
        this.f22903k -= m11844e;
    }

    public e74(d04 d04Var, d14 d14Var, i74 i74Var) {
        this.f22893a = d04Var;
        this.f22894b = d14Var;
        this.f22895c = i74Var;
        int max = Math.max(1, i74Var.f25001c / 10);
        this.f22899g = max;
        C6423xb c6423xb = new C6423xb(i74Var.f25004f);
        c6423xb.m5395x();
        int m5395x = c6423xb.m5395x();
        this.f22896d = m5395x;
        int i = i74Var.f25000b;
        int i2 = (((i74Var.f25002d - (i * 4)) * 8) / (i74Var.f25003e * i)) + 1;
        if (m5395x == i2) {
            int m9707b0 = C5979lc.m9707b0(max, m5395x);
            this.f22897e = new byte[i74Var.f25002d * m9707b0];
            this.f22898f = new C6423xb(m9707b0 * (m5395x + m5395x) * i);
            int i3 = ((i74Var.f25001c * i74Var.f25002d) * 8) / m5395x;
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12564n("audio/raw");
            c5639c5.m12569i(i3);
            c5639c5.m12568j(i3);
            c5639c5.m12563o((max + max) * i);
            c5639c5.m12610B(i74Var.f25000b);
            c5639c5.m12609C(i74Var.f25001c);
            c5639c5.m12608D(2);
            this.f22900h = c5639c5.m12603I();
            return;
        }
        StringBuilder sb = new StringBuilder(56);
        sb.append("Expected frames per block: ");
        sb.append(i2);
        sb.append("; got: ");
        sb.append(m5395x);
        throw C5973l6.m9787b(sb.toString(), null);
    }
}
