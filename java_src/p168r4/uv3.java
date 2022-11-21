package p168r4;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.uv3 */
/* loaded from: classes2.dex */
public final class uv3 extends yv3 {

    /* renamed from: f */
    public static final b53<Integer> f32456f = b53.m12867c(iv3.f25483a);

    /* renamed from: g */
    public static final b53<Integer> f32457g = b53.m12867c(jv3.f26161a);

    /* renamed from: d */
    public final AtomicReference<ov3> f32458d;

    /* renamed from: e */
    public final ev3 f32459e;

    /* renamed from: k */
    public static boolean m6327k(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    /* renamed from: l */
    public static String m6326l(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* renamed from: i */
    public final ov3 m6329i() {
        return this.f32458d.get();
    }

    public uv3(Context context) {
        ev3 ev3Var = new ev3();
        ov3 m8655c = ov3.m8655c(context);
        this.f32459e = ev3Var;
        this.f32458d = new AtomicReference<>(m8655c);
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b4  */
    @Override // p168r4.yv3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<p168r4.C5864i7[], p168r4.hv3[]> mo4542f(p168r4.xv3 r28, int[][][] r29, int[] r30, p168r4.ft3 r31, p168r4.AbstractC5717e8 r32) {
        /*
            Method dump skipped, instructions count: 1209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.uv3.mo4542f(r4.xv3, int[][][], int[], r4.ft3, r4.e8):android.util.Pair");
    }

    /* renamed from: j */
    public final void m6328j(pv3 pv3Var) {
        ov3 ov3Var = new ov3(pv3Var);
        if (!this.f32458d.getAndSet(ov3Var).equals(ov3Var)) {
            m12921d();
        }
    }

    /* renamed from: m */
    public static int m6325m(C5713e5 c5713e5, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(c5713e5.f22805c)) {
            return 4;
        }
        String m6326l = m6326l(str);
        String m6326l2 = m6326l(c5713e5.f22805c);
        if (m6326l2 != null && m6326l != null) {
            if (!m6326l2.startsWith(m6326l) && !m6326l.startsWith(m6326l2)) {
                if (!C5979lc.m9711Z(m6326l2, "-")[0].equals(C5979lc.m9711Z(m6326l, "-")[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        } else if (!z || m6326l2 != null) {
            return 0;
        } else {
            return 1;
        }
    }
}
