package p128n0;

import android.content.Context;
import net.bytebuddy.pool.TypePool;
import p128n0.AbstractC4676e;
/* renamed from: n0.d */
/* loaded from: classes.dex */
public class C4675d {
    /* renamed from: c */
    public static <T extends AbstractC4676e> AbstractC4676e.C4677a<T> m15831c(Context context, Class<T> cls) {
        return new AbstractC4676e.C4677a<>(context, cls, null);
    }

    /* renamed from: a */
    public static <T extends AbstractC4676e> AbstractC4676e.C4677a<T> m15833a(Context context, Class<T> cls, String str) {
        if (str != null && str.trim().length() != 0) {
            return new AbstractC4676e.C4677a<>(context, cls, str);
        }
        throw new IllegalArgumentException("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
    }

    /* renamed from: b */
    public static <T, C> T m15832b(Class<C> cls, String str) {
        String str2;
        String name = cls.getPackage().getName();
        String canonicalName = cls.getCanonicalName();
        if (!name.isEmpty()) {
            canonicalName = canonicalName.substring(name.length() + 1);
        }
        String str3 = canonicalName.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '_') + str;
        try {
            if (name.isEmpty()) {
                str2 = str3;
            } else {
                str2 = name + "." + str3;
            }
            return (T) Class.forName(str2).newInstance();
        } catch (ClassNotFoundException unused) {
            throw new RuntimeException("cannot find implementation for " + cls.getCanonicalName() + ". " + str3 + " does not exist");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException("Cannot access the constructor" + cls.getCanonicalName());
        } catch (InstantiationException unused3) {
            throw new RuntimeException("Failed to create an instance of " + cls.getCanonicalName());
        }
    }
}
