package com.esotericsoftware.kryo.serializers;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.esotericsoftware.kryo.serializers.l */
/* loaded from: classes.dex */
public final /* synthetic */ class C1376l {
    /* renamed from: a */
    public static /* synthetic */ Set m23200a(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            obj.getClass();
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }
}
