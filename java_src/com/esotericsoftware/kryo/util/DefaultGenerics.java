package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.util.Generics;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* loaded from: classes.dex */
public final class DefaultGenerics implements Generics {

    /* renamed from: a */
    public final Kryo f7399a;

    /* renamed from: b */
    public int f7400b;

    /* renamed from: e */
    public int f7403e;

    /* renamed from: c */
    public Generics.GenericType[] f7401c = new Generics.GenericType[16];

    /* renamed from: d */
    public int[] f7402d = new int[16];

    /* renamed from: f */
    public Type[] f7404f = new Type[16];

    @Override // com.esotericsoftware.kryo.util.Generics
    public int getGenericTypesSize() {
        return this.f7400b;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public Generics.GenericType[] nextGenericTypes() {
        Generics.GenericType[] genericTypeArr;
        int i = this.f7400b;
        if (i > 0) {
            int i2 = i - 1;
            Generics.GenericType genericType = this.f7401c[i2];
            if (genericType.f7413b != null && this.f7402d[i2] == this.f7399a.getDepth() - 1) {
                pushGenericType(genericType.f7413b[genericTypeArr.length - 1]);
                return genericType.f7413b;
            }
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public void popGenericType() {
        int i = this.f7400b;
        if (i == 0) {
            return;
        }
        int i2 = i - 1;
        if (this.f7402d[i2] < this.f7399a.getDepth()) {
            return;
        }
        this.f7401c[i2] = null;
        this.f7400b = i2;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public void popTypeVariables(int i) {
        int i2 = this.f7403e;
        int i3 = i2 - i;
        this.f7403e = i3;
        while (i3 < i2) {
            this.f7404f[i3] = null;
            i3++;
        }
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public void pushGenericType(Generics.GenericType genericType) {
        int i = this.f7400b;
        int i2 = i + 1;
        Generics.GenericType[] genericTypeArr = this.f7401c;
        if (i2 == genericTypeArr.length) {
            Generics.GenericType[] genericTypeArr2 = new Generics.GenericType[genericTypeArr.length << 1];
            System.arraycopy(genericTypeArr, 0, genericTypeArr2, 0, i);
            this.f7401c = genericTypeArr2;
            int[] iArr = this.f7402d;
            int[] iArr2 = new int[iArr.length << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f7402d = iArr2;
        }
        this.f7400b = i2;
        this.f7401c[i] = genericType;
        this.f7402d[i] = this.f7399a.getDepth();
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public int pushTypeVariables(Generics.GenericsHierarchy genericsHierarchy, Generics.GenericType[] genericTypeArr) {
        int i = genericsHierarchy.f7414a;
        if (i == 0 || genericsHierarchy.f7415b > genericTypeArr.length) {
            return 0;
        }
        int i2 = this.f7403e;
        int i3 = i + i2;
        Type[] typeArr = this.f7404f;
        if (i3 > typeArr.length) {
            Type[] typeArr2 = new Type[Math.max(i3, typeArr.length << 1)];
            System.arraycopy(this.f7404f, 0, typeArr2, 0, i2);
            this.f7404f = typeArr2;
        }
        int[] iArr = genericsHierarchy.f7416c;
        TypeVariable[] typeVariableArr = genericsHierarchy.f7417d;
        int length = genericTypeArr.length;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            Class resolve = genericTypeArr[i5].resolve(this);
            if (resolve != null) {
                int i6 = iArr[i5] + i4;
                while (i4 < i6) {
                    Type[] typeArr3 = this.f7404f;
                    int i7 = this.f7403e;
                    typeArr3[i7] = typeVariableArr[i4];
                    typeArr3[i7 + 1] = resolve;
                    this.f7403e = i7 + 2;
                    i4++;
                }
            }
        }
        return this.f7403e - i2;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public Class resolveTypeVariable(TypeVariable typeVariable) {
        for (int i = this.f7403e - 2; i >= 0; i -= 2) {
            Type type = this.f7404f[i];
            if (type == typeVariable || type.equals(typeVariable)) {
                return (Class) this.f7404f[i + 1];
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.f7403e; i += 2) {
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(((TypeVariable) this.f7404f[i]).getName());
            sb.append("=");
            sb.append(((Class) this.f7404f[i + 1]).getSimpleName());
        }
        return sb.toString();
    }

    public DefaultGenerics(Kryo kryo) {
        this.f7399a = kryo;
    }

    @Override // com.esotericsoftware.kryo.util.Generics
    public Class nextGenericClass() {
        Generics.GenericType[] nextGenericTypes = nextGenericTypes();
        if (nextGenericTypes == null) {
            return null;
        }
        return nextGenericTypes[0].resolve(this);
    }
}
