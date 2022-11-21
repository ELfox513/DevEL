package com.esotericsoftware.kryo.serializers;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.esotericsoftware.kryo.serializers.h */
/* loaded from: classes.dex */
public final /* synthetic */ class C1372h {
    /* renamed from: a */
    public static /* synthetic */ Map m23204a(Map map) {
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            key.getClass();
            Object value = entry.getValue();
            value.getClass();
            hashMap.put(key, value);
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
