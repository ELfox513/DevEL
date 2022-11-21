package p199v;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import p001a0.C0018f;
import p190u.C6811d;
/* renamed from: v.i */
/* loaded from: classes.dex */
public class C6958i extends C6956g {

    /* renamed from: g */
    public final Class<?> f35842g;

    /* renamed from: h */
    public final Constructor<?> f35843h;

    /* renamed from: i */
    public final Method f35844i;

    /* renamed from: j */
    public final Method f35845j;

    /* renamed from: k */
    public final Method f35846k;

    /* renamed from: l */
    public final Method f35847l;

    /* renamed from: m */
    public final Method f35848m;

    /* renamed from: o */
    private Object m2912o() {
        try {
            return this.f35843h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: A */
    public Method m2913A(Class<?> cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    /* JADX WARN: Type inference failed for: r12v2, types: [android.graphics.Typeface$Builder] */
    @Override // p199v.C6956g, p199v.C6961l
    /* renamed from: c */
    public Typeface mo2897c(Context context, CancellationSignal cancellationSignal, C0018f.C0020b[] c0020bArr, int i) {
        Typeface mo2901l;
        ParcelFileDescriptor openFileDescriptor;
        if (c0020bArr.length < 1) {
            return null;
        }
        if (!m2907t()) {
            C0018f.C0020b mo2892h = mo2892h(c0020bArr, i);
            try {
                openFileDescriptor = context.getContentResolver().openFileDescriptor(mo2892h.m27805d(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                final FileDescriptor fileDescriptor = openFileDescriptor.getFileDescriptor();
                Typeface build = new Object(fileDescriptor) { // from class: android.graphics.Typeface$Builder
                    static {
                        throw new NoClassDefFoundError();
                    }

                    public native /* synthetic */ Typeface build();

                    public native /* synthetic */ Typeface$Builder setItalic(boolean z);

                    public native /* synthetic */ Typeface$Builder setWeight(int i2);
                }.setWeight(mo2892h.m27804e()).setItalic(mo2892h.m27803f()).build();
                openFileDescriptor.close();
                return build;
            } catch (IOException unused) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> m2876h = C6965m.m2876h(context, c0020bArr, cancellationSignal);
        Object m2912o = m2912o();
        if (m2912o == null) {
            return null;
        }
        boolean z = false;
        for (C0018f.C0020b c0020b : c0020bArr) {
            ByteBuffer byteBuffer = m2876h.get(c0020b.m27805d());
            if (byteBuffer != null) {
                if (!m2909r(m2912o, byteBuffer, c0020b.m27806c(), c0020b.m27804e(), c0020b.m27803f() ? 1 : 0)) {
                    m2911p(m2912o);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            m2911p(m2912o);
            return null;
        } else if (!m2908s(m2912o) || (mo2901l = mo2901l(m2912o)) == null) {
            return null;
        } else {
            return Typeface.create(mo2901l, i);
        }
    }

    /* renamed from: l */
    public Typeface mo2901l(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f35842g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f35848m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: p */
    public final void m2911p(Object obj) {
        try {
            this.f35847l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    /* renamed from: q */
    public final boolean m2910q(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f35844i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: r */
    public final boolean m2909r(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f35845j.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: s */
    public final boolean m2908s(Object obj) {
        try {
            return ((Boolean) this.f35846k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: u */
    public Method m2906u(Class<?> cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* renamed from: v */
    public Method m2905v(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* renamed from: w */
    public Method m2904w(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* renamed from: x */
    public Method mo2900x(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* renamed from: y */
    public Class<?> m2903y() {
        return Class.forName("android.graphics.FontFamily");
    }

    /* renamed from: z */
    public Constructor<?> m2902z(Class<?> cls) {
        return cls.getConstructor(new Class[0]);
    }

    /* renamed from: t */
    public final boolean m2907t() {
        if (this.f35844i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (this.f35844i != null) {
            return true;
        }
        return false;
    }

    public C6958i() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> m2903y = m2903y();
            constructor = m2902z(m2903y);
            method2 = m2905v(m2903y);
            method3 = m2904w(m2903y);
            method4 = m2913A(m2903y);
            method5 = m2906u(m2903y);
            method = mo2900x(m2903y);
            cls = m2903y;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f35842g = cls;
        this.f35843h = constructor;
        this.f35844i = method2;
        this.f35845j = method3;
        this.f35846k = method4;
        this.f35847l = method5;
        this.f35848m = method;
    }

    @Override // p199v.C6956g, p199v.C6961l
    /* renamed from: b */
    public Typeface mo2898b(Context context, C6811d.C6813b c6813b, Resources resources, int i) {
        C6811d.C6814c[] m3336a;
        if (!m2907t()) {
            return super.mo2898b(context, c6813b, resources, i);
        }
        Object m2912o = m2912o();
        if (m2912o == null) {
            return null;
        }
        for (C6811d.C6814c c6814c : c6813b.m3336a()) {
            if (!m2910q(context, m2912o, c6814c.m3335a(), c6814c.m3333c(), c6814c.m3331e(), c6814c.m3330f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c6814c.m3332d()))) {
                m2911p(m2912o);
                return null;
            }
        }
        if (!m2908s(m2912o)) {
            return null;
        }
        return mo2901l(m2912o);
    }

    @Override // p199v.C6961l
    /* renamed from: e */
    public Typeface mo2895e(Context context, Resources resources, int i, String str, int i2) {
        if (!m2907t()) {
            return super.mo2895e(context, resources, i, str, i2);
        }
        Object m2912o = m2912o();
        if (m2912o == null) {
            return null;
        }
        if (!m2910q(context, m2912o, str, 0, -1, -1, null)) {
            m2911p(m2912o);
            return null;
        } else if (!m2908s(m2912o)) {
            return null;
        } else {
            return mo2901l(m2912o);
        }
    }
}
