package p199v;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import com.badlogic.gdx.net.HttpStatus;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import p001a0.C0018f;
import p190u.C6811d;
/* renamed from: v.l */
/* loaded from: classes.dex */
public class C6961l {
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: a */
    public ConcurrentHashMap<Long, C6811d.C6813b> f35849a = new ConcurrentHashMap<>();

    /* renamed from: v.l$a */
    /* loaded from: classes.dex */
    public class C6962a implements InterfaceC6964c<C0018f.C0020b> {
        public C6962a() {
        }

        @Override // p199v.C6961l.InterfaceC6964c
        /* renamed from: c */
        public int mo2885a(C0018f.C0020b c0020b) {
            return c0020b.m27804e();
        }

        @Override // p199v.C6961l.InterfaceC6964c
        /* renamed from: d */
        public boolean mo2884b(C0018f.C0020b c0020b) {
            return c0020b.m27803f();
        }
    }

    /* renamed from: v.l$b */
    /* loaded from: classes.dex */
    public class C6963b implements InterfaceC6964c<C6811d.C6814c> {
        public C6963b() {
        }

        @Override // p199v.C6961l.InterfaceC6964c
        /* renamed from: c */
        public int mo2885a(C6811d.C6814c c6814c) {
            return c6814c.m3331e();
        }

        @Override // p199v.C6961l.InterfaceC6964c
        /* renamed from: d */
        public boolean mo2884b(C6811d.C6814c c6814c) {
            return c6814c.m3330f();
        }
    }

    /* renamed from: v.l$c */
    /* loaded from: classes.dex */
    public interface InterfaceC6964c<T> {
        /* renamed from: a */
        int mo2885a(T t);

        /* renamed from: b */
        boolean mo2884b(T t);
    }

    /* renamed from: c */
    public Typeface mo2897c(Context context, CancellationSignal cancellationSignal, C0018f.C0020b[] c0020bArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (c0020bArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(mo2892h(c0020bArr, i).m27805d());
        } catch (IOException unused) {
            inputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface mo2896d = mo2896d(context, inputStream);
            C6965m.m2883a(inputStream);
            return mo2896d;
        } catch (IOException unused2) {
            C6965m.m2883a(inputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            C6965m.m2883a(inputStream2);
            throw th;
        }
    }

    /* renamed from: f */
    public final C6811d.C6814c m2894f(C6811d.C6813b c6813b, int i) {
        return (C6811d.C6814c) m2893g(c6813b.m3336a(), i, new C6963b());
    }

    /* renamed from: h */
    public C0018f.C0020b mo2892h(C0018f.C0020b[] c0020bArr, int i) {
        return (C0018f.C0020b) m2893g(c0020bArr, i, new C6962a());
    }

    /* renamed from: g */
    public static <T> T m2893g(T[] tArr, int i, InterfaceC6964c<T> interfaceC6964c) {
        int i2;
        boolean z;
        int i3;
        if ((i & 1) == 0) {
            i2 = HttpStatus.SC_BAD_REQUEST;
        } else {
            i2 = 700;
        }
        if ((i & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        T t = null;
        int i4 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = Math.abs(interfaceC6964c.mo2885a(t2) - i2) * 2;
            if (interfaceC6964c.mo2884b(t2) == z) {
                i3 = 0;
            } else {
                i3 = 1;
            }
            int i5 = abs + i3;
            if (t == null || i4 > i5) {
                t = t2;
                i4 = i5;
            }
        }
        return t;
    }

    /* renamed from: j */
    public static long m2890j(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    /* renamed from: a */
    public final void m2899a(Typeface typeface, C6811d.C6813b c6813b) {
        long m2890j = m2890j(typeface);
        if (m2890j != 0) {
            this.f35849a.put(Long.valueOf(m2890j), c6813b);
        }
    }

    /* renamed from: b */
    public Typeface mo2898b(Context context, C6811d.C6813b c6813b, Resources resources, int i) {
        C6811d.C6814c m2894f = m2894f(c6813b, i);
        if (m2894f == null) {
            return null;
        }
        Typeface m2931d = C6952d.m2931d(context, resources, m2894f.m3334b(), m2894f.m3335a(), i);
        m2899a(m2931d, c6813b);
        return m2931d;
    }

    /* renamed from: d */
    public Typeface mo2896d(Context context, InputStream inputStream) {
        File m2879e = C6965m.m2879e(context);
        if (m2879e == null) {
            return null;
        }
        try {
            if (!C6965m.m2880d(m2879e, inputStream)) {
                return null;
            }
            return Typeface.createFromFile(m2879e.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            m2879e.delete();
        }
    }

    /* renamed from: e */
    public Typeface mo2895e(Context context, Resources resources, int i, String str, int i2) {
        File m2879e = C6965m.m2879e(context);
        if (m2879e == null) {
            return null;
        }
        try {
            if (!C6965m.m2881c(m2879e, resources, i)) {
                return null;
            }
            return Typeface.createFromFile(m2879e.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            m2879e.delete();
        }
    }

    /* renamed from: i */
    public C6811d.C6813b m2891i(Typeface typeface) {
        long m2890j = m2890j(typeface);
        if (m2890j == 0) {
            return null;
        }
        return this.f35849a.get(Long.valueOf(m2890j));
    }
}
