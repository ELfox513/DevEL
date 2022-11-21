package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.ReferenceResolver;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MapReferenceResolver implements ReferenceResolver {

    /* renamed from: a */
    public final int f7429a;
    public Kryo kryo;
    public final ArrayList<Object> readObjects;
    public final IdentityObjectIntMap<Object> writtenObjects;

    public MapReferenceResolver() {
        this(2048);
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public Object getReadObject(Class cls, int i) {
        return this.readObjects.get(i);
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public int getWrittenId(Object obj) {
        return this.writtenObjects.get(obj, -1);
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public void setKryo(Kryo kryo) {
        this.kryo = kryo;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public void setReadObject(int i, Object obj) {
        this.readObjects.set(i, obj);
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public boolean useReferences(Class cls) {
        return (Util.isWrapperClass(cls) || Util.isEnum(cls)) ? false : true;
    }

    public MapReferenceResolver(int i) {
        this.writtenObjects = new IdentityObjectIntMap<>();
        this.readObjects = new ArrayList<>();
        this.f7429a = i;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public int addWrittenObject(Object obj) {
        IdentityObjectIntMap<Object> identityObjectIntMap = this.writtenObjects;
        int i = identityObjectIntMap.size;
        identityObjectIntMap.put(obj, i);
        return i;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public int nextReadId(Class cls) {
        int size = this.readObjects.size();
        this.readObjects.add(null);
        return size;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public void reset() {
        int size = this.readObjects.size();
        this.readObjects.clear();
        if (size > this.f7429a) {
            this.readObjects.trimToSize();
            this.readObjects.ensureCapacity(this.f7429a);
        }
        this.writtenObjects.clear(this.f7429a);
    }
}
