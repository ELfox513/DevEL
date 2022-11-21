package p040d2;

import androidx.annotation.RecentlyNonNull;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import p168r4.cm0;
@Deprecated
/* renamed from: d2.e */
/* loaded from: classes.dex */
public abstract class AbstractC3287e {

    /* renamed from: d2.e$a */
    /* loaded from: classes.dex */
    public static final class C3288a extends Exception {
        public C3288a(@RecentlyNonNull String str) {
            super(str);
        }
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: d2.e$b */
    /* loaded from: classes.dex */
    public @interface InterfaceC3289b {
        @RecentlyNonNull
        String name();

        boolean required() default true;
    }

    /* renamed from: a */
    public void m19196a(@RecentlyNonNull Map<String, String> map) {
        Field[] fields;
        String str;
        String str2;
        HashMap hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            InterfaceC3289b interfaceC3289b = (InterfaceC3289b) field.getAnnotation(InterfaceC3289b.class);
            if (interfaceC3289b != null) {
                hashMap.put(interfaceC3289b.name(), field);
            }
        }
        if (hashMap.isEmpty()) {
            cm0.m12437f("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException unused) {
                    String key = entry.getKey();
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 49);
                    sb.append("Server option \"");
                    sb.append(key);
                    sb.append("\" could not be set: Illegal Access");
                    cm0.m12437f(sb.toString());
                } catch (IllegalArgumentException unused2) {
                    String key2 = entry.getKey();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(key2).length() + 43);
                    sb2.append("Server option \"");
                    sb2.append(key2);
                    sb2.append("\" could not be set: Bad Type");
                    cm0.m12437f(sb2.toString());
                }
            } else {
                String key3 = entry.getKey();
                String value = entry.getValue();
                StringBuilder sb3 = new StringBuilder(String.valueOf(key3).length() + 31 + String.valueOf(value).length());
                sb3.append("Unexpected server option: ");
                sb3.append(key3);
                sb3.append(" = \"");
                sb3.append(value);
                sb3.append("\"");
                cm0.m12442a(sb3.toString());
            }
        }
        StringBuilder sb4 = new StringBuilder();
        for (Field field3 : hashMap.values()) {
            if (((InterfaceC3289b) field3.getAnnotation(InterfaceC3289b.class)).required()) {
                String valueOf = String.valueOf(((InterfaceC3289b) field3.getAnnotation(InterfaceC3289b.class)).name());
                if (valueOf.length() != 0) {
                    str2 = "Required server option missing: ".concat(valueOf);
                } else {
                    str2 = new String("Required server option missing: ");
                }
                cm0.m12437f(str2);
                if (sb4.length() > 0) {
                    sb4.append(", ");
                }
                sb4.append(((InterfaceC3289b) field3.getAnnotation(InterfaceC3289b.class)).name());
            }
        }
        if (sb4.length() > 0) {
            String sb5 = sb4.toString();
            if (sb5.length() != 0) {
                str = "Required server option(s) missing: ".concat(sb5);
            } else {
                str = new String("Required server option(s) missing: ");
            }
            throw new C3288a(str);
        }
    }
}
