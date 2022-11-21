package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
/* loaded from: classes.dex */
public class EnumNameSerializer extends ImmutableSerializer<Enum> {

    /* renamed from: c */
    public final Class<? extends Enum> f7318c;

    @Override // com.esotericsoftware.kryo.Serializer
    public Enum read(Kryo kryo, Input input, Class cls) {
        String readString = input.readString();
        try {
            return Enum.valueOf(this.f7318c, readString);
        } catch (IllegalArgumentException e) {
            throw new KryoException("Enum value not found with name: " + readString, e);
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Enum r3) {
        output.writeString(r3.name());
    }

    public EnumNameSerializer(Class<? extends Enum> cls) {
        this.f7318c = cls;
    }
}
