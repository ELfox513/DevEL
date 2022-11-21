package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import com.prineside.tdi2.Config;
import java.io.File;
import java.util.HashSet;
import p026c4.C1051l;
/* renamed from: r4.fz2 */
/* loaded from: classes2.dex */
public final class fz2 {

    /* renamed from: f */
    public static final Object f23802f = new Object();

    /* renamed from: a */
    public final Context f23803a;

    /* renamed from: b */
    public final SharedPreferences f23804b;

    /* renamed from: c */
    public final String f23805c;

    /* renamed from: d */
    public final ly2 f23806d;

    /* renamed from: e */
    public boolean f23807e;

    /* renamed from: f */
    public final String m11321f() {
        String valueOf = String.valueOf(this.f23805c);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    /* renamed from: g */
    public final String m11320g() {
        String valueOf = String.valueOf(this.f23805c);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    /* renamed from: i */
    public final void m11318i(int i, long j) {
        ly2 ly2Var = this.f23806d;
        if (ly2Var != null) {
            ly2Var.mo1022c(i, j);
        }
    }

    /* renamed from: j */
    public final void m11317j(int i, long j, String str) {
        ly2 ly2Var = this.f23806d;
        if (ly2Var != null) {
            ly2Var.mo1021d(i, j, str);
        }
    }

    /* renamed from: k */
    public final C6118p2 m11316k(int i) {
        String string;
        bm3 m12745b;
        if (i == 1) {
            string = this.f23804b.getString(m11320g(), null);
        } else {
            string = this.f23804b.getString(m11321f(), null);
        }
        if (string == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        try {
            ll3 m9632I = ll3.m9632I(C1051l.m24746c(string));
            if (this.f23807e) {
                m12745b = bm3.m12746a();
            } else {
                m12745b = bm3.m12745b();
            }
            return C6118p2.m8510L(m9632I, m12745b);
        } catch (NullPointerException unused) {
            m11318i(2029, currentTimeMillis);
            return null;
        } catch (RuntimeException unused2) {
            m11318i(2032, currentTimeMillis);
            return null;
        } catch (bn3 unused3) {
            return null;
        }
    }

    /* renamed from: e */
    public final File m11322e(String str) {
        return new File(new File(this.f23803a.getDir("pccache", 0), this.f23805c), str);
    }

    public fz2(Context context, int i, ly2 ly2Var, boolean z) {
        this.f23807e = false;
        this.f23803a = context;
        this.f23805c = Integer.toString(i - 1);
        this.f23804b = context.getSharedPreferences("pcvmspf", 0);
        this.f23806d = ly2Var;
        this.f23807e = z;
    }

    /* renamed from: h */
    public static String m11319h(C6006m2 c6006m2) {
        C6081o2 m8509M = C6118p2.m8509M();
        m8509M.m8928v(c6006m2.m9520C().m8516C());
        m8509M.m8927x(c6006m2.m9520C().m8515D());
        m8509M.m8930A(c6006m2.m9520C().m8513I());
        m8509M.m8929B(c6006m2.m9520C().m8512J());
        m8509M.m8926z(c6006m2.m9520C().m8514E());
        return C1051l.m24748a(m8509M.m9614o().mo6494F().m9626R());
    }

    /* renamed from: a */
    public final boolean m11326a(C6006m2 c6006m2, ez2 ez2Var) {
        String str;
        File[] listFiles;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f23802f) {
            C6118p2 m11316k = m11316k(1);
            String m8516C = c6006m2.m9520C().m8516C();
            if (m11316k != null && m11316k.m8516C().equals(m8516C)) {
                m11318i(4014, currentTimeMillis);
                return false;
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            File m11322e = m11322e(m8516C);
            if (m11322e.exists()) {
                boolean isDirectory = m11322e.isDirectory();
                String str2 = Config.SITE_API_VERSION;
                if (true != isDirectory) {
                    str2 = "0";
                }
                boolean isFile = m11322e.isFile();
                String str3 = Config.SITE_API_VERSION;
                if (true != isFile) {
                    str3 = "0";
                }
                StringBuilder sb = new StringBuilder(str2.length() + 5 + str3.length());
                sb.append("d:");
                sb.append(str2);
                sb.append(",f:");
                sb.append(str3);
                m11317j(4023, currentTimeMillis2, sb.toString());
                m11318i(4015, currentTimeMillis2);
            } else if (!m11322e.mkdirs()) {
                boolean canWrite = m11322e.canWrite();
                String str4 = Config.SITE_API_VERSION;
                if (true != canWrite) {
                    str4 = "0";
                }
                if (str4.length() != 0) {
                    str = "cw:".concat(str4);
                } else {
                    str = new String("cw:");
                }
                m11317j(4024, currentTimeMillis2, str);
                m11318i(4015, currentTimeMillis2);
                return false;
            }
            File m11322e2 = m11322e(m8516C);
            File file = new File(m11322e2, "pcam.jar");
            File file2 = new File(m11322e2, "pcbc");
            if (!yy2.m4530b(file, c6006m2.m9519D().m9626R())) {
                m11318i(4016, currentTimeMillis);
                return false;
            } else if (!yy2.m4530b(file2, c6006m2.m9518E().m9626R())) {
                m11318i(4017, currentTimeMillis);
                return false;
            } else if (ez2Var != null && !ez2Var.mo9819a(file)) {
                m11318i(4018, currentTimeMillis);
                yy2.m4527e(m11322e2);
                return false;
            } else {
                String m11319h = m11319h(c6006m2);
                long currentTimeMillis3 = System.currentTimeMillis();
                String string = this.f23804b.getString(m11320g(), null);
                SharedPreferences.Editor edit = this.f23804b.edit();
                edit.putString(m11320g(), m11319h);
                if (string != null) {
                    edit.putString(m11321f(), string);
                }
                if (!edit.commit()) {
                    m11318i(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                C6118p2 m11316k2 = m11316k(1);
                if (m11316k2 != null) {
                    hashSet.add(m11316k2.m8516C());
                }
                C6118p2 m11316k3 = m11316k(2);
                if (m11316k3 != null) {
                    hashSet.add(m11316k3.m8516C());
                }
                for (File file3 : new File(this.f23803a.getDir("pccache", 0), this.f23805c).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        yy2.m4527e(file3);
                    }
                }
                m11318i(5014, currentTimeMillis);
                return true;
            }
        }
    }

    /* renamed from: b */
    public final boolean m11325b(C6006m2 c6006m2) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f23802f) {
            if (!yy2.m4530b(new File(m11322e(c6006m2.m9520C().m8516C()), "pcbc"), c6006m2.m9518E().m9626R())) {
                m11318i(4020, currentTimeMillis);
                return false;
            }
            String m11319h = m11319h(c6006m2);
            SharedPreferences.Editor edit = this.f23804b.edit();
            edit.putString(m11320g(), m11319h);
            boolean commit = edit.commit();
            if (commit) {
                m11318i(5015, currentTimeMillis);
            } else {
                m11318i(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    /* renamed from: c */
    public final wy2 m11324c(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f23802f) {
            C6118p2 m11316k = m11316k(1);
            if (m11316k == null) {
                m11318i(4022, currentTimeMillis);
                return null;
            }
            File m11322e = m11322e(m11316k.m8516C());
            File file = new File(m11322e, "pcam.jar");
            if (!file.exists()) {
                file = new File(m11322e, "pcam");
            }
            File file2 = new File(m11322e, "pcbc");
            File file3 = new File(m11322e, "pcopt");
            m11318i(5016, currentTimeMillis);
            return new wy2(m11316k, file, file2, file3);
        }
    }

    /* renamed from: d */
    public final boolean m11323d(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f23802f) {
            C6118p2 m11316k = m11316k(1);
            if (m11316k == null) {
                m11318i(4025, currentTimeMillis);
                return false;
            }
            File m11322e = m11322e(m11316k.m8516C());
            if (!new File(m11322e, "pcam.jar").exists()) {
                m11318i(4026, currentTimeMillis);
                return false;
            } else if (!new File(m11322e, "pcbc").exists()) {
                m11318i(4027, currentTimeMillis);
                return false;
            } else {
                m11318i(5019, currentTimeMillis);
                return true;
            }
        }
    }
}
