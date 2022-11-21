package p146p0;

import net.bytebuddy.description.type.TypeDescription;
/* renamed from: p0.e */
/* loaded from: classes.dex */
public class C5289e {

    /* renamed from: a */
    public static final String[] f19833a = new String[0];

    /* renamed from: a */
    public static void m13634a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(TypeDescription.Generic.OfWildcardType.SYMBOL);
            if (i2 < i - 1) {
                sb.append(",");
            }
        }
    }

    /* renamed from: b */
    public static StringBuilder m13633b() {
        return new StringBuilder();
    }
}
