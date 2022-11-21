package p069g4;

import dalvik.system.PathClassLoader;
/* renamed from: g4.a */
/* loaded from: classes.dex */
public final class C3588a extends PathClassLoader {
    public C3588a(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    public final Class<?> loadClass(String str, boolean z) {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        return super.loadClass(str, z);
    }
}
