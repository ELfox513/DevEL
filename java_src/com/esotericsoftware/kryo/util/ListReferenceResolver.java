package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.ReferenceResolver;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ListReferenceResolver implements ReferenceResolver {
    public Kryo kryo;
    public final ArrayList seenObjects = new ArrayList();

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public Object getReadObject(Class cls, int i) {
        return this.seenObjects.get(i);
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public void reset() {
        this.seenObjects.clear();
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public void setKryo(Kryo kryo) {
        this.kryo = kryo;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public void setReadObject(int i, Object obj) {
        this.seenObjects.set(i, obj);
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public boolean useReferences(Class cls) {
        return (Util.isWrapperClass(cls) || Util.isEnum(cls)) ? false : true;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public int addWrittenObject(Object obj) {
        int size = this.seenObjects.size();
        this.seenObjects.add(obj);
        return size;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public int getWrittenId(Object obj) {
        int size = this.seenObjects.size();
        for (int i = 0; i < size; i++) {
            if (this.seenObjects.get(i) == obj) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.esotericsoftware.kryo.ReferenceResolver
    public int nextReadId(Class cls) {
        int size = this.seenObjects.size();
        this.seenObjects.add(null);
        return size;
    }
}
