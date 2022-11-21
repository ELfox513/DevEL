package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.util.Generics;
import java.lang.reflect.TypeVariable;
/* loaded from: classes.dex */
public final class NoGenerics implements Generics {
    public static final Generics INSTANCE = new NoGenerics();

    @Override // com.esotericsoftware.kryo.util.Generics
    public int getGenericTypesSize() {
        return 0;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public Class nextGenericClass() {
        return null;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public Generics.GenericType[] nextGenericTypes() {
        return null;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public void popGenericType() {
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public void popTypeVariables(int i) {
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public void pushGenericType(Generics.GenericType genericType) {
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public int pushTypeVariables(Generics.GenericsHierarchy genericsHierarchy, Generics.GenericType[] genericTypeArr) {
        return 0;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public Class resolveTypeVariable(TypeVariable typeVariable) {
        return null;
    }
}
