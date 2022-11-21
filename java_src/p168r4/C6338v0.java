package p168r4;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p185t3.C6746h;
import p185t3.C6748i;
import p211w2.C7171a;
/* renamed from: r4.v0 */
/* loaded from: classes2.dex */
public final class C6338v0 {

    /* renamed from: r */
    public static final String f32514r = "v0";

    /* renamed from: a */
    public final Context f32515a;

    /* renamed from: b */
    public ExecutorService f32516b;

    /* renamed from: c */
    public DexClassLoader f32517c;

    /* renamed from: d */
    public C6485z f32518d;

    /* renamed from: e */
    public byte[] f32519e;

    /* renamed from: i */
    public final boolean f32523i;

    /* renamed from: l */
    public C6115p f32526l;

    /* renamed from: o */
    public final Map<Pair<String, String>, C5673d2> f32529o;

    /* renamed from: q */
    public C6079o0 f32531q;

    /* renamed from: f */
    public volatile C7171a f32520f = null;

    /* renamed from: g */
    public volatile boolean f32521g = false;

    /* renamed from: h */
    public Future f32522h = null;

    /* renamed from: j */
    public volatile pb4 f32524j = null;

    /* renamed from: k */
    public Future f32525k = null;

    /* renamed from: m */
    public boolean f32527m = false;

    /* renamed from: n */
    public boolean f32528n = false;

    /* renamed from: p */
    public boolean f32530p = false;

    /* renamed from: c */
    public final Context m6283c() {
        return this.f32515a;
    }

    /* renamed from: d */
    public final boolean m6282d() {
        return this.f32530p;
    }

    /* renamed from: e */
    public final ExecutorService m6281e() {
        return this.f32516b;
    }

    /* renamed from: f */
    public final DexClassLoader m6280f() {
        return this.f32517c;
    }

    /* renamed from: g */
    public final C6485z m6279g() {
        return this.f32518d;
    }

    /* renamed from: h */
    public final byte[] m6278h() {
        return this.f32519e;
    }

    /* renamed from: i */
    public final boolean m6277i() {
        return this.f32527m;
    }

    /* renamed from: j */
    public final C6115p m6276j() {
        return this.f32526l;
    }

    /* renamed from: k */
    public final boolean m6275k() {
        return this.f32528n;
    }

    /* renamed from: l */
    public final boolean m6274l() {
        return this.f32531q.m8945a();
    }

    /* renamed from: m */
    public final C6079o0 m6273m() {
        return this.f32531q;
    }

    /* renamed from: n */
    public final pb4 m6272n() {
        return this.f32524j;
    }

    /* renamed from: o */
    public final Future m6271o() {
        return this.f32525k;
    }

    /* renamed from: s */
    public final void m6267s(int i, boolean z) {
        if (this.f32528n) {
            Future<?> submit = this.f32516b.submit(new RunnableC6264t0(this, i, true));
            if (i == 0) {
                this.f32525k = submit;
            }
        }
    }

    /* renamed from: u */
    public final int m6265u() {
        if (this.f32526l != null) {
            return C6115p.m8545d();
        }
        return Integer.MIN_VALUE;
    }

