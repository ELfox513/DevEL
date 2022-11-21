package p168r4;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import net.bytebuddy.utility.JavaConstant;
/* renamed from: r4.co3 */
/* loaded from: classes2.dex */
public final class co3 {
    /* renamed from: a */
    public static String m12380a(ao3 ao3Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        m12378c(ao3Var, sb, 0);
        return sb.toString();
    }

    /* renamed from: b */
    public static final void m12379b(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                m12379b(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                m12379b(sb, i, str, entry);
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
                sb.append(fp3.m11398a(ll3.m9630M((String) obj)));
                sb.append('\"');
            } else if (obj instanceof ll3) {
                sb.append(": \"");
                sb.append(fp3.m11398a((ll3) obj));
                sb.append('\"');
            } else if (obj instanceof pm3) {
                sb.append(" {");
                m12378c((pm3) obj, sb, i + 2);
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
                m12379b(sb, i4, "key", entry2.getKey());
                m12379b(sb, i4, "value", entry2.getValue());
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
    public static void m12378c(ao3 ao3Var, StringBuilder sb, int i) {
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
        for (Method method : ao3Var.getClass().getDeclaredMethods()) {
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
                    m12379b(sb, i, m12377d(str8), pm3.m8263i(method2, ao3Var, new Object[0]));
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
                    m12379b(sb, i, m12377d(str7), pm3.m8263i(method3, ao3Var, new Object[0]));
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
                    Object m8263i = pm3.m8263i(method4, ao3Var, new Object[0]);
                    if (method5 == null) {
                        if (m8263i instanceof Boolean) {
                            if (((Boolean) m8263i).booleanValue()) {
                                m12379b(sb, i, m12377d(str3), m8263i);
                            }
                        } else if (m8263i instanceof Integer) {
                            if (((Integer) m8263i).intValue() != 0) {
                                m12379b(sb, i, m12377d(str3), m8263i);
                            }
                        } else if (m8263i instanceof Float) {
                            if (((Float) m8263i).floatValue() != 0.0f) {
                                m12379b(sb, i, m12377d(str3), m8263i);
                            }
                        } else if (m8263i instanceof Double) {
                            if (((Double) m8263i).doubleValue() != 0.0d) {
                                m12379b(sb, i, m12377d(str3), m8263i);
                            }
                        } else {
                            if (m8263i instanceof String) {
                                equals = m8263i.equals("");
                            } else if (m8263i instanceof ll3) {
                                equals = m8263i.equals(ll3.f27255b);
                            } else if (m8263i instanceof ao3) {
                                if (m8263i != ((ao3) m8263i).mo8265f()) {
                                    m12379b(sb, i, m12377d(str3), m8263i);
                                }
                            } else {
                                if ((m8263i instanceof Enum) && ((Enum) m8263i).ordinal() == 0) {
                                }
                                m12379b(sb, i, m12377d(str3), m8263i);
                            }
                            if (!equals) {
                                m12379b(sb, i, m12377d(str3), m8263i);
                            }
                        }
                    } else if (((Boolean) pm3.m8263i(method5, ao3Var, new Object[0])).booleanValue()) {
                        m12379b(sb, i, m12377d(str3), m8263i);
                    }
                }
            }
        }
        if (!(ao3Var instanceof mm3)) {
            ip3 ip3Var = ((pm3) ao3Var).zzc;
            if (ip3Var != null) {
                ip3Var.m10566g(sb, i);
                return;
            }
            return;
        }
        mm3 mm3Var = (mm3) ao3Var;
        throw null;
    }

    /* renamed from: d */
    public static final String m12377d(String str) {
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
