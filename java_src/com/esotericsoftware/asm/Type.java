package com.esotericsoftware.asm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class Type {
    public static final int ARRAY = 9;
    public static final int BOOLEAN = 1;
    public static final Type BOOLEAN_TYPE;
    public static final int BYTE = 3;
    public static final Type BYTE_TYPE;
    public static final int CHAR = 2;
    public static final Type CHAR_TYPE;
    public static final int DOUBLE = 8;
    public static final Type DOUBLE_TYPE;
    public static final int FLOAT = 6;
    public static final Type FLOAT_TYPE;
    public static final int INT = 5;
    public static final Type INT_TYPE;
    public static final int LONG = 7;
    public static final Type LONG_TYPE;
    public static final int METHOD = 11;
    public static final int OBJECT = 10;
    public static final int SHORT = 4;
    public static final Type SHORT_TYPE;
    public static final int VOID = 0;
    public static final Type VOID_TYPE;

    /* renamed from: a */
    public final int f7159a;

    /* renamed from: b */
    public final char[] f7160b;

    /* renamed from: c */
    public final int f7161c;

    /* renamed from: d */
    public final int f7162d;

    static {
        m23328a();
        VOID_TYPE = new Type(0, null, 1443168256, 1);
        BOOLEAN_TYPE = new Type(1, null, 1509950721, 1);
        CHAR_TYPE = new Type(2, null, 1124075009, 1);
        BYTE_TYPE = new Type(3, null, 1107297537, 1);
        SHORT_TYPE = new Type(4, null, 1392510721, 1);
        INT_TYPE = new Type(5, null, 1224736769, 1);
        FLOAT_TYPE = new Type(6, null, 1174536705, 1);
        LONG_TYPE = new Type(7, null, 1241579778, 1);
        DOUBLE_TYPE = new Type(8, null, 1141048066, 1);
    }

    public Type(int i, char[] cArr, int i2, int i3) {
        this.f7159a = i;
        this.f7160b = cArr;
        this.f7161c = i2;
        this.f7162d = i3;
    }

    /* renamed from: a */
    public static /* synthetic */ void m23328a() {
    }

    /* renamed from: b */
    public static Type m23327b(char[] cArr, int i) {
        char c;
        char c2 = cArr[i];
        if (c2 != 'F') {
            if (c2 == 'L') {
                int i2 = 1;
                while (cArr[i + i2] != ';') {
                    i2++;
                }
                return new Type(10, cArr, i + 1, i2 - 1);
            } else if (c2 != 'S') {
                if (c2 != 'V') {
                    if (c2 != 'I') {
                        if (c2 != 'J') {
                            if (c2 != 'Z') {
                                if (c2 != '[') {
                                    switch (c2) {
                                        case 'B':
                                            return BYTE_TYPE;
                                        case 'C':
                                            return CHAR_TYPE;
                                        case 'D':
                                            return DOUBLE_TYPE;
                                        default:
                                            return new Type(11, cArr, i, cArr.length - i);
                                    }
                                }
                                int i3 = 1;
                                while (true) {
                                    c = cArr[i + i3];
                                    if (c != '[') {
                                        break;
                                    }
                                    i3++;
                                }
                                if (c == 'L') {
                                    do {
                                        i3++;
                                    } while (cArr[i + i3] != ';');
                                    return new Type(9, cArr, i, i3 + 1);
                                }
                                return new Type(9, cArr, i, i3 + 1);
                            }
                            return BOOLEAN_TYPE;
                        }
                        return LONG_TYPE;
                    }
                    return INT_TYPE;
                }
                return VOID_TYPE;
            } else {
                return SHORT_TYPE;
            }
        }
        return FLOAT_TYPE;
    }

    /* renamed from: d */
    public static void m23325d(StringBuffer stringBuffer, Class cls) {
        while (!cls.isPrimitive()) {
            if (!cls.isArray()) {
                stringBuffer.append('L');
                String name = cls.getName();
                int length = name.length();
                for (int i = 0; i < length; i++) {
                    char charAt = name.charAt(i);
                    if (charAt == '.') {
                        charAt = '/';
                    }
                    stringBuffer.append(charAt);
                }
                stringBuffer.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
                return;
            }
            stringBuffer.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            cls = cls.getComponentType();
        }
        stringBuffer.append(cls == Integer.TYPE ? 'I' : cls == Void.TYPE ? 'V' : cls == Boolean.TYPE ? 'Z' : cls == Byte.TYPE ? 'B' : cls == Character.TYPE ? 'C' : cls == Short.TYPE ? 'S' : cls == Double.TYPE ? 'D' : cls == Float.TYPE ? 'F' : 'J');
    }

    public static Type[] getArgumentTypes(String str) {
        char[] charArray = str.toCharArray();
        int i = 1;
        int i2 = 1;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            char c = charArray[i2];
            if (c == ')') {
                break;
            } else if (c == 'L') {
                while (true) {
                    i2 = i4 + 1;
                    if (charArray[i4] == ';') {
                        break;
                    }
                    i4 = i2;
                }
                i3++;
            } else {
                if (c != '[') {
                    i3++;
                }
                i2 = i4;
            }
        }
        Type[] typeArr = new Type[i3];
        int i5 = 0;
        while (charArray[i] != ')') {
            Type m23327b = m23327b(charArray, i);
            typeArr[i5] = m23327b;
            i += m23327b.f7162d + (m23327b.f7159a == 10 ? 2 : 0);
            i5++;
        }
        return typeArr;
    }

    public static Type[] getArgumentTypes(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        Type[] typeArr = new Type[parameterTypes.length];
        for (int length = parameterTypes.length - 1; length >= 0; length--) {
            typeArr[length] = getType(parameterTypes[length]);
        }
        return typeArr;
    }

    public static int getArgumentsAndReturnSizes(String str) {
        int i;
        char charAt;
        int i2 = 1;
        int i3 = 1;
        int i4 = 1;
        while (true) {
            i = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 == ')') {
                break;
            } else if (charAt2 == 'L') {
                while (true) {
                    i3 = i + 1;
                    if (str.charAt(i) == ';') {
                        break;
                    }
                    i = i3;
                }
                i4++;
            } else {
                if (charAt2 == '[') {
                    while (true) {
                        charAt = str.charAt(i);
                        if (charAt != '[') {
                            break;
                        }
                        i++;
                    }
                    if (charAt == 'D' || charAt == 'J') {
                        i4--;
                    }
                } else {
                    i4 = (charAt2 == 'D' || charAt2 == 'J') ? i4 + 2 : i4 + 1;
                }
                i3 = i;
            }
        }
        char charAt3 = str.charAt(i);
        int i5 = i4 << 2;
        if (charAt3 == 'V') {
            i2 = 0;
        } else if (charAt3 == 'D' || charAt3 == 'J') {
            i2 = 2;
        }
        return i5 | i2;
    }

    public static String getConstructorDescriptor(Constructor constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class<?> cls : parameterTypes) {
            m23325d(stringBuffer, cls);
        }
        stringBuffer.append(")V");
        return stringBuffer.toString();
    }

    public static String getDescriptor(Class cls) {
        StringBuffer stringBuffer = new StringBuffer();
        m23325d(stringBuffer, cls);
        return stringBuffer.toString();
    }

    public static String getInternalName(Class cls) {
        return cls.getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
    }

    public static String getMethodDescriptor(Type type, Type... typeArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Type type2 : typeArr) {
            type2.m23326c(stringBuffer);
        }
        stringBuffer.append(')');
        type.m23326c(stringBuffer);
        return stringBuffer.toString();
    }

    public static String getMethodDescriptor(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        for (Class<?> cls : parameterTypes) {
            m23325d(stringBuffer, cls);
        }
        stringBuffer.append(')');
        m23325d(stringBuffer, method.getReturnType());
        return stringBuffer.toString();
    }

    public static Type getMethodType(Type type, Type... typeArr) {
        return getType(getMethodDescriptor(type, typeArr));
    }

    public static Type getMethodType(String str) {
        return m23327b(str.toCharArray(), 0);
    }

    public static Type getObjectType(String str) {
        char[] charArray = str.toCharArray();
        return new Type(charArray[0] == '[' ? 9 : 10, charArray, 0, charArray.length);
    }

    public static Type getReturnType(String str) {
        return m23327b(str.toCharArray(), str.indexOf(41) + 1);
    }

    public static Type getReturnType(Method method) {
        return getType(method.getReturnType());
    }

    public static Type getType(Class cls) {
        return cls.isPrimitive() ? cls == Integer.TYPE ? INT_TYPE : cls == Void.TYPE ? VOID_TYPE : cls == Boolean.TYPE ? BOOLEAN_TYPE : cls == Byte.TYPE ? BYTE_TYPE : cls == Character.TYPE ? CHAR_TYPE : cls == Short.TYPE ? SHORT_TYPE : cls == Double.TYPE ? DOUBLE_TYPE : cls == Float.TYPE ? FLOAT_TYPE : LONG_TYPE : getType(getDescriptor(cls));
    }

    public static Type getType(String str) {
        return m23327b(str.toCharArray(), 0);
    }

    public static Type getType(Constructor constructor) {
        return getType(getConstructorDescriptor(constructor));
    }

    public static Type getType(Method method) {
        return getType(getMethodDescriptor(method));
    }

    /* renamed from: c */
    public final void m23326c(StringBuffer stringBuffer) {
        char c;
        char[] cArr = this.f7160b;
        if (cArr == null) {
            c = (char) ((this.f7161c & (-16777216)) >>> 24);
        } else if (this.f7159a != 10) {
            stringBuffer.append(cArr, this.f7161c, this.f7162d);
            return;
        } else {
            stringBuffer.append('L');
            stringBuffer.append(this.f7160b, this.f7161c, this.f7162d);
            c = TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER;
        }
        stringBuffer.append(c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Type) {
            Type type = (Type) obj;
            int i = this.f7159a;
            if (i != type.f7159a) {
                return false;
            }
            if (i >= 9) {
                int i2 = this.f7162d;
                if (i2 != type.f7162d) {
                    return false;
                }
                int i3 = this.f7161c;
                int i4 = type.f7161c;
                int i5 = i2 + i3;
                while (i3 < i5) {
                    if (this.f7160b[i3] != type.f7160b[i4]) {
                        return false;
                    }
                    i3++;
                    i4++;
                }
            }
            return true;
        }
        return false;
    }

    public Type[] getArgumentTypes() {
        return getArgumentTypes(getDescriptor());
    }

    public int getArgumentsAndReturnSizes() {
        return getArgumentsAndReturnSizes(getDescriptor());
    }

    public String getClassName() {
        switch (this.f7159a) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return "int";
            case 6:
                return "float";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                StringBuffer stringBuffer = new StringBuffer(getElementType().getClassName());
                for (int dimensions = getDimensions(); dimensions > 0; dimensions--) {
                    stringBuffer.append("[]");
                }
                return stringBuffer.toString();
            case 10:
                return new String(this.f7160b, this.f7161c, this.f7162d).replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
            default:
                return null;
        }
    }

    public String getDescriptor() {
        StringBuffer stringBuffer = new StringBuffer();
        m23326c(stringBuffer);
        return stringBuffer.toString();
    }

    public int getDimensions() {
        int i = 1;
        while (this.f7160b[this.f7161c + i] == '[') {
            i++;
        }
        return i;
    }

    public Type getElementType() {
        return m23327b(this.f7160b, this.f7161c + getDimensions());
    }

    public String getInternalName() {
        return new String(this.f7160b, this.f7161c, this.f7162d);
    }

    public int getOpcode(int i) {
        if (i == 46 || i == 79) {
            return i + (this.f7160b == null ? (this.f7161c & 65280) >> 8 : 4);
        }
        return i + (this.f7160b == null ? (this.f7161c & 16711680) >> 16 : 4);
    }

    public Type getReturnType() {
        return getReturnType(getDescriptor());
    }

    public int getSize() {
        if (this.f7160b == null) {
            return this.f7161c & 255;
        }
        return 1;
    }

    public int getSort() {
        return this.f7159a;
    }

    public int hashCode() {
        int i = this.f7159a;
        int i2 = i * 13;
        if (i >= 9) {
            int i3 = this.f7161c;
            int i4 = this.f7162d + i3;
            while (i3 < i4) {
                i2 = (i2 + this.f7160b[i3]) * 17;
                i3++;
            }
        }
        return i2;
    }

    public String toString() {
        return getDescriptor();
    }
}
