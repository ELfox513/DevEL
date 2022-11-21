package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.InputChunked;
import com.esotericsoftware.kryo.p035io.Output;
import com.esotericsoftware.kryo.p035io.OutputChunked;
import java.io.IOException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
/* loaded from: classes.dex */
public class DeflateSerializer extends Serializer {

    /* renamed from: c */
    public final Serializer f7314c;

    /* renamed from: d */
    public boolean f7315d = true;

    /* renamed from: e */
    public int f7316e = 4;

    @Override // com.esotericsoftware.kryo.Serializer
    public Object copy(Kryo kryo, Object obj) {
        return this.f7314c.copy(kryo, obj);
    }

    public void setCompressionLevel(int i) {
        this.f7316e = i;
    }

    public void setNoHeaders(boolean z) {
        this.f7315d = z;
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public Object read(Kryo kryo, Input input, Class cls) {
        Inflater inflater = new Inflater(this.f7315d);
        try {
            return this.f7314c.read(kryo, new Input(new InflaterInputStream(new InputChunked(input, 256), inflater), 256), cls);
        } finally {
            inflater.end();
        }
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Object obj) {
        OutputChunked outputChunked = new OutputChunked(output, 256);
        Deflater deflater = new Deflater(this.f7316e, this.f7315d);
        try {
            try {
                DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(outputChunked, deflater);
                Output output2 = new Output(deflaterOutputStream, 256);
                this.f7314c.write(kryo, output2, obj);
                output2.flush();
                deflaterOutputStream.finish();
                deflater.end();
                outputChunked.endChunk();
            } catch (IOException e) {
                throw new KryoException(e);
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    public DeflateSerializer(Serializer serializer) {
        this.f7314c = serializer;
    }
}
