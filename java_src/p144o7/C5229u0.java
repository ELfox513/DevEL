package p144o7;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import net.bytebuddy.utility.JavaConstant;
import p144o7.AbstractC5248y;
/* renamed from: o7.u0 */
/* loaded from: classes2.dex */
public final class C5229u0 {
    /* renamed from: a */
    public static final String m13949a(String str) {
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

    /* renamed from: b */
    public static boolean m13948b(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == 0) {
                return true;
            }
            return false;
        } else if (obj instanceof Float) {
            if (((Float) obj).floatValue() == 0.0f) {
                return true;
            }
            return false;
        } else if (obj instanceof Double) {
            if (((Double) obj).doubleValue() == 0.0d) {
                return true;
            }
            return false;
        } else if (obj instanceof String) {
            return obj.equals("");
        } else {
            if (obj instanceof AbstractC5137h) {
                return obj.equals(AbstractC5137h.f19422b);
            }
            if (obj instanceof InterfaceC5210s0) {
                if (obj == ((InterfaceC5210s0) obj).mo13775c()) {
                    return true;
                }
                return false;
            } else if ((obj instanceof Enum) && ((Enum) obj).ordinal() == 0) {
                return true;
            } else {
                return false;
            }
        }
    }

    /* renamed from: c */
    public static final void m13947c(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m13947c(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m13947c(sb, i, str, entry);
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
                sb.append(C5187m1.m14182c((String) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC5137h) {
                sb.append(": \"");
                sb.append(C5187m1.m14184a((AbstractC5137h) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC5248y) {
                sb.append(" {");
                m13946d((AbstractC5248y) obj, sb, i + 2);
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
                m13947c(sb, i4, "key", entry2.getKey());
                m13947c(sb, i4, "value", entry2.getValue());
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

    /* renamed from: d */
    public static void m13946d(InterfaceC5210s0 interfaceC5210s0, StringBuilder sb, int i) {
        Method[] declaredMethods;
        Map.Entry<AbstractC5248y.C5252d, Object> next;
        String str;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : interfaceC5210s0.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str2 : treeSet) {
            if (str2.startsWith("get")) {
                str = str2.substring(3);
            } else {
                str = str2;
            }
            boolean z = true;
            if (str.endsWith("List") && !str.endsWith("OrBuilderList") && !str.equals("List")) {
                String str3 = str.substring(0, 1).toLowerCase() + str.substring(1, str.length() - 4);
                Method method2 = (Method) hashMap.get(str2);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m13947c(sb, i, m13949a(str3), AbstractC5248y.m13808G(method2, interfaceC5210s0, new Object[0]));
                }
            }
            if (str.endsWith("Map") && !str.equals("Map")) {
                String str4 = str.substring(0, 1).toLowerCase() + str.substring(1, str.length() - 3);
                Method method3 = (Method) hashMap.get(str2);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m13947c(sb, i, m13949a(str4), AbstractC5248y.m13808G(method3, interfaceC5210s0, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set" + str)) != null) {
                if (str.endsWith("Bytes")) {
                    if (hashMap.containsKey("get" + str.substring(0, str.length() - 5))) {
                    }
                }
                String str5 = str.substring(0, 1).toLowerCase() + str.substring(1);
                Method method4 = (Method) hashMap.get("get" + str);
                Method method5 = (Method) hashMap.get("has" + str);
                if (method4 != null) {
                    Object m13808G = AbstractC5248y.m13808G(method4, interfaceC5210s0, new Object[0]);
                    if (method5 == null) {
                        if (m13948b(m13808G)) {
                            z = false;
                        }
                    } else {
                        z = ((Boolean) AbstractC5248y.m13808G(method5, interfaceC5210s0, new Object[0])).booleanValue();
                    }
                    if (z) {
                        m13947c(sb, i, m13949a(str5), m13808G);
                    }
                }
            }
        }
        if (interfaceC5210s0 instanceof AbstractC5248y.AbstractC5251c) {
            Iterator<Map.Entry<AbstractC5248y.C5252d, Object>> m13957s = ((AbstractC5248y.AbstractC5251c) interfaceC5210s0).extensions.m13957s();
            while (m13957s.hasNext()) {
                m13947c(sb, i, "[" + next.getKey().mo13770e() + "]", m13957s.next().getValue());
            }
        }
        C5199p1 c5199p1 = ((AbstractC5248y) interfaceC5210s0).unknownFields;
        if (c5199p1 != null) {
            c5199p1.m14148l(sb, i);
        }
    }

    /* renamed from: e */
    public static String m13945e(InterfaceC5210s0 interfaceC5210s0, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m13946d(interfaceC5210s0, sb, 0);
        return sb.toString();
    }
}