    /* renamed from: b */
    public static C6338v0 m6284b(Context context, String str, String str2, boolean z) {
        C6485z c6485z;
        boolean z2;
        boolean z3;
        C6338v0 c6338v0 = new C6338v0(context);
        try {
            c6338v0.f32516b = Executors.newCachedThreadPool(new ThreadFactoryC6190r0());
            c6338v0.f32521g = z;
            if (z) {
                c6338v0.f32522h = c6338v0.f32516b.submit(new RunnableC6227s0(c6338v0));
            }
            c6338v0.f32516b.execute(new RunnableC6301u0(c6338v0));
            try {
                C6746h m3490f = C6746h.m3490f();
                if (m3490f.m3495a(c6338v0.f32515a) > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                c6338v0.f32527m = z2;
                if (m3490f.mo3489g(c6338v0.f32515a) == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                c6338v0.f32528n = z3;
            } catch (Throwable unused) {
            }
            c6338v0.m6267s(0, true);
            if (C6449y0.m4939f() && ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30904S1)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            c6485z = new C6485z(null);
            c6338v0.f32518d = c6485z;
        } catch (C6004m0 unused2) {
        }
        try {
            try {
                byte[] m11574b = fc4.m11574b("NYpdto3gBV8HiZtFXi3NN2dSfPyfe2T+8tUnAUjRH8A=", false);
                if (m11574b.length == 32) {
                    byte[] bArr = new byte[16];
                    ByteBuffer.wrap(m11574b, 4, 16).get(bArr);
                    for (int i = 0; i < 16; i++) {
                        bArr[i] = (byte) (bArr[i] ^ 68);
                    }
                    c6338v0.f32519e = bArr;
                    try {
                        try {
                            try {
                                try {
                                    File cacheDir = c6338v0.f32515a.getCacheDir();
                                    if (cacheDir == null && (cacheDir = c6338v0.f32515a.getDir("dex", 0)) == null) {
                                        throw new C6004m0();
                                    }
                                    File file = new File(String.format("%s/%s.jar", cacheDir, "1629828815138"));
                                    if (!file.exists()) {
                                        byte[] m4499b = c6338v0.f32518d.m4499b(c6338v0.f32519e, "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");
                                        file.createNewFile();
                                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                                        fileOutputStream.write(m4499b, 0, m4499b.length);
                                        fileOutputStream.close();
                                    }
                                    c6338v0.m6263w(cacheDir, "1629828815138");
                                    try {
                                        c6338v0.f32517c = new DexClassLoader(file.getAbsolutePath(), cacheDir.getAbsolutePath(), null, c6338v0.f32515a.getClassLoader());
                                        m6261y(file);
                                        c6338v0.m6264v(cacheDir, "1629828815138");
                                        m6260z(String.format("%s/%s.dex", cacheDir, "1629828815138"));
                                        c6338v0.f32526l = new C6115p(c6338v0);
                                        c6338v0.f32530p = true;
                                        return c6338v0;
                                    } catch (Throwable th) {
                                        m6261y(file);
                                        c6338v0.m6264v(cacheDir, "1629828815138");
                                        m6260z(String.format("%s/%s.dex", cacheDir, "1629828815138"));
                                        throw th;
                                    }
                                } catch (IOException e) {
                                    throw new C6004m0(e);
                                }
                            } catch (NullPointerException e2) {
                                throw new C6004m0(e2);
                            }
                        } catch (FileNotFoundException e3) {
                            throw new C6004m0(e3);
                        }
                    } catch (C6448y e4) {
                        throw new C6004m0(e4);
                    }
                }
                throw new C6448y(c6485z);
            } catch (C6448y e5) {
                throw new C6004m0(e5);
            }
        } catch (IllegalArgumentException e6) {
            throw new C6448y(c6485z, e6);
        }
    }

    /* renamed from: z */
    public static final void m6260z(String str) {
        m6261y(new File(str));
    }

    /* renamed from: p */
    public final boolean m6270p(String str, String str2, Class<?>... clsArr) {
        if (!this.f32529o.containsKey(new Pair(str, str2))) {
            this.f32529o.put(new Pair<>(str, str2), new C5673d2(this, str, str2, clsArr));
            return true;
        }
        return false;
    }

    /* renamed from: q */
    public final Method m6269q(String str, String str2) {
        C5673d2 c5673d2 = this.f32529o.get(new Pair(str, str2));
        if (c5673d2 == null) {
            return null;
        }
        return c5673d2.m12237b();
    }

    /* renamed from: t */
    public final C7171a m6266t() {
        if (!this.f32521g) {
            return null;
        }
        if (this.f32520f != null) {
            return this.f32520f;
        }
        Future future = this.f32522h;
        if (future != null) {
            try {
                future.get(2000L, TimeUnit.MILLISECONDS);
                this.f32522h = null;
            } catch (InterruptedException | ExecutionException unused) {
            } catch (TimeoutException unused2) {
                this.f32522h.cancel(true);
            }
        }
        return this.f32520f;
    }

    /* renamed from: v */
    public final void m6264v(File file, String str) {
        Throwable th;
        FileOutputStream fileOutputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, "1629828815138"));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, "1629828815138"));
        if (!file3.exists()) {
            return;
        }
        long length = file3.length();
        if (length <= 0) {
            return;
        }
        byte[] bArr = new byte[(int) length];
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file3);
            try {
                if (fileInputStream2.read(bArr) <= 0) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                    m6261y(file3);
                    return;
                }
                System.out.print("test");
                System.out.print("test");
                System.out.print("test");
                tb4 m6554K = ub4.m6554K();
                m6554K.m6889A(ll3.m9632I(Build.VERSION.SDK.getBytes()));
                m6554K.m6886z(ll3.m9632I("1629828815138".getBytes()));
                byte[] bytes = this.f32518d.m4500a(this.f32519e, bArr).getBytes();
                m6554K.m6888v(ll3.m9632I(bytes));
                m6554K.m6887x(ll3.m9632I(jc4.m10304e(bytes)));
                file2.createNewFile();
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] mo6490t = m6554K.m9614o().mo6490t();
                    fileOutputStream.write(mo6490t, 0, mo6490t.length);
                    fileOutputStream.close();
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused2) {
                    }
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                    }
                    m6261y(file3);
                } catch (IOException | NoSuchAlgorithmException | C6448y unused4) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused6) {
                        }
                    }
                    m6261y(file3);
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused7) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused8) {
                        }
                    }
                    m6261y(file3);
                    throw th;
                }
            } catch (IOException | NoSuchAlgorithmException | C6448y unused9) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (IOException | NoSuchAlgorithmException | C6448y unused10) {
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    /* renamed from: w */
    public final boolean m6263w(File file, String str) {
        FileOutputStream fileOutputStream;
        File file2 = new File(String.format("%s/%s.tmp", file, "1629828815138"));
        if (!file2.exists()) {
            return false;
        }
        File file3 = new File(String.format("%s/%s.dex", file, "1629828815138"));
        if (!file3.exists()) {
            FileInputStream fileInputStream = null;
            try {
                long length = file2.length();
                if (length <= 0) {
                    m6261y(file2);
                    return false;
                }
                byte[] bArr = new byte[(int) length];
                FileInputStream fileInputStream2 = new FileInputStream(file2);
                try {
                    try {
                        if (fileInputStream2.read(bArr) <= 0) {
                            Log.d(f32514r, "Cannot read the cache data.");
                            m6261y(file2);
                            try {
                                fileInputStream2.close();
                            } catch (IOException unused) {
                            }
                            return false;
                        }
                        try {
                            try {
                                ub4 m6555J = ub4.m6555J(bArr, bm3.m12746a());
                                if ("1629828815138".equals(new String(m6555J.m6557E().m9626R())) && Arrays.equals(m6555J.m6558D().m9626R(), jc4.m10304e(m6555J.m6559C().m9626R())) && Arrays.equals(m6555J.m6556I().m9626R(), Build.VERSION.SDK.getBytes())) {
                                    byte[] m4499b = this.f32518d.m4499b(this.f32519e, new String(m6555J.m6559C().m9626R()));
                                    file3.createNewFile();
                                    fileOutputStream = new FileOutputStream(file3);
                                    try {
                                        fileOutputStream.write(m4499b, 0, m4499b.length);
                                        try {
                                            fileInputStream2.close();
                                        } catch (IOException unused2) {
                                        }
                                        try {
                                            fileOutputStream.close();
                                        } catch (IOException unused3) {
                                        }
                                        return true;
                                    } catch (IOException | NoSuchAlgorithmException | C6448y unused4) {
                                        fileInputStream = fileInputStream2;
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException unused5) {
                                            }
                                        }
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException unused6) {
                                            }
                                        }
                                        return false;
                                    } catch (Throwable th) {
                                        th = th;
                                        fileInputStream = fileInputStream2;
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException unused7) {
                                            }
                                        }
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException unused8) {
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                m6261y(file2);
                                try {
                                    fileInputStream2.close();
                                } catch (IOException unused9) {
                                }
                                return false;
                            } catch (NullPointerException unused10) {
                                fileInputStream2.close();
                                return false;
                            }
                        } catch (IOException unused11) {
                            return false;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = null;
                    }
                } catch (IOException | NoSuchAlgorithmException | C6448y unused12) {
                    fileOutputStream = null;
                }
            } catch (IOException | NoSuchAlgorithmException | C6448y unused13) {
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        }
        return false;
    }

    /* renamed from: x */
    public final void m6262x() {
        try {
            if (this.f32520f == null && this.f32523i) {
                C7171a c7171a = new C7171a(this.f32515a);
                c7171a.m2239f();
                this.f32520f = c7171a;
            }
        } catch (IOException | C6748i unused) {
            this.f32520f = null;
        }
    }

    public C6338v0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f32523i = applicationContext != null;
        context = applicationContext != null ? applicationContext : context;
        this.f32515a = context;
        this.f32529o = new HashMap();
        if (this.f32531q != null) {
            return;
        }
        this.f32531q = new C6079o0(context);
    }

    /* renamed from: y */
    public static final void m6261y(File file) {
        if (!file.exists()) {
            Log.d(f32514r, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        } else {
            file.delete();
        }
    }
}
