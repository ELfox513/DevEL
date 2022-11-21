package p237z4;

import java.util.List;
import java.util.Map;
import net.bytebuddy.utility.JavaConstant;
/* renamed from: z4.u1 */
/* loaded from: classes2.dex */
public final class C7716u1 {
    /* renamed from: a */
    public static String m586a(InterfaceC7703r1 interfaceC7703r1, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m584c(interfaceC7703r1, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m585b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m585b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m585b(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(C7713t2.m589a(AbstractC7652i.m698s((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC7652i) {
                sb.append(": \"");
                sb.append(C7713t2.m589a((AbstractC7652i) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC7673m0) {
                sb.append(" {");
                m584c((AbstractC7673m0) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                m585b(sb, i4, "key", entry2.getKey());
                m585b(sb, i4, "value", entry2.getValue());
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj.toString());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x01e6, code lost:
        if (((java.lang.Boolean) r11).booleanValue() == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e8, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f8, code lost:
        if (((java.lang.Integer) r11).intValue() == 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0209, code lost:
        if (((java.lang.Float) r11).floatValue() == 0.0f) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x021b, code lost:
        if (((java.lang.Double) r11).doubleValue() == 0.0d) goto L79;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m584c(p237z4.InterfaceC7703r1 r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 663
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7716u1.m584c(z4.r1, java.lang.StringBuilder, int):void");
    }

    /* renamed from: d */
    public static final String m583d(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append(JavaConstant.Dynamic.DEFAULT_NAME);
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
