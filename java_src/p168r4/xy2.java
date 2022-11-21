package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import p026c4.C1051l;
/* renamed from: r4.xy2 */
/* loaded from: classes2.dex */
public final class xy2 {

    /* renamed from: a */
    public final File f33812a;

    /* renamed from: b */
    public final File f33813b;

    /* renamed from: c */
    public final SharedPreferences f33814c;

    /* renamed from: d */
    public final int f33815d;

    /* renamed from: b */
    public static String m4952b(C6118p2 c6118p2) {
        return C1051l.m24748a(c6118p2.mo6494F().m9626R());
    }

    /* renamed from: c */
    public final wy2 m4951c(int i) {
        C6118p2 m4950d = m4950d(1);
        if (m4950d == null) {
            return null;
        }
        String m8516C = m4950d.m8516C();
        File m4531a = yy2.m4531a(m8516C, "pcam.jar", m4949e());
        if (!m4531a.exists()) {
            m4531a = yy2.m4531a(m8516C, "pcam", m4949e());
        }
        return new wy2(m4950d, m4531a, yy2.m4531a(m8516C, "pcbc", m4949e()), yy2.m4531a(m8516C, "pcopt", m4949e()));
    }

    /* renamed from: d */
    public final C6118p2 m4950d(int i) {
        String string;
        if (i == 1) {
            string = this.f33814c.getString(m4947g(), null);
        } else {
            string = this.f33814c.getString(m4948f(), null);
        }
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            C6118p2 m8511K = C6118p2.m8511K(ll3.m9632I(C1051l.m24746c(string)));
            String m8516C = m8511K.m8516C();
            File m4531a = yy2.m4531a(m8516C, "pcam.jar", m4949e());
            if (!m4531a.exists()) {
                m4531a = yy2.m4531a(m8516C, "pcam", m4949e());
            }
            File m4531a2 = yy2.m4531a(m8516C, "pcbc", m4949e());
            if (m4531a.exists()) {
                if (m4531a2.exists()) {
                    return m8511K;
                }
            }
        } catch (bn3 unused) {
        }
        return null;
    }

    /* renamed from: f */
    public final String m4948f() {
        int i = this.f33815d;
        StringBuilder sb = new StringBuilder(17);
        sb.append("FBAMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    /* renamed from: g */
    public final String m4947g() {
        int i = this.f33815d;
        StringBuilder sb = new StringBuilder(17);
        sb.append("LATMTD");
        sb.append(i - 1);
        return sb.toString();
    }

    /* renamed from: e */
    public final File m4949e() {
        File file = new File(this.f33812a, Integer.toString(this.f33815d - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    public xy2(Context context, int i) {
        this.f33814c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        yy2.m4528d(dir, false);
        this.f33812a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        yy2.m4528d(dir2, true);
        this.f33813b = dir2;
        this.f33815d = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0162  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4953a(p168r4.C6006m2 r8, p168r4.ez2 r9) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.xy2.m4953a(r4.m2, r4.ez2):boolean");
    }
}
