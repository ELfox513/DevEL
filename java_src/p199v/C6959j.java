package p199v;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: v.j */
/* loaded from: classes.dex */
public class C6959j extends C6958i {
    @Override // p199v.C6958i
    /* renamed from: x */
    public Method mo2900x(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // p199v.C6958i
    /* renamed from: l */
    public Typeface mo2901l(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f35842g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f35848m.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }
}
