package com.esotericsoftware.kryo.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public interface Generics {

    /* loaded from: classes.dex */
    public static class GenericType {

        /* renamed from: a */
        public Type f7412a;

        /* renamed from: b */
        public GenericType[] f7413b;

        public Type getType() {
            return this.f7412a;
        }

        public GenericType[] getTypeParameters() {
            return this.f7413b;
        }

        /* renamed from: a */
        public final void m23176a(Class cls, Class cls2, Type type) {
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                this.f7412a = (Class) parameterizedType.getRawType();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                int length = actualTypeArguments.length;
                this.f7413b = new GenericType[length];
                for (int i = 0; i < length; i++) {
                    this.f7413b[i] = new GenericType(cls, cls2, actualTypeArguments[i]);
                }
            } else if (type instanceof GenericArrayType) {
                int i2 = 1;
                while (true) {
                    type = ((GenericArrayType) type).getGenericComponentType();
                    if (!(type instanceof GenericArrayType)) {
                        break;
                    }
                    i2++;
                }
                m23176a(cls, cls2, type);
                Type resolveType = GenericsUtil.resolveType(cls, cls2, type);
                if (resolveType instanceof Class) {
                    if (i2 == 1) {
                        this.f7412a = Array.newInstance((Class) resolveType, 0).getClass();
                    } else {
                        this.f7412a = Array.newInstance((Class) resolveType, new int[i2]).getClass();
                    }
                }
            } else {
                this.f7412a = GenericsUtil.resolveType(cls, cls2, type);
            }
        }

        public Class resolve(Generics generics) {
            Type type = this.f7412a;
            if (type instanceof Class) {
                return (Class) type;
            }
            return generics.resolveTypeVariable((TypeVariable) type);
        }

        public String toString() {
            boolean z;
            StringBuilder sb = new StringBuilder(32);
            Type type = this.f7412a;
            if (type instanceof Class) {
                Class cls = (Class) type;
                z = cls.isArray();
                if (z) {
                    cls = Util.getElementClass(cls);
                }
                sb.append(cls.getSimpleName());
                if (this.f7413b != null) {
                    sb.append('<');
                    int length = this.f7413b.length;
                    for (int i = 0; i < length; i++) {
                        if (i > 0) {
                            sb.append(", ");
                        }
                        sb.append(this.f7413b[i].toString());
                    }
                    sb.append('>');
                }
            } else {
                sb.append(type.toString());
                z = false;
            }
            if (z) {
                int dimensionCount = Util.getDimensionCount((Class) this.f7412a);
                for (int i2 = 0; i2 < dimensionCount; i2++) {
                    sb.append("[]");
                }
            }
            return sb.toString();
        }

        public GenericType(Class cls, Class cls2, Type type) {
            m23176a(cls, cls2, type);
        }
    }

    /* loaded from: classes.dex */
    public static class GenericsHierarchy {

        /* renamed from: a */
        public final int f7414a;

        /* renamed from: b */
        public final int f7415b;

        /* renamed from: c */
        public final int[] f7416c;

        /* renamed from: d */
        public final TypeVariable[] f7417d;

        public GenericsHierarchy(Class cls) {
            TypeVariable[] typeParameters;
            IntArray intArray = new IntArray();
            ArrayList arrayList = new ArrayList();
            Class cls2 = cls;
            int i = 0;
            do {
                for (TypeVariable typeVariable : cls2.getTypeParameters()) {
                    arrayList.add(typeVariable);
                    intArray.add(1);
                    Class cls3 = cls2;
                    while (true) {
                        Type genericSuperclass = cls3.getGenericSuperclass();
                        cls3 = cls3.getSuperclass();
                        if (!(genericSuperclass instanceof ParameterizedType)) {
                            break;
                        }
                        TypeVariable[] typeParameters2 = cls3.getTypeParameters();
                        Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                        int length = actualTypeArguments.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            if (actualTypeArguments[i2] == typeVariable) {
                                typeVariable = typeParameters2[i2];
                                arrayList.add(typeVariable);
                                intArray.incr(intArray.size - 1, 1);
                            }
                        }
                    }
                    i += intArray.peek();
                }
                cls2 = cls2.getSuperclass();
            } while (cls2 != null);
            this.f7414a = i;
            this.f7415b = cls.getTypeParameters().length;
            this.f7416c = intArray.toArray();
            this.f7417d = (TypeVariable[]) arrayList.toArray(new TypeVariable[arrayList.size()]);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            int[] iArr = this.f7416c;
            TypeVariable[] typeVariableArr = this.f7417d;
            int i = 0;
            for (int i2 : iArr) {
                int i3 = i2 + i;
                while (i < i3) {
                    if (sb.length() > 1) {
                        sb.append(", ");
                    }
                    GenericDeclaration genericDeclaration = typeVariableArr[i].getGenericDeclaration();
                    if (genericDeclaration instanceof Class) {
                        sb.append(((Class) genericDeclaration).getSimpleName());
                    } else {
                        sb.append(genericDeclaration);
                    }
                    sb.append('<');
                    sb.append(typeVariableArr[i].getName());
                    sb.append('>');
                    i++;
                }
            }
            sb.append("]");
            return sb.toString();
        }
    }

    int getGenericTypesSize();

    Class nextGenericClass();

    GenericType[] nextGenericTypes();

    void popGenericType();

    void popTypeVariables(int i);

    void pushGenericType(GenericType genericType);

    int pushTypeVariables(GenericsHierarchy genericsHierarchy, GenericType[] genericTypeArr);

    Class resolveTypeVariable(TypeVariable typeVariable);
}
