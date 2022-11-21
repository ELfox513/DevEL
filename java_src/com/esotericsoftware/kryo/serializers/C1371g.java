package com.esotericsoftware.kryo.serializers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* renamed from: com.esotericsoftware.kryo.serializers.g */
/* loaded from: classes.dex */
public final /* synthetic */ class C1371g {
    /* renamed from: a */
    public static /* synthetic */ List m23205a(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            obj.getClass();
            arrayList.add(obj);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
