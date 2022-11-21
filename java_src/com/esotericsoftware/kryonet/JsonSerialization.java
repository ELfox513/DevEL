package com.esotericsoftware.kryonet;

import com.esotericsoftware.jsonbeans.Json;
import com.esotericsoftware.jsonbeans.JsonException;
import com.esotericsoftware.kryo.p035io.ByteBufferInputStream;
import com.esotericsoftware.kryo.p035io.ByteBufferOutputStream;
import com.esotericsoftware.kryonet.FrameworkMessage;
import com.esotericsoftware.minlog.Log;
import java.io.OutputStreamWriter;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class JsonSerialization implements Serialization {

    /* renamed from: a */
    public final Json f7487a;

    /* renamed from: b */
    public final ByteBufferInputStream f7488b;

    /* renamed from: c */
    public final ByteBufferOutputStream f7489c;

    /* renamed from: d */
    public final OutputStreamWriter f7490d;

    /* renamed from: e */
    public boolean f7491e;

    /* renamed from: f */
    public boolean f7492f;

    /* renamed from: g */
    public byte[] f7493g;

    @Override // com.esotericsoftware.kryonet.Serialization
    public int getLengthLength() {
        return 4;
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public int readLength(ByteBuffer byteBuffer) {
        return byteBuffer.getInt();
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public void writeLength(ByteBuffer byteBuffer, int i) {
        byteBuffer.putInt(i);
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public Object read(Connection connection, ByteBuffer byteBuffer) {
        this.f7488b.setByteBuffer(byteBuffer);
        return this.f7487a.fromJson(Object.class, this.f7488b);
    }

    public void setLogging(boolean z, boolean z2) {
        this.f7491e = z;
        this.f7492f = z2;
    }

    @Override // com.esotericsoftware.kryonet.Serialization
    public void write(Connection connection, ByteBuffer byteBuffer, Object obj) {
        this.f7489c.setByteBuffer(byteBuffer);
        int position = byteBuffer.position();
        try {
            this.f7487a.writeValue(obj, Object.class, (Class) null);
            this.f7490d.flush();
            if (Log.INFO && this.f7491e) {
                int position2 = byteBuffer.position();
                byteBuffer.position(position);
                byteBuffer.limit(position2);
                int i = position2 - position;
                if (this.f7493g.length < i) {
                    this.f7493g = new byte[i];
                }
                byteBuffer.get(this.f7493g, 0, i);
                byteBuffer.position(position2);
                byteBuffer.limit(byteBuffer.capacity());
                String str = new String(this.f7493g, 0, i);
                if (this.f7492f) {
                    str = this.f7487a.prettyPrint(str);
                }
                Log.info("Wrote: " + str);
            }
        } catch (Exception e) {
            throw new JsonException("Error writing object: " + obj, e);
        }
    }

    public JsonSerialization() {
        Json json = new Json();
        this.f7487a = json;
        this.f7488b = new ByteBufferInputStream();
        ByteBufferOutputStream byteBufferOutputStream = new ByteBufferOutputStream();
        this.f7489c = byteBufferOutputStream;
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(byteBufferOutputStream);
        this.f7490d = outputStreamWriter;
        this.f7491e = true;
        this.f7492f = true;
        this.f7493g = new byte[0];
        json.addClassTag("RegisterTCP", FrameworkMessage.RegisterTCP.class);
        json.addClassTag("RegisterUDP", FrameworkMessage.RegisterUDP.class);
        json.addClassTag("KeepAlive", FrameworkMessage.KeepAlive.class);
        json.addClassTag("DiscoverHost", FrameworkMessage.DiscoverHost.class);
        json.addClassTag("Ping", FrameworkMessage.Ping.class);
        json.setWriter(outputStreamWriter);
    }
}
