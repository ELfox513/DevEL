package com.prineside.tdi2.serializers;

import com.badlogic.gdx.graphics.Color;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
/* loaded from: classes2.dex */
public class ColorSerializer extends Serializer<Color> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.esotericsoftware.kryo.Serializer
    public Color read(Kryo kryo, Input input, Class<? extends Color> cls) {
        return new Color(input.readInt());
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Color color) {
        output.writeInt(Color.rgba8888(color));
    }

    public ColorSerializer() {
        setAcceptsNull(true);
    }
}
