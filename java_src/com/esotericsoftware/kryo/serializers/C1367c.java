package com.esotericsoftware.kryo.serializers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.esotericsoftware.kryo.serializers.c */
/* loaded from: classes.dex */
public final /* synthetic */ class C1367c {
    /* renamed from: a */
    public static /* synthetic */ List m23209a(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            obj.getClass();
            arrayList.add(obj);
        }
        return Collections.unmodifiableList(arrayList);
    }
}
