package p199v;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import p001a0.C0018f;
import p145p.C5283g;
import p190u.C6811d;
/* renamed from: v.h */
/* loaded from: classes.dex */
public class C6957h extends C6961l {

    /* renamed from: b */
    public static final Class<?> f35838b;

    /* renamed from: c */
    public static final Constructor<?> f35839c;

    /* renamed from: d */
    public static final Method f35840d;

    /* renamed from: e */
    public static final Method f35841e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            method2 = null;
        }
        f35839c = constructor;
        f35838b = cls;
        f35840d = method2;
        f35841e = method;
    }

    /* renamed from: k */
    public static boolean m2917k(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f35840d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: l */
    public static Typeface m2916l(Object obj) {
        try {
            Object newInstance = Array.newInstance(f35838b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f35841e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: n */
    public static Object m2914n() {
        try {
            return f35839c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: m */
    public static boolean m2915m() {
        Method method = f35840d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        if (method != null) {
            return true;
        }
        return false;
    }

    @Override // p199v.C6961l
    /* renamed from: b */
    public Typeface mo2898b(Context context, C6811d.C6813b c6813b, Resources resources, int i) {
        C6811d.C6814c[] m3336a;
        Object m2914n = m2914n();
        if (m2914n == null) {
            return null;
        }
        for (C6811d.C6814c c6814c : c6813b.m3336a()) {
            ByteBuffer m2882b = C6965m.m2882b(context, resources, c6814c.m3334b());
            if (m2882b == null || !m2917k(m2914n, m2882b, c6814c.m3333c(), c6814c.m3331e(), c6814c.m3330f())) {
                return null;
            }
        }
        return m2916l(m2914n);
    }

    @Override // p199v.C6961l
    /* renamed from: c */
    public Typeface mo2897c(Context context, CancellationSignal cancellationSignal, C0018f.C0020b[] c0020bArr, int i) {
        Object m2914n = m2914n();
        if (m2914n == null) {
            return null;
        }
        C5283g c5283g = new C5283g();
        for (C0018f.C0020b c0020b : c0020bArr) {
            Uri m27805d = c0020b.m27805d();
            ByteBuffer byteBuffer = (ByteBuffer) c5283g.get(m27805d);
            if (byteBuffer == null) {
                byteBuffer = C6965m.m2878f(context, cancellationSignal, m27805d);
                c5283g.put(m27805d, byteBuffer);
            }
            if (byteBuffer == null || !m2917k(m2914n, byteBuffer, c0020b.m27806c(), c0020b.m27804e(), c0020b.m27803f())) {
                return null;
            }
        }
        Typeface m2916l = m2916l(m2914n);
        if (m2916l == null) {
            return null;
        }
        return Typeface.create(m2916l, i);
    }
}
