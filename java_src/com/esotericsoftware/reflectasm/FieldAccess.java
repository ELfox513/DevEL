package com.esotericsoftware.reflectasm;

import com.esotericsoftware.asm.ClassWriter;
import com.esotericsoftware.asm.Label;
import com.esotericsoftware.asm.MethodVisitor;
import com.esotericsoftware.asm.Type;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public abstract class FieldAccess {

    /* renamed from: a */
    public String[] f7608a;

    /* renamed from: b */
    public Class[] f7609b;

    /* renamed from: c */
    public Field[] f7610c;

    /* renamed from: a */
    public static void m23114a(ClassWriter classWriter) {
        MethodVisitor visitMethod = classWriter.visitMethod(1, MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "()V", null, null);
        visitMethod.visitCode();
        visitMethod.visitVarInsn(25, 0);
        visitMethod.visitMethodInsn(183, "com/esotericsoftware/reflectasm/FieldAccess", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "()V");
        visitMethod.visitInsn(177);
        visitMethod.visitMaxs(1, 1);
        visitMethod.visitEnd();
    }

    /* renamed from: b */
    public static void m23113b(ClassWriter classWriter, String str, ArrayList<Field> arrayList) {
        int i;
        MethodVisitor visitMethod = classWriter.visitMethod(1, "get", "(Ljava/lang/Object;I)Ljava/lang/Object;", null, null);
        visitMethod.visitCode();
        visitMethod.visitVarInsn(21, 2);
        if (!arrayList.isEmpty()) {
            i = 5;
            int size = arrayList.size();
            Label[] labelArr = new Label[size];
            for (int i2 = 0; i2 < size; i2++) {
                labelArr[i2] = new Label();
            }
            Label label = new Label();
            visitMethod.visitTableSwitchInsn(0, size - 1, label, labelArr);
            for (int i3 = 0; i3 < size; i3++) {
                Field field = arrayList.get(i3);
                visitMethod.visitLabel(labelArr[i3]);
                visitMethod.visitFrame(3, 0, null, 0, null);
                visitMethod.visitVarInsn(25, 1);
                visitMethod.visitTypeInsn(192, str);
                visitMethod.visitFieldInsn(180, field.getDeclaringClass().getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), field.getName(), Type.getDescriptor(field.getType()));
                switch (Type.getType(field.getType()).getSort()) {
                    case 1:
                        visitMethod.visitMethodInsn(184, "java/lang/Boolean", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(Z)Ljava/lang/Boolean;");
                        break;
                    case 2:
                        visitMethod.visitMethodInsn(184, "java/lang/Character", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(C)Ljava/lang/Character;");
                        break;
                    case 3:
                        visitMethod.visitMethodInsn(184, "java/lang/Byte", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(B)Ljava/lang/Byte;");
                        break;
                    case 4:
                        visitMethod.visitMethodInsn(184, "java/lang/Short", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(S)Ljava/lang/Short;");
                        break;
                    case 5:
                        visitMethod.visitMethodInsn(184, "java/lang/Integer", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(I)Ljava/lang/Integer;");
                        break;
                    case 6:
                        visitMethod.visitMethodInsn(184, "java/lang/Float", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(F)Ljava/lang/Float;");
                        break;
                    case 7:
                        visitMethod.visitMethodInsn(184, "java/lang/Long", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(J)Ljava/lang/Long;");
                        break;
                    case 8:
                        visitMethod.visitMethodInsn(184, "java/lang/Double", ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, "(D)Ljava/lang/Double;");
                        break;
                }
                visitMethod.visitInsn(176);
            }
            visitMethod.visitLabel(label);
            visitMethod.visitFrame(3, 0, null, 0, null);
        } else {
            i = 6;
        }
        m23108g(visitMethod);
        visitMethod.visitMaxs(i, 3);
        visitMethod.visitEnd();
    }

    /* renamed from: e */
    public static void m23110e(ClassWriter classWriter, String str, ArrayList<Field> arrayList) {
        int i;
        MethodVisitor visitMethod = classWriter.visitMethod(1, "set", "(Ljava/lang/Object;ILjava/lang/Object;)V", null, null);
        visitMethod.visitCode();
        visitMethod.visitVarInsn(21, 2);
        if (!arrayList.isEmpty()) {
            i = 5;
            int size = arrayList.size();
            Label[] labelArr = new Label[size];
            for (int i2 = 0; i2 < size; i2++) {
                labelArr[i2] = new Label();
            }
            Label label = new Label();
            visitMethod.visitTableSwitchInsn(0, size - 1, label, labelArr);
            for (int i3 = 0; i3 < size; i3++) {
                Field field = arrayList.get(i3);
                Type type = Type.getType(field.getType());
                visitMethod.visitLabel(labelArr[i3]);
                visitMethod.visitFrame(3, 0, null, 0, null);
                visitMethod.visitVarInsn(25, 1);
                visitMethod.visitTypeInsn(192, str);
                visitMethod.visitVarInsn(25, 3);
                switch (type.getSort()) {
                    case 1:
                        visitMethod.visitTypeInsn(192, "java/lang/Boolean");
                        visitMethod.visitMethodInsn(182, "java/lang/Boolean", "booleanValue", "()Z");
                        break;
                    case 2:
                        visitMethod.visitTypeInsn(192, "java/lang/Character");
                        visitMethod.visitMethodInsn(182, "java/lang/Character", "charValue", "()C");
                        break;
                    case 3:
                        visitMethod.visitTypeInsn(192, "java/lang/Byte");
                        visitMethod.visitMethodInsn(182, "java/lang/Byte", "byteValue", "()B");
                        break;
                    case 4:
                        visitMethod.visitTypeInsn(192, "java/lang/Short");
                        visitMethod.visitMethodInsn(182, "java/lang/Short", "shortValue", "()S");
                        break;
                    case 5:
                        visitMethod.visitTypeInsn(192, "java/lang/Integer");
                        visitMethod.visitMethodInsn(182, "java/lang/Integer", "intValue", "()I");
                        break;
                    case 6:
                        visitMethod.visitTypeInsn(192, "java/lang/Float");
                        visitMethod.visitMethodInsn(182, "java/lang/Float", "floatValue", "()F");
                        break;
                    case 7:
                        visitMethod.visitTypeInsn(192, "java/lang/Long");
                        visitMethod.visitMethodInsn(182, "java/lang/Long", "longValue", "()J");
                        break;
                    case 8:
                        visitMethod.visitTypeInsn(192, "java/lang/Double");
                        visitMethod.visitMethodInsn(182, "java/lang/Double", "doubleValue", "()D");
                        break;
                    case 9:
                        visitMethod.visitTypeInsn(192, type.getDescriptor());
                        break;
                    case 10:
                        visitMethod.visitTypeInsn(192, type.getInternalName());
                        break;
                }
                visitMethod.visitFieldInsn(181, field.getDeclaringClass().getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), field.getName(), type.getDescriptor());
                visitMethod.visitInsn(177);
            }
            visitMethod.visitLabel(label);
            visitMethod.visitFrame(3, 0, null, 0, null);
        } else {
            i = 6;
        }
        MethodVisitor m23108g = m23108g(visitMethod);
        m23108g.visitMaxs(i, 4);
        m23108g.visitEnd();
    }

    public abstract Object get(Object obj, int i);

    public Object get(Object obj, String str) {
        return get(obj, getIndex(str));
    }

    public abstract boolean getBoolean(Object obj, int i);

    public abstract byte getByte(Object obj, int i);

    public abstract char getChar(Object obj, int i);

    public abstract double getDouble(Object obj, int i);

    public int getFieldCount() {
        return this.f7609b.length;
    }

    public String[] getFieldNames() {
        return this.f7608a;
    }

    public Class[] getFieldTypes() {
        return this.f7609b;
    }

    public Field[] getFields() {
        return this.f7610c;
    }

    public abstract float getFloat(Object obj, int i);

    public int getIndex(String str) {
        int length = this.f7608a.length;
        for (int i = 0; i < length; i++) {
            if (this.f7608a[i].equals(str)) {
                return i;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private field: " + str);
    }

    public abstract int getInt(Object obj, int i);

    public abstract long getLong(Object obj, int i);

    public abstract short getShort(Object obj, int i);

    public abstract String getString(Object obj, int i);

    public abstract void set(Object obj, int i, Object obj2);

    public void set(Object obj, String str, Object obj2) {
        set(obj, getIndex(str), obj2);
    }

    public abstract void setBoolean(Object obj, int i, boolean z);

    public abstract void setByte(Object obj, int i, byte b);

    public abstract void setChar(Object obj, int i, char c);

    public abstract void setDouble(Object obj, int i, double d);

    public void setFields(Field[] fieldArr) {
        this.f7610c = fieldArr;
    }

    public abstract void setFloat(Object obj, int i, float f);

    public abstract void setInt(Object obj, int i, int i2);

    public abstract void setLong(Object obj, int i, long j);

    public abstract void setShort(Object obj, int i, short s);

    /* renamed from: c */
    public static void m23112c(ClassWriter classWriter, String str, ArrayList<Field> arrayList, Type type) {
        String str2;
        int i;
        String descriptor = type.getDescriptor();
        int i2 = 172;
        switch (type.getSort()) {
            case 1:
                str2 = "getBoolean";
                break;
            case 2:
                str2 = "getChar";
                break;
            case 3:
                str2 = "getByte";
                break;
            case 4:
                str2 = "getShort";
                break;
            case 5:
                str2 = "getInt";
                break;
            case 6:
                i2 = 174;
                str2 = "getFloat";
                break;
            case 7:
                i2 = 173;
                str2 = "getLong";
                break;
            case 8:
                i2 = 175;
                str2 = "getDouble";
                break;
            default:
                i2 = 176;
                str2 = "get";
                break;
        }
        String str3 = str2;
        MethodVisitor visitMethod = classWriter.visitMethod(1, str3, "(Ljava/lang/Object;I)" + descriptor, null, null);
        visitMethod.visitCode();
        visitMethod.visitVarInsn(21, 2);
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            Label[] labelArr = new Label[size];
            Label label = new Label();
            boolean z = false;
            for (int i3 = 0; i3 < size; i3++) {
                if (Type.getType(arrayList.get(i3).getType()).equals(type)) {
                    labelArr[i3] = new Label();
                } else {
                    labelArr[i3] = label;
                    z = true;
                }
            }
            Label label2 = new Label();
            visitMethod.visitTableSwitchInsn(0, size - 1, label2, labelArr);
            for (int i4 = 0; i4 < size; i4++) {
                Field field = arrayList.get(i4);
                if (!labelArr[i4].equals(label)) {
                    visitMethod.visitLabel(labelArr[i4]);
                    visitMethod.visitFrame(3, 0, null, 0, null);
                    visitMethod.visitVarInsn(25, 1);
                    visitMethod.visitTypeInsn(192, str);
                    visitMethod.visitFieldInsn(180, field.getDeclaringClass().getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), field.getName(), descriptor);
                    visitMethod.visitInsn(i2);
                }
            }
            if (z) {
                visitMethod.visitLabel(label);
                visitMethod.visitFrame(3, 0, null, 0, null);
                m23107h(visitMethod, type.getClassName());
            }
            visitMethod.visitLabel(label2);
            visitMethod.visitFrame(3, 0, null, 0, null);
            i = 5;
        } else {
            i = 6;
        }
        MethodVisitor m23108g = m23108g(visitMethod);
        m23108g.visitMaxs(i, 3);
        m23108g.visitEnd();
    }

    /* renamed from: d */
    public static void m23111d(ClassWriter classWriter, String str, ArrayList<Field> arrayList) {
        int i;
        MethodVisitor visitMethod = classWriter.visitMethod(1, "getString", "(Ljava/lang/Object;I)Ljava/lang/String;", null, null);
        visitMethod.visitCode();
        visitMethod.visitVarInsn(21, 2);
        if (!arrayList.isEmpty()) {
            i = 5;
            int size = arrayList.size();
            Label[] labelArr = new Label[size];
            Label label = new Label();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                if (arrayList.get(i2).getType().equals(String.class)) {
                    labelArr[i2] = new Label();
                } else {
                    labelArr[i2] = label;
                    z = true;
                }
            }
            Label label2 = new Label();
            visitMethod.visitTableSwitchInsn(0, size - 1, label2, labelArr);
            for (int i3 = 0; i3 < size; i3++) {
                if (!labelArr[i3].equals(label)) {
                    Field field = arrayList.get(i3);
                    visitMethod.visitLabel(labelArr[i3]);
                    visitMethod.visitFrame(3, 0, null, 0, null);
                    visitMethod.visitVarInsn(25, 1);
                    visitMethod.visitTypeInsn(192, str);
                    visitMethod.visitFieldInsn(180, field.getDeclaringClass().getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), field.getName(), "Ljava/lang/String;");
                    visitMethod.visitInsn(176);
                }
            }
            if (z) {
                visitMethod.visitLabel(label);
                visitMethod.visitFrame(3, 0, null, 0, null);
                m23107h(visitMethod, "String");
            }
            visitMethod.visitLabel(label2);
            visitMethod.visitFrame(3, 0, null, 0, null);
        } else {
            i = 6;
        }
        m23108g(visitMethod);
        visitMethod.visitMaxs(i, 3);
        visitMethod.visitEnd();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0139  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m23109f(com.esotericsoftware.asm.ClassWriter r22, java.lang.String r23, java.util.ArrayList<java.lang.reflect.Field> r24, com.esotericsoftware.asm.Type r25) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.reflectasm.FieldAccess.m23109f(com.esotericsoftware.asm.ClassWriter, java.lang.String, java.util.ArrayList, com.esotericsoftware.asm.Type):void");
    }

    /* renamed from: g */
    public static MethodVisitor m23108g(MethodVisitor methodVisitor) {
        methodVisitor.visitTypeInsn(187, "java/lang/IllegalArgumentException");
        methodVisitor.visitInsn(89);
        methodVisitor.visitTypeInsn(187, "java/lang/StringBuilder");
        methodVisitor.visitInsn(89);
        methodVisitor.visitLdcInsn("Field not found: ");
        methodVisitor.visitMethodInsn(183, "java/lang/StringBuilder", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/String;)V");
        methodVisitor.visitVarInsn(21, 2);
        methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
        methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
        methodVisitor.visitMethodInsn(183, "java/lang/IllegalArgumentException", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/String;)V");
        methodVisitor.visitInsn(191);
        return methodVisitor;
    }

    public static FieldAccess get(Class cls) {
        Class m23118g;
        Field[] declaredFields;
        if (cls.getSuperclass() != null) {
            ArrayList arrayList = new ArrayList();
            Class cls2 = cls;
            while (true) {
                if (cls2 == Object.class) {
                    break;
                }
                for (Field field : cls2.getDeclaredFields()) {
                    int modifiers = field.getModifiers();
                    if (!Modifier.isStatic(modifiers) && !Modifier.isPrivate(modifiers)) {
                        arrayList.add(field);
                    }
                }
                cls2 = cls2.getSuperclass();
            }
            int size = arrayList.size();
            String[] strArr = new String[size];
            Class[] clsArr = new Class[arrayList.size()];
            for (int i = 0; i < size; i++) {
                strArr[i] = ((Field) arrayList.get(i)).getName();
                clsArr[i] = ((Field) arrayList.get(i)).getType();
            }
            String name = cls.getName();
            String str = name + "FieldAccess";
            if (str.startsWith("java.")) {
                str = "reflectasm." + str;
            }
            AccessClassLoader m23121d = AccessClassLoader.m23121d(cls);
            synchronized (m23121d) {
                m23118g = m23121d.m23118g(str);
                if (m23118g == null) {
                    String replace = str.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
                    String replace2 = name.replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
                    ClassWriter classWriter = new ClassWriter(0);
                    classWriter.visit(196653, 33, replace, null, "com/esotericsoftware/reflectasm/FieldAccess", null);
                    m23114a(classWriter);
                    m23113b(classWriter, replace2, arrayList);
                    m23110e(classWriter, replace2, arrayList);
                    Type type = Type.BOOLEAN_TYPE;
                    m23112c(classWriter, replace2, arrayList, type);
                    m23109f(classWriter, replace2, arrayList, type);
                    Type type2 = Type.BYTE_TYPE;
                    m23112c(classWriter, replace2, arrayList, type2);
                    m23109f(classWriter, replace2, arrayList, type2);
                    Type type3 = Type.SHORT_TYPE;
                    m23112c(classWriter, replace2, arrayList, type3);
                    m23109f(classWriter, replace2, arrayList, type3);
                    Type type4 = Type.INT_TYPE;
                    m23112c(classWriter, replace2, arrayList, type4);
                    m23109f(classWriter, replace2, arrayList, type4);
                    Type type5 = Type.LONG_TYPE;
                    m23112c(classWriter, replace2, arrayList, type5);
                    m23109f(classWriter, replace2, arrayList, type5);
                    Type type6 = Type.DOUBLE_TYPE;
                    m23112c(classWriter, replace2, arrayList, type6);
                    m23109f(classWriter, replace2, arrayList, type6);
                    Type type7 = Type.FLOAT_TYPE;
                    m23112c(classWriter, replace2, arrayList, type7);
                    m23109f(classWriter, replace2, arrayList, type7);
                    Type type8 = Type.CHAR_TYPE;
                    m23112c(classWriter, replace2, arrayList, type8);
                    m23109f(classWriter, replace2, arrayList, type8);
                    m23111d(classWriter, replace2, arrayList);
                    classWriter.visitEnd();
                    m23118g = m23121d.m23123b(str, classWriter.toByteArray());
                }
            }
            try {
                FieldAccess fieldAccess = (FieldAccess) m23118g.newInstance();
                fieldAccess.f7608a = strArr;
                fieldAccess.f7609b = clsArr;
                fieldAccess.f7610c = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
                return fieldAccess;
            } catch (Throwable th) {
                throw new RuntimeException("Error constructing field access class: " + str, th);
            }
        }
        throw new IllegalArgumentException("The type must not be the Object class, an interface, a primitive type, or void.");
    }

    /* renamed from: h */
    public static MethodVisitor m23107h(MethodVisitor methodVisitor, String str) {
        methodVisitor.visitTypeInsn(187, "java/lang/IllegalArgumentException");
        methodVisitor.visitInsn(89);
        methodVisitor.visitTypeInsn(187, "java/lang/StringBuilder");
        methodVisitor.visitInsn(89);
        methodVisitor.visitLdcInsn("Field not declared as " + str + ": ");
        methodVisitor.visitMethodInsn(183, "java/lang/StringBuilder", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/String;)V");
        methodVisitor.visitVarInsn(21, 2);
        methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "append", "(I)Ljava/lang/StringBuilder;");
        methodVisitor.visitMethodInsn(182, "java/lang/StringBuilder", "toString", "()Ljava/lang/String;");
        methodVisitor.visitMethodInsn(183, "java/lang/IllegalArgumentException", MethodDescription.CONSTRUCTOR_INTERNAL_NAME, "(Ljava/lang/String;)V");
        methodVisitor.visitInsn(191);
        return methodVisitor;
    }

    public int getIndex(Field field) {
        int length = this.f7610c.length;
        for (int i = 0; i < length; i++) {
            if (this.f7610c[i].equals(field)) {
                return i;
            }
        }
        throw new IllegalArgumentException("Unable to find non-private field: " + field);
    }
}
