package p168r4;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import p168r4.bm3;
/* renamed from: r4.jm3 */
/* loaded from: classes2.dex */
public abstract class jm3<T extends bm3> {

    /* renamed from: a */
    public static final Logger f26077a = Logger.getLogger(wl3.class.getName());

    /* renamed from: b */
    public static final String f26078b = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    /* renamed from: a */
    public abstract T m10249a();

    /* renamed from: b */
    public static <T extends bm3> T m10248b(Class<T> cls) {
        String format;
        String str;
        ClassLoader classLoader = jm3.class.getClassLoader();
        if (cls.equals(bm3.class)) {
            format = f26078b;
        } else if (cls.getPackage().equals(jm3.class.getPackage())) {
            format = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        } else {
            throw new IllegalArgumentException(cls.getName());
        }
        try {
            try {
                try {
                    try {
                        return cls.cast(((jm3) Class.forName(format, true, classLoader).getConstructor(new Class[0]).newInstance(new Object[0])).m10249a());
                    } catch (IllegalAccessException e) {
                        throw new IllegalStateException(e);
                    }
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2);
                }
            } catch (InstantiationException e3) {
                throw new IllegalStateException(e3);
            } catch (NoSuchMethodException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(jm3.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    arrayList.add(cls.cast(((jm3) it.next()).m10249a()));
                } catch (ServiceConfigurationError e5) {
                    Logger logger = f26077a;
                    Level level = Level.SEVERE;
                    String simpleName = cls.getSimpleName();
                    if (simpleName.length() != 0) {
                        str = "Unable to load ".concat(simpleName);
                    } else {
                        str = new String("Unable to load ");
                    }
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", str, (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (T) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e6) {
                throw new IllegalStateException(e6);
            } catch (NoSuchMethodException e7) {
                throw new IllegalStateException(e7);
            } catch (InvocationTargetException e8) {
                throw new IllegalStateException(e8);
            }
        }
    }
}
