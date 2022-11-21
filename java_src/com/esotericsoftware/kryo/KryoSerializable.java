package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
/* loaded from: classes.dex */
public interface KryoSerializable {
    void read(Kryo kryo, Input input);

    void write(Kryo kryo, Output output);
}
