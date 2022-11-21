package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import java.util.EnumMap;
/* loaded from: classes.dex */
public class EnumMapSerializer extends MapSerializer<EnumMap> {

    /* renamed from: i */
    public final Class<? extends Enum> f7317i;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.serializers.MapSerializer
    public EnumMap create(Kryo kryo, Input input, Class<? extends EnumMap> cls, int i) {
        return new EnumMap(this.f7317i);
    }

    @Override // com.esotericsoftware.kryo.serializers.MapSerializer
    public EnumMap createCopy(Kryo kryo, EnumMap enumMap) {
        return new EnumMap(enumMap);
    }

    public EnumMapSerializer(Class<? extends Enum> cls) {
        this.f7317i = cls;
    }
}
