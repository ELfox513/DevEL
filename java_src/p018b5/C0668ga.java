package p018b5;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import net.bytebuddy.utility.JavaConstant;
/* renamed from: b5.ga */
/* loaded from: classes2.dex */
public final class C0668ga {
    /* renamed from: a */
    public static String m25889a(InterfaceC0634ea interfaceC0634ea, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m25886d(interfaceC0634ea, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m25888b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m25888b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m25888b(sb, i, str, entry);
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
                sb.append(C0652fb.m25941a(AbstractC0937w7.m25028t((String) obj)));
                sb.append('\"');
            } else if (obj instanceof AbstractC0937w7) {
                sb.append(": \"");
                sb.append(C0652fb.m25941a((AbstractC0937w7) obj));
                sb.append('\"');
            } else if (obj instanceof AbstractC0955x8) {
                sb.append(" {");
                m25886d((AbstractC0955x8) obj, sb, i + 2);
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
                m25888b(sb, i4, "key", entry2.getKey());
                m25888b(sb, i4, "value", entry2.getValue());
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

    /* renamed from: c */
    public static final String m25887c(String str) {
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

    /* renamed from: d */
    public static void m25886d(InterfaceC0634ea interfaceC0634ea, StringBuilder sb, int i) {
        Method[] declaredMethods;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean equals;
        String str6;
        String str7;
        String str8;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : interfaceC0634ea.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str9 : treeSet) {
            if (str9.startsWith("get")) {
                str = str9.substring(3);
            } else {
                str = str9;
            }
            if (str.endsWith("List") && !str.endsWith("OrBuilderList") && !str.equals("List")) {
                String valueOf = String.valueOf(str.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(str.substring(1, str.length() - 4));
                if (valueOf2.length() != 0) {
                    str8 = valueOf.concat(valueOf2);
                } else {
                    str8 = new String(valueOf);
                }
                Method method2 = (Method) hashMap.get(str9);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    m25888b(sb, i, m25887c(str8), AbstractC0955x8.m24982h(method2, interfaceC0634ea, new Object[0]));
                }
            }
            if (str.endsWith("Map") && !str.equals("Map")) {
                String valueOf3 = String.valueOf(str.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(str.substring(1, str.length() - 3));
                if (valueOf4.length() != 0) {
                    str7 = valueOf3.concat(valueOf4);
                } else {
                    str7 = new String(valueOf3);
                }
                Method method3 = (Method) hashMap.get(str9);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    m25888b(sb, i, m25887c(str7), AbstractC0955x8.m24982h(method3, interfaceC0634ea, new Object[0]));
                }
            }
            if (str.length() != 0) {
                str2 = "set".concat(str);
            } else {
                str2 = new String("set");
            }
            if (((Method) hashMap2.get(str2)) != null) {
                if (str.endsWith("Bytes")) {
                    String valueOf5 = String.valueOf(str.substring(0, str.length() - 5));
                    if (valueOf5.length() != 0) {
                        str6 = "get".concat(valueOf5);
                    } else {
                        str6 = new String("get");
                    }
                    if (!hashMap.containsKey(str6)) {
                    }
                }
                String valueOf6 = String.valueOf(str.substring(0, 1).toLowerCase());
                String valueOf7 = String.valueOf(str.substring(1));
                if (valueOf7.length() != 0) {
                    str3 = valueOf6.concat(valueOf7);
                } else {
                    str3 = new String(valueOf6);
                }
                if (str.length() != 0) {
                    str4 = "get".concat(str);
                } else {
                    str4 = new String("get");
                }
                Method method4 = (Method) hashMap.get(str4);
                if (str.length() != 0) {
                    str5 = "has".concat(str);
                } else {
                    str5 = new String("has");
                }
                Method method5 = (Method) hashMap.get(str5);
                if (method4 != null) {
                    Object m24982h = AbstractC0955x8.m24982h(method4, interfaceC0634ea, new Object[0]);
                    if (method5 == null) {
                        if (m24982h instanceof Boolean) {
                            if (((Boolean) m24982h).booleanValue()) {
                                m25888b(sb, i, m25887c(str3), m24982h);
                            }
                        } else if (m24982h instanceof Integer) {
                            if (((Integer) m24982h).intValue() != 0) {
                                m25888b(sb, i, m25887c(str3), m24982h);
                            }
                        } else if (m24982h instanceof Float) {
                            if (((Float) m24982h).floatValue() != 0.0f) {
                                m25888b(sb, i, m25887c(str3), m24982h);
                            }
                        } else if (m24982h instanceof Double) {
                            if (((Double) m24982h).doubleValue() != 0.0d) {
                                m25888b(sb, i, m25887c(str3), m24982h);
                            }
                        } else {
                            if (m24982h instanceof String) {
                                equals = m24982h.equals("");
                            } else if (m24982h instanceof AbstractC0937w7) {
                                equals = m24982h.equals(AbstractC0937w7.f2373b);
                            } else if (m24982h instanceof InterfaceC0634ea) {
                                if (m24982h != ((InterfaceC0634ea) m24982h).mo24987a()) {
                                    m25888b(sb, i, m25887c(str3), m24982h);
                                }
                            } else {
                                if ((m24982h instanceof Enum) && ((Enum) m24982h).ordinal() == 0) {
                                }
                                m25888b(sb, i, m25887c(str3), m24982h);
                            }
                            if (!equals) {
                                m25888b(sb, i, m25887c(str3), m24982h);
                            }
                        }
                    } else if (((Boolean) AbstractC0955x8.m24982h(method5, interfaceC0634ea, new Object[0])).booleanValue()) {
                        m25888b(sb, i, m25887c(str3), m24982h);
                    }
                }
            }
        }
        if (!(interfaceC0634ea instanceof AbstractC0921v8)) {
            C0703ib c0703ib = ((AbstractC0955x8) interfaceC0634ea).zzc;
            if (c0703ib != null) {
                c0703ib.m25788g(sb, i);
                return;
            }
            return;
        }
        AbstractC0921v8 abstractC0921v8 = (AbstractC0921v8) interfaceC0634ea;
        throw null;
    }
}
