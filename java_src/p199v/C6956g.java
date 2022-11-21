package p199v;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.C0124Os;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p001a0.C0018f;
import p190u.C6811d;
/* renamed from: v.g */
/* loaded from: classes.dex */
public class C6956g extends C6961l {

    /* renamed from: b */
    public static Class<?> f35833b = null;

    /* renamed from: c */
    public static Constructor<?> f35834c = null;

    /* renamed from: d */
    public static Method f35835d = null;

    /* renamed from: e */
    public static Method f35836e = null;

    /* renamed from: f */
    public static boolean f35837f = false;

    @Override // p199v.C6961l
    /* renamed from: c */
    public Typeface mo2897c(Context context, CancellationSignal cancellationSignal, C0018f.C0020b[] c0020bArr, int i) {
        ParcelFileDescriptor openFileDescriptor;
        if (c0020bArr.length < 1) {
            return null;
        }
        C0018f.C0020b mo2892h = mo2892h(c0020bArr, i);
        try {
            openFileDescriptor = context.getContentResolver().openFileDescriptor(mo2892h.m27805d(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            File m2920m = m2920m(openFileDescriptor);
            if (m2920m != null && m2920m.canRead()) {
                Typeface createFromFile = Typeface.createFromFile(m2920m);
                openFileDescriptor.close();
                return createFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            Typeface mo2896d = super.mo2896d(context, fileInputStream);
            fileInputStream.close();
            openFileDescriptor.close();
            return mo2896d;
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: m */
    public final File m2920m(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = C0124Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(C0124Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    /* renamed from: n */
    public static void m2919n() {
        Method method;
        Class<?> cls;
        Method method2;
        if (f35837f) {
            return;
        }
        f35837f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method = null;
            cls = null;
            method2 = null;
        }
        f35834c = constructor;
        f35833b = cls;
        f35835d = method2;
        f35836e = method;
    }

    /* renamed from: k */
    public static boolean m2922k(Object obj, String str, int i, boolean z) {
        m2919n();
        try {
            return ((Boolean) f35835d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: l */
    public static Typeface m2921l(Object obj) {
        m2919n();
        try {
            Object newInstance = Array.newInstance(f35833b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f35836e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: o */
    public static Object m2918o() {
        m2919n();
        try {
            return f35834c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p199v.C6961l
    /* renamed from: b */
    public Typeface mo2898b(Context context, C6811d.C6813b c6813b, Resources resources, int i) {
        C6811d.C6814c[] m3336a;
        Object m2918o = m2918o();
        for (C6811d.C6814c c6814c : c6813b.m3336a()) {
            File m2879e = C6965m.m2879e(context);
            if (m2879e == null) {
                return null;
            }
            try {
                if (!C6965m.m2881c(m2879e, resources, c6814c.m3334b())) {
                    return null;
                }
                if (!m2922k(m2918o, m2879e.getPath(), c6814c.m3331e(), c6814c.m3330f())) {
                    return null;
                }
                m2879e.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                m2879e.delete();
            }
        }
        return m2921l(m2918o);
    }
}
