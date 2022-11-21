package p209w0;

import android.util.Log;
/* renamed from: w0.j */
/* loaded from: classes.dex */
public abstract class AbstractC7114j {

    /* renamed from: a */
    public static AbstractC7114j f36122a = null;

    /* renamed from: b */
    public static final int f36123b = 20;

    /* renamed from: w0.j$a */
    /* loaded from: classes.dex */
    public static class C7115a extends AbstractC7114j {

        /* renamed from: c */
        public int f36124c;

        @Override // p209w0.AbstractC7114j
        /* renamed from: a */
        public void mo2488a(String str, String str2, Throwable... thArr) {
            if (this.f36124c <= 3) {
                if (thArr != null && thArr.length >= 1) {
                    Log.d(str, str2, thArr[0]);
                } else {
                    Log.d(str, str2);
                }
            }
        }

        @Override // p209w0.AbstractC7114j
        /* renamed from: b */
        public void mo2487b(String str, String str2, Throwable... thArr) {
            if (this.f36124c <= 6) {
                if (thArr != null && thArr.length >= 1) {
                    Log.e(str, str2, thArr[0]);
                } else {
                    Log.e(str, str2);
                }
            }
        }

        @Override // p209w0.AbstractC7114j
        /* renamed from: d */
        public void mo2486d(String str, String str2, Throwable... thArr) {
            if (this.f36124c <= 4) {
                if (thArr != null && thArr.length >= 1) {
                    Log.i(str, str2, thArr[0]);
                } else {
                    Log.i(str, str2);
                }
            }
        }

        @Override // p209w0.AbstractC7114j
        /* renamed from: g */
        public void mo2485g(String str, String str2, Throwable... thArr) {
            if (this.f36124c <= 2) {
                if (thArr != null && thArr.length >= 1) {
                    Log.v(str, str2, thArr[0]);
                } else {
                    Log.v(str, str2);
                }
            }
        }

        @Override // p209w0.AbstractC7114j
        /* renamed from: h */
        public void mo2484h(String str, String str2, Throwable... thArr) {
            if (this.f36124c <= 5) {
                if (thArr != null && thArr.length >= 1) {
                    Log.w(str, str2, thArr[0]);
                } else {
                    Log.w(str, str2);
                }
            }
        }

        public C7115a(int i) {
            super(i);
            this.f36124c = i;
        }
    }

    public AbstractC7114j(int i) {
    }

    /* renamed from: a */
    public abstract void mo2488a(String str, String str2, Throwable... thArr);

    /* renamed from: b */
    public abstract void mo2487b(String str, String str2, Throwable... thArr);

    /* renamed from: d */
    public abstract void mo2486d(String str, String str2, Throwable... thArr);

    /* renamed from: g */
    public abstract void mo2485g(String str, String str2, Throwable... thArr);

    /* renamed from: h */
    public abstract void mo2484h(String str, String str2, Throwable... thArr);

    /* renamed from: c */
    public static synchronized AbstractC7114j m2491c() {
        AbstractC7114j abstractC7114j;
        synchronized (AbstractC7114j.class) {
            if (f36122a == null) {
                f36122a = new C7115a(3);
            }
            abstractC7114j = f36122a;
        }
        return abstractC7114j;
    }

    /* renamed from: e */
    public static synchronized void m2490e(AbstractC7114j abstractC7114j) {
        synchronized (AbstractC7114j.class) {
            f36122a = abstractC7114j;
        }
    }

    /* renamed from: f */
    public static String m2489f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i = f36123b;
        if (length >= i) {
            sb.append(str.substring(0, i));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }
}
