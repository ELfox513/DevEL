package net.bytebuddy.jar.asm;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
final class Constants {
    private Constants() {
    }

    /* renamed from: b */
    public static void m14909b(InputStream inputStream) {
        if (inputStream != null) {
            try {
                DataInputStream dataInputStream = new DataInputStream(inputStream);
                dataInputStream.readInt();
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                dataInputStream.close();
                if (readUnsignedShort == 65535) {
                    return;
                }
                throw new IllegalStateException("ASM9_EXPERIMENTAL can only be used by classes compiled with --enable-preview");
            } catch (IOException e) {
                throw new IllegalStateException("I/O error, can't check class version", e);
            }
        }
        throw new IllegalStateException("Bytecode not available, can't check class version");
    }

    /* renamed from: c */
    public static boolean m14908c(String str) {
        if (!str.startsWith("net/bytebuddy/jar/asm/")) {
            return false;
        }
        if (!str.contains("Test$")) {
            if (!Pattern.matches("net/bytebuddy/jar/asm/util/Trace(Annotation|Class|Field|Method|Module|RecordComponent|Signature)Visitor(\\$.*)?", str)) {
                if (!Pattern.matches("net/bytebuddy/jar/asm/util/Check(Annotation|Class|Field|Method|Module|RecordComponent|Signature)Adapter(\\$.*)?", str)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: a */
    public static void m14910a(Object obj) {
        Class<?> cls = obj.getClass();
        String replace = cls.getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
        if (!m14908c(replace)) {
            ClassLoader classLoader = cls.getClassLoader();
            m14909b(classLoader.getResourceAsStream(replace + ".class"));
        }
    }
}
