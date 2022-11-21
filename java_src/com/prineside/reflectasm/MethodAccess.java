package com.prineside.reflectasm;

import com.esotericsoftware.asm.ClassWriter;
import com.esotericsoftware.asm.Label;
import com.esotericsoftware.asm.MethodVisitor;
import com.esotericsoftware.asm.Type;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes2.dex */
public abstract class MethodAccess {

    /* renamed from: a */
    public String[] f8395a;

    /* renamed from: b */
    public Class[][] f8396b;

    /* renamed from: c */
    public Class[] f8397c;

    public int getIndex(String str) {
        int length = this.f8395a.length;
        for (int i = 0; i < length; i++) {
            if (this.f8395a[i].equals(str)) {
                return i;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private method: " + str);
    }

    public String[] getMethodNames() {
        return this.f8395a;
    }

    public Class[][] getParameterTypes() {
        return this.f8396b;
    }

    public Class[] getReturnTypes() {
        return this.f8397c;
    }

    public abstract Object invoke(Object obj, int i, Object... objArr);

    public Object invoke(Object obj, String str, Class[] clsArr, Object... objArr) {
        return invoke(obj, getIndex(str, clsArr), objArr);
    }

    public static MethodAccess get(Class cls) {
        Class m22229g;
        Class[][] clsArr;
        Class[] clsArr2;
        String str;
        int i;
        int i2;
        Class[][] clsArr3;
        Class[] clsArr4;
        String str2;
        boolean isInterface = cls.isInterface();
        if (!isInterface && cls.getSuperclass() == null && cls != Object.class) {
            throw new IllegalArgumentException("The type must not be an interface, a primitive type, or void.");
        }
        ArrayList arrayList = new ArrayList();
        if (!isInterface) {
            for (Class cls2 = cls; cls2 != Object.class; cls2 = cls2.getSuperclass()) {
                m22217a(cls2, arrayList);
            }
        } else {
            m22216b(cls, arrayList);
        }
        int size = arrayList.size();
        String[] strArr = new String[size];
        Class[][] clsArr5 = new Class[size];
        Class[] clsArr6 = new Class[size];
        for (int i3 = 0; i3 < size; i3++) {
            Method method = (Method) arrayList.get(i3);
            strArr[i3] = method.getName();
            clsArr5[i3] = method.getParameterTypes();
            clsArr6[i3] = method.getReturnType();
        }
        String name = cls.getName();
        String str3 = name + "MethodAccess";
        if (str3.startsWith("java.")) {
            str3 = "reflectasm." + str3;
        }
        AccessClassLoader m22232d = AccessClassLoader.m22232d(cls);
        synchronized (m22232d) {
            m22229g = m22232d.m22229g(str3);
            if (m22229g == null) {
                String replace = str3.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
                String replace2 = name.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
                ClassWriter classWriter = new ClassWriter(1);
                classWriter.visit(50, 33, replace, null, "com/prineside/reflectasm/MethodAccess", null);
                MethodVisitor visitMethod = classWriter.visitMethod(1, MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "()V", null, null);
                visitMethod.visitCode();
                visitMethod.visitVarInsn(25, 0);
                visitMethod.visitMethodInsn(183, "com/prineside/reflectasm/MethodAccess", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "()V");
                visitMethod.visitInsn(177);
                visitMethod.visitMaxs(0, 0);
                visitMethod.visitEnd();
                MethodVisitor visitMethod2 = classWriter.visitMethod(129, "invoke", "(Ljava/lang/Object;I[Ljava/lang/Object;)Ljava/lang/Object;", null, null);
                visitMethod2.visitCode();
                if (!arrayList.isEmpty()) {
                    visitMethod2.visitVarInsn(25, 1);
                    visitMethod2.visitTypeInsn(192, replace2);
                    visitMethod2.visitVarInsn(58, 4);
                    visitMethod2.visitVarInsn(21, 2);
                    Label[] labelArr = new Label[size];
                    for (int i4 = 0; i4 < size; i4++) {
                        labelArr[i4] = new Label();
                    }
                    Label label = new Label();
                    visitMethod2.visitTableSwitchInsn(0, size - 1, label, labelArr);
                    StringBuilder sb = new StringBuilder(128);
                    int i5 = 0;
                    while (i5 < size) {
                        visitMethod2.visitLabel(labelArr[i5]);
                        if (i5 == 0) {
                            i = size;
                            visitMethod2.visitFrame(1, 1, new Object[]{replace2}, 0, null);
                        } else {
                            i = size;
                            visitMethod2.visitFrame(3, 0, null, 0, null);
                        }
                        visitMethod2.visitVarInsn(25, 4);
                        sb.setLength(0);
                        sb.append('(');
                        Class[] clsArr7 = clsArr5[i5];
                        Class cls3 = clsArr6[i5];
                        Label[] labelArr2 = labelArr;
                        int i6 = 0;
                        while (i6 < clsArr7.length) {
                            Class[] clsArr8 = clsArr6;
                            visitMethod2.visitVarInsn(25, 3);
                            visitMethod2.visitIntInsn(16, i6);
                            visitMethod2.visitInsn(50);
                            Type type = Type.getType(clsArr7[i6]);
                            switch (type.getSort()) {
                                case 1:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Boolean");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Boolean", "booleanValue", "()Z");
                                    break;
                                case 2:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Character");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Character", "charValue", "()C");
                                    break;
                                case 3:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Byte");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Byte", "byteValue", "()B");
                                    break;
                                case 4:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Short");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Short", "shortValue", "()S");
                                    break;
                                case 5:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Integer");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Integer", "intValue", "()I");
                                    break;
                                case 6:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Float");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Float", "floatValue", "()F");
                                    break;
                                case 7:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Long");
                                    visitMethod2.visitMethodInsn(182, "java/lang/Long", "longValue", "()J");
                                    break;
                                case 8:
                                    clsArr4 = clsArr7;
                                    visitMethod2.visitTypeInsn(192, "java/lang/Double");
                                    clsArr3 = clsArr5;
                                    str2 = str3;
                                    visitMethod2.visitMethodInsn(182, "java/lang/Double", "doubleValue", "()D");
                                    break;
                                case 9:
                                    clsArr4 = clsArr7;
                                    visitMethod2.visitTypeInsn(192, type.getDescriptor());
                                    clsArr3 = clsArr5;
                                    str2 = str3;
                                    break;
                                case 10:
                                    clsArr4 = clsArr7;
                                    visitMethod2.visitTypeInsn(192, type.getInternalName());
                                    clsArr3 = clsArr5;
                                    str2 = str3;
                                    break;
                                default:
                                    clsArr3 = clsArr5;
                                    clsArr4 = clsArr7;
                                    str2 = str3;
                                    break;
                            }
                            sb.append(type.getDescriptor());
                            i6++;
                            clsArr7 = clsArr4;
                            clsArr6 = clsArr8;
                            clsArr5 = clsArr3;
                            str3 = str2;
                        }
                        Class[][] clsArr9 = clsArr5;
                        Class[] clsArr10 = clsArr6;
                        String str4 = str3;
                        sb.append(')');
                        sb.append(Type.getDescriptor(cls3));
                        if (isInterface) {
                            i2 = 185;
                        } else if (Modifier.isStatic(((Method) arrayList.get(i5)).getModifiers())) {
                            i2 = 184;
                        } else {
                            i2 = 182;
                        }
                        visitMethod2.visitMethodInsn(i2, replace2, strArr[i5], sb.toString());
                        switch (Type.getType(cls3).getSort()) {
                            case 0:
                                visitMethod2.visitInsn(1);
                                continue;
                                visitMethod2.visitInsn(176);
                                i5++;
                                labelArr = labelArr2;
                                size = i;
                                clsArr6 = clsArr10;
                                clsArr5 = clsArr9;
                                str3 = str4;
                            case 1:
                                visitMethod2.visitMethodInsn(184, "java/lang/Boolean", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(Z)Ljava/lang/Boolean;");
                                break;
                            case 2:
                                visitMethod2.visitMethodInsn(184, "java/lang/Character", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(C)Ljava/lang/Character;");
                                break;
                            case 3:
                                visitMethod2.visitMethodInsn(184, "java/lang/Byte", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(B)Ljava/lang/Byte;");
                                break;
                            case 4:
                                visitMethod2.visitMethodInsn(184, "java/lang/Short", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(S)Ljava/lang/Short;");
                                break;
                            case 5:
                                visitMethod2.visitMethodInsn(184, "java/lang/Integer", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(I)Ljava/lang/Integer;");
                                break;
                            case 6:
                                visitMethod2.visitMethodInsn(184, "java/lang/Float", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(F)Ljava/lang/Float;");
                                break;
                            case 7:
                                visitMethod2.visitMethodInsn(184, "java/lang/Long", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(J)Ljava/lang/Long;");
                                break;
                            case 8:
                                visitMethod2.visitMethodInsn(184, "java/lang/Double", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(D)Ljava/lang/Double;");
                                break;
                        }
                        visitMethod2.visitInsn(176);
                        i5++;
                        labelArr = labelArr2;
                        size = i;
                        clsArr6 = clsArr10;
                        clsArr5 = clsArr9;
                        str3 = str4;
                    }
                    clsArr = clsArr5;
                    clsArr2 = clsArr6;
                    str = str3;
                    visitMethod2.visitLabel(label);
                    visitMethod2.visitFrame(3, 0, null, 0, null);
                } else {
                    clsArr = clsArr5;
                    clsArr2 = clsArr6;
                    str = str3;
                }
                visitMethod2.visitTypeInsn(187, "java/lang/IllegalArgumentException");
                visitMethod2.visitInsn(89);
                visitMethod2.visitTypeInsn(187, "java/lang/StringBuilder");
                visitMethod2.visitInsn(89);
                visitMethod2.visitLdcInsn("Method not found: ");
                visitMethod2.visitMethodInsn(183, "java/lang/StringBuilder", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/String;)V");
                visitMethod2.visitVarInsn(21, 2);
                visitMethod2.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
                visitMethod2.visitMethodInsn(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
                visitMethod2.visitMethodInsn(183, "java/lang/IllegalArgumentException", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/String;)V");
                visitMethod2.visitInsn(191);
                visitMethod2.visitMaxs(0, 0);
                visitMethod2.visitEnd();
                classWriter.visitEnd();
                str3 = str;
                m22229g = m22232d.m22234b(str3, classWriter.toByteArray());
            } else {
                clsArr = clsArr5;
                clsArr2 = clsArr6;
            }
        }
        try {
            MethodAccess methodAccess = (MethodAccess) m22229g.newInstance();
            methodAccess.f8395a = strArr;
            methodAccess.f8396b = clsArr;
            methodAccess.f8397c = clsArr2;
            return methodAccess;
        } catch (Throwable th) {
            throw new RuntimeException("Error constructing method access class: " + str3, th);
        }
    }

    public Object invoke(Object obj, String str, Object... objArr) {
        return invoke(obj, getIndex(str, objArr == null ? 0 : objArr.length), objArr);
    }

    /* renamed from: a */
    public static void m22217a(Class cls, ArrayList<Method> arrayList) {
        Method[] declaredMethods;
        for (Method method : cls.getDeclaredMethods()) {
            if (!Modifier.isPrivate(method.getModifiers())) {
                arrayList.add(method);
            }
        }
    }

    /* renamed from: b */
    public static void m22216b(Class cls, ArrayList<Method> arrayList) {
        m22217a(cls, arrayList);
        for (Class<?> cls2 : cls.getInterfaces()) {
            m22216b(cls2, arrayList);
        }
    }

    public int getIndex(String str, Class... clsArr) {
        int length = this.f8395a.length;
        for (int i = 0; i < length; i++) {
            if (this.f8395a[i].equals(str) && Arrays.equals(clsArr, this.f8396b[i])) {
                return i;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private method: " + str + " " + Arrays.toString(clsArr));
    }

    public int getIndex(String str, int i) {
        int length = this.f8395a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f8395a[i2].equals(str) && this.f8396b[i2].length == i) {
                return i2;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private method: " + str + " with " + i + " params.");
    }
}
