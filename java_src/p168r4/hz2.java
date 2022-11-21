package p168r4;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* renamed from: r4.hz2 */
/* loaded from: classes2.dex */
public final class hz2 {

    /* renamed from: g */
    public static final HashMap<String, Class<?>> f24909g = new HashMap<>();

    /* renamed from: a */
    public final Context f24910a;

    /* renamed from: b */
    public final iz2 f24911b;

    /* renamed from: c */
    public final hx2 f24912c;

    /* renamed from: d */
    public final dx2 f24913d;

    /* renamed from: e */
    public vy2 f24914e;

    /* renamed from: f */
    public final Object f24915f = new Object();

    public hz2(Context context, iz2 iz2Var, hx2 hx2Var, dx2 dx2Var) {
        this.f24910a = context;
        this.f24911b = iz2Var;
        this.f24912c = hx2Var;
        this.f24913d = dx2Var;
    }

    /* renamed from: d */
    public final synchronized Class<?> m10751d(wy2 wy2Var) {
        String m8516C = wy2Var.m5547a().m8516C();
        HashMap<String, Class<?>> hashMap = f24909g;
        Class<?> cls = hashMap.get(m8516C);
        if (cls != null) {
            return cls;
        }
        try {
            if (this.f24913d.m11898a(wy2Var.m5546b())) {
                try {
                    File m5545c = wy2Var.m5545c();
                    if (!m5545c.exists()) {
                        m5545c.mkdirs();
                    }
                    Class<?> loadClass = new DexClassLoader(wy2Var.m5546b().getAbsolutePath(), m5545c.getAbsolutePath(), null, this.f24910a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    hashMap.put(m8516C, loadClass);
                    return loadClass;
                } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                    throw new gz2(2008, e);
                }
            }
            throw new gz2(2026, "VM did not pass signature verification");
        } catch (GeneralSecurityException e2) {
            throw new gz2(2026, e2);
        }
    }

    /* renamed from: b */
    public final kx2 m10753b() {
        vy2 vy2Var;
        synchronized (this.f24915f) {
            vy2Var = this.f24914e;
        }
        return vy2Var;
    }

    /* renamed from: c */
    public final wy2 m10752c() {
        synchronized (this.f24915f) {
            vy2 vy2Var = this.f24914e;
            if (vy2Var != null) {
                return vy2Var.m5972e();
            }
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m10754a(wy2 wy2Var) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                vy2 vy2Var = new vy2(m10751d(wy2Var).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f24910a, "msa-r", wy2Var.m5544d(), null, new Bundle(), 2), wy2Var, this.f24911b, this.f24912c);
                if (vy2Var.m5971f()) {
                    int m5969h = vy2Var.m5969h();
                    if (m5969h == 0) {
                        synchronized (this.f24915f) {
                            vy2 vy2Var2 = this.f24914e;
                            if (vy2Var2 != null) {
                                try {
                                    vy2Var2.m5970g();
                                } catch (gz2 e) {
                                    this.f24912c.m10766c(e.m11033a(), -1L, e);
                                }
                            }
                            this.f24914e = vy2Var;
                        }
                        this.f24912c.m10767b(3000, System.currentTimeMillis() - currentTimeMillis);
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(15);
                    sb.append("ci: ");
                    sb.append(m5969h);
                    throw new gz2(4001, sb.toString());
                }
                throw new gz2(4000, "init failed");
            } catch (Exception e2) {
                throw new gz2(2004, e2);
            }
        } catch (gz2 e3) {
            this.f24912c.m10766c(e3.m11033a(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.f24912c.m10766c(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }
}
