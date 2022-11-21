package com.badlogic.gdx.utils.reflect;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public final class Field {

    /* renamed from: a */
    public final java.lang.reflect.Field f6957a;

    public Class getDeclaringClass() {
        return this.f6957a.getDeclaringClass();
    }

    public String getName() {
        return this.f6957a.getName();
    }

    public Class getType() {
        return this.f6957a.getType();
    }

    public boolean isAccessible() {
        return this.f6957a.isAccessible();
    }

    public boolean isAnnotationPresent(Class<? extends java.lang.annotation.Annotation> cls) {
        return this.f6957a.isAnnotationPresent(cls);
    }

    public boolean isDefaultAccess() {
        return (isPrivate() || isProtected() || isPublic()) ? false : true;
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.f6957a.getModifiers());
    }

    public boolean isPrivate() {
        return Modifier.isPrivate(this.f6957a.getModifiers());
    }

    public boolean isProtected() {
        return Modifier.isProtected(this.f6957a.getModifiers());
    }

    public boolean isPublic() {
        return Modifier.isPublic(this.f6957a.getModifiers());
    }

    public boolean isStatic() {
        return Modifier.isStatic(this.f6957a.getModifiers());
    }

    public boolean isSynthetic() {
        return this.f6957a.isSynthetic();
    }

    public boolean isTransient() {
        return Modifier.isTransient(this.f6957a.getModifiers());
    }

    public boolean isVolatile() {
        return Modifier.isVolatile(this.f6957a.getModifiers());
    }

    public void setAccessible(boolean z) {
        this.f6957a.setAccessible(z);
    }

    public Object get(Object obj) {
        try {
            return this.f6957a.get(obj);
        } catch (IllegalAccessException e) {
            throw new ReflectionException("Illegal access to field: " + getName(), e);
        } catch (IllegalArgumentException e2) {
            throw new ReflectionException("Object is not an instance of " + getDeclaringClass(), e2);
        }
    }

    public Annotation getDeclaredAnnotation(Class<? extends java.lang.annotation.Annotation> cls) {
        java.lang.annotation.Annotation[] declaredAnnotations = this.f6957a.getDeclaredAnnotations();
        if (declaredAnnotations == null) {
            return null;
        }
        for (java.lang.annotation.Annotation annotation : declaredAnnotations) {
            if (annotation.annotationType().equals(cls)) {
                return new Annotation(annotation);
            }
        }
        return null;
    }

    public Annotation[] getDeclaredAnnotations() {
        java.lang.annotation.Annotation[] declaredAnnotations = this.f6957a.getDeclaredAnnotations();
        Annotation[] annotationArr = new Annotation[declaredAnnotations.length];
        for (int i = 0; i < declaredAnnotations.length; i++) {
            annotationArr[i] = new Annotation(declaredAnnotations[i]);
        }
        return annotationArr;
    }

    public Class getElementType(int i) {
        Type genericType = this.f6957a.getGenericType();
        if (genericType instanceof ParameterizedType) {
            Type[] actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments();
            if (actualTypeArguments.length - 1 >= i) {
                Type type = actualTypeArguments[i];
                if (type instanceof Class) {
                    return (Class) type;
                }
                if (type instanceof ParameterizedType) {
                    return (Class) ((ParameterizedType) type).getRawType();
                }
                if (type instanceof GenericArrayType) {
                    Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                    if (genericComponentType instanceof Class) {
                        return ArrayReflection.newInstance((Class) genericComponentType, 0).getClass();
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public void set(Object obj, Object obj2) {
        try {
            this.f6957a.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new ReflectionException("Illegal access to field: " + getName(), e);
        } catch (IllegalArgumentException e2) {
            throw new ReflectionException("Argument not valid for field: " + getName(), e2);
        }
    }

    public Field(java.lang.reflect.Field field) {
        this.f6957a = field;
    }
}
