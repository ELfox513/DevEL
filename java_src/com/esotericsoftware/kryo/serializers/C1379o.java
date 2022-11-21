package com.esotericsoftware.kryo.serializers;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.esotericsoftware.kryo.serializers.o */
/* loaded from: classes.dex */
public final /* synthetic */ class C1379o {
    /* renamed from: a */
    public static /* synthetic */ Set m23197a(Collection collection) {
        HashSet hashSet = new HashSet(collection.size());
        for (Object obj : collection) {
            obj.getClass();
            hashSet.add(obj);
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
