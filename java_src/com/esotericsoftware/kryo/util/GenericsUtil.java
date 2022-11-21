package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.KryoException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
/* loaded from: classes.dex */
public class GenericsUtil {
    public static Type resolveType(Class cls, Class cls2, Type type) {
        if (type instanceof Class) {
            return type;
        }
        if (type instanceof TypeVariable) {
            return m23175a(cls, cls2, type, true);
        }
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            int i = 1;
            while (true) {
                type = ((GenericArrayType) type).getGenericComponentType();
                if (!(type instanceof GenericArrayType)) {
                    break;
                }
                i++;
            }
            Type resolveType = resolveType(cls, cls2, type);
            if (!(resolveType instanceof Class)) {
                return type;
            }
            if (i == 1) {
                return Array.newInstance((Class) resolveType, 0).getClass();
            }
            return Array.newInstance((Class) resolveType, new int[i]).getClass();
        } else if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type type2 = wildcardType.getUpperBounds()[0];
            if (type2 != Object.class) {
                return resolveType(cls, cls2, type2);
            }
            Type[] lowerBounds = wildcardType.getLowerBounds();
            return lowerBounds.length != 0 ? resolveType(cls, cls2, lowerBounds[0]) : Object.class;
        } else {
            throw new KryoException("Unable to resolve type: " + type);
        }
    }

    public static Type[] resolveTypeParameters(Class cls, Class cls2, Type type) {
        if (type instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
            int length = actualTypeArguments.length;
            Type[] typeArr = new Type[length];
            for (int i = 0; i < length; i++) {
                typeArr[i] = resolveType(cls, cls2, actualTypeArguments[i]);
            }
            return typeArr;
        } else if (type instanceof GenericArrayType) {
            do {
                type = ((GenericArrayType) type).getGenericComponentType();
            } while (type instanceof GenericArrayType);
            return resolveTypeParameters(cls, cls2, type);
        } else {
            return null;
        }
    }

    /* renamed from: a */
    public static Type m23175a(Class cls, Class cls2, Type type, boolean z) {
        Type genericSuperclass = cls2.getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            return type;
        }
        Class superclass = cls2.getSuperclass();
        if (superclass != cls) {
            type = m23175a(cls, superclass, type, false);
            if (type instanceof Class) {
                return type;
            }
        }
        String obj = type.toString();
        TypeVariable[] typeParameters = superclass.getTypeParameters();
        int length = typeParameters.length;
        for (int i = 0; i < length; i++) {
            if (typeParameters[i].getName().equals(obj)) {
                Type type2 = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[i];
                if (type2 instanceof Class) {
                    return type2;
                }
                if (type2 instanceof ParameterizedType) {
                    return resolveType(cls, cls2, type2);
                }
                if (type2 instanceof GenericArrayType) {
                    return resolveType(cls, cls2, type2);
                }
                if (type2 instanceof TypeVariable) {
                    if (z) {
                        return type;
                    }
                    return type2;
                }
            }
        }
        return type;
    }
}
