package com.esotericsoftware.kryonet;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.ByteBufferInput;
import com.esotericsoftware.kryo.p035io.ByteBufferOutput;
import com.esotericsoftware.kryonet.FrameworkMessage;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class KryoSerialization implements Serialization {

    /* renamed from: a */
    public final Kryo f7494a;

    /* renamed from: b */
    public final ByteBufferInput f7495b;

    /* renamed from: c */
    public final ByteBufferOutput f7496c;

    public KryoSerialization() {
        this(new Kryo());
        this.f7494a.setReferences(false);
        this.f7494a.setRegistrationRequired(true);
    }

    public Kryo getKryo() {
        return this.f7494a;
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public int getLengthLength() {
        return 4;
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public synchronized Object read(Connection connection, ByteBuffer byteBuffer) {
        this.f7495b.setBuffer(byteBuffer);
        this.f7494a.getContext().put("connection", connection);
        return this.f7494a.readClassAndObject(this.f7495b);
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public int readLength(ByteBuffer byteBuffer) {
        return byteBuffer.getInt();
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public synchronized void write(Connection connection, ByteBuffer byteBuffer, Object obj) {
        this.f7496c.setBuffer(byteBuffer);
        this.f7494a.getContext().put("connection", connection);
        this.f7494a.writeClassAndObject(this.f7496c, obj);
        this.f7496c.flush();
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public void writeLength(ByteBuffer byteBuffer, int i) {
        byteBuffer.putInt(i);
    }

    public KryoSerialization(Kryo kryo) {
        this.f7494a = kryo;
        kryo.register(FrameworkMessage.RegisterTCP.class);
        kryo.register(FrameworkMessage.RegisterUDP.class);
        kryo.register(FrameworkMessage.KeepAlive.class);
        kryo.register(FrameworkMessage.DiscoverHost.class);
        kryo.register(FrameworkMessage.Ping.class);
        this.f7495b = new ByteBufferInput();
        this.f7496c = new ByteBufferOutput();
    }
}
