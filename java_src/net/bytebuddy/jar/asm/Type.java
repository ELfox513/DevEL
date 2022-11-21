package net.bytebuddy.jar.asm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public final class Type {
    public static final int ARRAY = 9;
    public static final int BOOLEAN = 1;
    public static final int BYTE = 3;
    public static final int CHAR = 2;
    public static final int DOUBLE = 8;
    public static final int FLOAT = 6;
    public static final int INT = 5;
    private static final int INTERNAL = 12;
    public static final int LONG = 7;
    public static final int METHOD = 11;
    public static final int OBJECT = 10;
    public static final int SHORT = 4;
    public static final int VOID = 0;
    private final int sort;
    private final int valueBegin;
    private final String valueBuffer;
    private final int valueEnd;
    private static final String PRIMITIVE_DESCRIPTORS = "VZCBSIFJD";
    public static final Type VOID_TYPE = new Type(0, PRIMITIVE_DESCRIPTORS, 0, 1);
    public static final Type BOOLEAN_TYPE = new Type(1, PRIMITIVE_DESCRIPTORS, 1, 2);
    public static final Type CHAR_TYPE = new Type(2, PRIMITIVE_DESCRIPTORS, 2, 3);
    public static final Type BYTE_TYPE = new Type(3, PRIMITIVE_DESCRIPTORS, 3, 4);
    public static final Type SHORT_TYPE = new Type(4, PRIMITIVE_DESCRIPTORS, 4, 5);
    public static final Type INT_TYPE = new Type(5, PRIMITIVE_DESCRIPTORS, 5, 6);
    public static final Type FLOAT_TYPE = new Type(6, PRIMITIVE_DESCRIPTORS, 6, 7);
    public static final Type LONG_TYPE = new Type(7, PRIMITIVE_DESCRIPTORS, 7, 8);
    public static final Type DOUBLE_TYPE = new Type(8, PRIMITIVE_DESCRIPTORS, 8, 9);

    /* renamed from: a */
    public static int m14835a(String str) {
        int i = 1;
        while (str.charAt(i) != ')') {
            while (str.charAt(i) == '[') {
                i++;
            }
            int i2 = i + 1;
            if (str.charAt(i) == 'L') {
                i = Math.max(i2, str.indexOf(59, i2) + 1);
            } else {
                i = i2;
            }
        }
        return i + 1;
    }

    private void appendDescriptor(StringBuilder sb) {
        int i = this.sort;
        if (i == 10) {
            sb.append((CharSequence) this.valueBuffer, this.valueBegin - 1, this.valueEnd + 1);
        } else if (i == 12) {
            sb.append('L');
            sb.append((CharSequence) this.valueBuffer, this.valueBegin, this.valueEnd);
            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
        } else {
            sb.append((CharSequence) this.valueBuffer, this.valueBegin, this.valueEnd);
        }
    }

    public static String getMethodDescriptor(Type type, Type... typeArr) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        for (Type type2 : typeArr) {
            type2.appendDescriptor(sb);
        }
        sb.append(')');
        type.appendDescriptor(sb);
        return sb.toString();
    }

    public static Type getMethodType(String str) {
        return new Type(11, str, 0, str.length());
    }

    public static Type getType(String str) {
        return getTypeInternal(str, 0, str.length());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Type)) {
            return false;
        }
        Type type = (Type) obj;
        int i = this.sort;
        int i2 = 10;
        if (i == 12) {
            i = 10;
        }
        int i3 = type.sort;
        if (i3 != 12) {
            i2 = i3;
        }
        if (i != i2) {
            return false;
        }
        int i4 = this.valueBegin;
        int i5 = this.valueEnd;
        int i6 = type.valueBegin;
        if (i5 - i4 != type.valueEnd - i6) {
            return false;
        }
        while (i4 < i5) {
            if (this.valueBuffer.charAt(i4) != type.valueBuffer.charAt(i6)) {
                return false;
            }
            i4++;
            i6++;
        }
        return true;
    }

    public Type[] getArgumentTypes() {
        return getArgumentTypes(getDescriptor());
    }

    public int getArgumentsAndReturnSizes() {
        return getArgumentsAndReturnSizes(getDescriptor());
    }

    public String getDescriptor() {
        int i = this.sort;
        if (i == 10) {
            return this.valueBuffer.substring(this.valueBegin - 1, this.valueEnd + 1);
        }
        if (i == 12) {
            return 'L' + this.valueBuffer.substring(this.valueBegin, this.valueEnd) + TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER;
        }
        return this.valueBuffer.substring(this.valueBegin, this.valueEnd);
    }

    public int getDimensions() {
        int i = 1;
        while (this.valueBuffer.charAt(this.valueBegin + i) == '[') {
            i++;
        }
        return i;
    }

    public String getInternalName() {
        return this.valueBuffer.substring(this.valueBegin, this.valueEnd);
    }

    public Type getReturnType() {
        return getReturnType(getDescriptor());
    }

    public int getSort() {
        int i = this.sort;
        if (i == 12) {
            return 10;
        }
        return i;
    }

    public String toString() {
        return getDescriptor();
    }

    public static Type[] getArgumentTypes(String str) {
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (str.charAt(i2) != ')') {
            while (str.charAt(i2) == '[') {
                i2++;
            }
            int i4 = i2 + 1;
            i2 = str.charAt(i2) == 'L' ? Math.max(i4, str.indexOf(59, i4) + 1) : i4;
            i3++;
        }
        Type[] typeArr = new Type[i3];
        int i5 = 1;
        while (str.charAt(i5) != ')') {
            int i6 = i5;
            while (str.charAt(i6) == '[') {
                i6++;
            }
            int i7 = i6 + 1;
            if (str.charAt(i6) == 'L') {
                i7 = Math.max(i7, str.indexOf(59, i7) + 1);
            }
            typeArr[i] = getTypeInternal(str, i5, i7);
            i++;
            i5 = i7;
        }
        return typeArr;
    }

    public static int getArgumentsAndReturnSizes(String str) {
        int i = 1;
        char charAt = str.charAt(1);
        int i2 = 1;
        int i3 = 1;
        while (charAt != ')') {
            if (charAt == 'J' || charAt == 'D') {
                i2++;
                i3 += 2;
            } else {
                while (str.charAt(i2) == '[') {
                    i2++;
                }
                int i4 = i2 + 1;
                if (str.charAt(i2) == 'L') {
                    i4 = Math.max(i4, str.indexOf(59, i4) + 1);
                }
                i3++;
                i2 = i4;
            }
            charAt = str.charAt(i2);
        }
        char charAt2 = str.charAt(i2 + 1);
        if (charAt2 == 'V') {
            return i3 << 2;
        }
        return (i3 << 2) | ((charAt2 == 'J' || charAt2 == 'D') ? 2 : 2);
    }

    public static String getConstructorDescriptor(Constructor<?> constructor) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        for (Class<?> cls : constructor.getParameterTypes()) {
            appendDescriptor(cls, sb);
        }
        sb.append(")V");
        return sb.toString();
    }

    public static String getInternalName(Class<?> cls) {
        return cls.getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
    }

    public static Type getMethodType(Type type, Type... typeArr) {
        return getType(getMethodDescriptor(type, typeArr));
    }

    public static Type getObjectType(String str) {
        int i;
        if (str.charAt(0) == '[') {
            i = 9;
        } else {
            i = 12;
        }
        return new Type(i, str, 0, str.length());
    }

    public static Type getReturnType(String str) {
        return getTypeInternal(str, m14835a(str), str.length());
    }

    public static Type getType(Class<?> cls) {
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                return INT_TYPE;
            }
            if (cls == Void.TYPE) {
                return VOID_TYPE;
            }
            if (cls == Boolean.TYPE) {
                return BOOLEAN_TYPE;
            }
            if (cls == Byte.TYPE) {
                return BYTE_TYPE;
            }
            if (cls == Character.TYPE) {
                return CHAR_TYPE;
            }
            if (cls == Short.TYPE) {
                return SHORT_TYPE;
            }
            if (cls == Double.TYPE) {
                return DOUBLE_TYPE;
            }
            if (cls == Float.TYPE) {
                return FLOAT_TYPE;
            }
            if (cls == Long.TYPE) {
                return LONG_TYPE;
            }
            throw new AssertionError();
        }
        return getType(getDescriptor(cls));
    }

    public String getClassName() {
        switch (this.sort) {
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
                StringBuilder sb = new StringBuilder(getElementType().getClassName());
                for (int dimensions = getDimensions(); dimensions > 0; dimensions--) {
                    sb.append("[]");
                }
                return sb.toString();
            case 10:
            case 12:
                return this.valueBuffer.substring(this.valueBegin, this.valueEnd).replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
            case 11:
            default:
                throw new AssertionError();
        }
    }

    public int getOpcode(int i) {
        if (i != 46 && i != 79) {
            switch (this.sort) {
                case 0:
                    if (i == 172) {
                        return 177;
                    }
                    throw new UnsupportedOperationException();
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    return i;
                case 6:
                    return i + 2;
                case 7:
                    return i + 1;
                case 8:
                    return i + 3;
                case 9:
                case 10:
                case 12:
                    if (i != 21 && i != 54 && i != 172) {
                        throw new UnsupportedOperationException();
                    }
                    return i + 4;
                case 11:
                    throw new UnsupportedOperationException();
                default:
                    throw new AssertionError();
            }
        }
        switch (this.sort) {
            case 0:
            case 11:
                throw new UnsupportedOperationException();
            case 1:
            case 3:
                return i + 5;
            case 2:
                return i + 6;
            case 4:
                return i + 7;
            case 5:
                return i;
            case 6:
                return i + 2;
            case 7:
                return i + 1;
            case 8:
                return i + 3;
            case 9:
            case 10:
            case 12:
                return i + 4;
            default:
                throw new AssertionError();
        }
    }

    public int getSize() {
        switch (this.sort) {
            case 0:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 9:
            case 10:
            case 12:
                return 1;
            case 7:
            case 8:
                return 2;
            case 11:
            default:
                throw new AssertionError();
        }
    }

    public int hashCode() {
        int i;
        int i2 = this.sort;
        if (i2 == 12) {
            i = 10;
        } else {
            i = i2;
        }
        int i3 = i * 13;
        if (i2 >= 9) {
            int i4 = this.valueEnd;
            for (int i5 = this.valueBegin; i5 < i4; i5++) {
                i3 = (i3 + this.valueBuffer.charAt(i5)) * 17;
            }
        }
        return i3;
    }

    private Type(int i, String str, int i2, int i3) {
        this.sort = i;
        this.valueBuffer = str;
        this.valueBegin = i2;
        this.valueEnd = i3;
    }

    private static Type getTypeInternal(String str, int i, int i2) {
        char charAt = str.charAt(i);
        if (charAt != '(') {
            if (charAt != 'F') {
                if (charAt != 'L') {
                    if (charAt != 'S') {
                        if (charAt != 'V') {
                            if (charAt != 'I') {
                                if (charAt != 'J') {
                                    if (charAt != 'Z') {
                                        if (charAt != '[') {
                                            switch (charAt) {
                                                case 'B':
                                                    return BYTE_TYPE;
                                                case 'C':
                                                    return CHAR_TYPE;
                                                case 'D':
                                                    return DOUBLE_TYPE;
                                                default:
                                                    throw new IllegalArgumentException("Invalid descriptor: " + str);
                                            }
                                        }
                                        return new Type(9, str, i, i2);
                                    }
                                    return BOOLEAN_TYPE;
                                }
                                return LONG_TYPE;
                            }
                            return INT_TYPE;
                        }
                        return VOID_TYPE;
                    }
                    return SHORT_TYPE;
                }
                return new Type(10, str, i + 1, i2 - 1);
            }
            return FLOAT_TYPE;
        }
        return new Type(11, str, i, i2);
    }

    public Type getElementType() {
        return getTypeInternal(this.valueBuffer, this.valueBegin + getDimensions(), this.valueEnd);
    }

    public static Type getReturnType(Method method) {
        return getType(method.getReturnType());
    }

    private static void appendDescriptor(Class<?> cls, StringBuilder sb) {
        char c;
        while (cls.isArray()) {
            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            cls = cls.getComponentType();
        }
        if (cls.isPrimitive()) {
            if (cls == Integer.TYPE) {
                c = 'I';
            } else if (cls == Void.TYPE) {
                c = 'V';
            } else if (cls == Boolean.TYPE) {
                c = 'Z';
            } else if (cls == Byte.TYPE) {
                c = 'B';
            } else if (cls == Character.TYPE) {
                c = 'C';
            } else if (cls == Short.TYPE) {
                c = 'S';
            } else if (cls == Double.TYPE) {
                c = 'D';
            } else if (cls == Float.TYPE) {
                c = 'F';
            } else if (cls != Long.TYPE) {
                throw new AssertionError();
            } else {
                c = 'J';
            }
            sb.append(c);
            return;
        }
        sb.append('L');
        sb.append(getInternalName(cls));
        sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
    }

    public static String getDescriptor(Class<?> cls) {
        StringBuilder sb = new StringBuilder();
        appendDescriptor(cls, sb);
        return sb.toString();
    }

    public static String getMethodDescriptor(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        for (Class<?> cls : method.getParameterTypes()) {
            appendDescriptor(cls, sb);
        }
        sb.append(')');
        appendDescriptor(method.getReturnType(), sb);
        return sb.toString();
    }

    public static Type[] getArgumentTypes(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        Type[] typeArr = new Type[parameterTypes.length];
        for (int length = parameterTypes.length - 1; length >= 0; length--) {
            typeArr[length] = getType(parameterTypes[length]);
        }
        return typeArr;
    }

    public static Type getType(Constructor<?> constructor) {
        return getType(getConstructorDescriptor(constructor));
    }

    public static Type getType(Method method) {
        return getType(getMethodDescriptor(method));
    }
}
