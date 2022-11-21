package com.esotericsoftware.kryo.serializers;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.esotericsoftware.kryo.serializers.k */
/* loaded from: classes.dex */
public final /* synthetic */ class C1375k {
    /* renamed from: a */
    public static /* synthetic */ Map m23201a(Map.Entry[] entryArr) {
        HashMap hashMap = new HashMap(entryArr.length);
        for (Map.Entry entry : entryArr) {
            Object key = entry.getKey();
            key.getClass();
            Object value = entry.getValue();
            value.getClass();
            if (hashMap.put(key, value) != null) {
                throw new IllegalArgumentException("duplicate key: " + key);
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
