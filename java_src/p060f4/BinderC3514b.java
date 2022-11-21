package p060f4;

import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import java.lang.reflect.Field;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
/* renamed from: f4.b */
/* loaded from: classes.dex */
public final class BinderC3514b<T> extends InterfaceC3512a.AbstractBinderC3513a {

    /* renamed from: a */
    public final T f15981a;

    public BinderC3514b(T t) {
        this.f15981a = t;
    }

    @RecentlyNonNull
    /* renamed from: L0 */
    public static <T> InterfaceC3512a m18741L0(@RecentlyNonNull T t) {
        return new BinderC3514b(t);
    }

    @RecentlyNonNull
    /* renamed from: t0 */
    public static <T> T m18740t0(@RecentlyNonNull InterfaceC3512a interfaceC3512a) {
        if (interfaceC3512a instanceof BinderC3514b) {
            return ((BinderC3514b) interfaceC3512a).f15981a;
        }
        IBinder asBinder = interfaceC3512a.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i == 1) {
            C7297q.m1883j(field);
            if (!field.isAccessible()) {
                field.setAccessible(true);
                try {
                    return (T) field.get(asBinder);
                } catch (IllegalAccessException e) {
                    throw new IllegalArgumentException("Could not access the field in remoteBinder.", e);
                } catch (NullPointerException e2) {
                    throw new IllegalArgumentException("Binder object is null.", e2);
                }
            }
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
        int length = declaredFields.length;
        StringBuilder sb = new StringBuilder(64);
        sb.append("Unexpected number of IObjectWrapper declared fields: ");
        sb.append(length);
        throw new IllegalArgumentException(sb.toString());
    }
}
