package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public class BlowfishSerializer extends Serializer {

    /* renamed from: d */
    public static SecretKeySpec f7291d;

    /* renamed from: c */
    public final Serializer f7292c;

    @Override // com.esotericsoftware.kryo.Serializer
    public Object copy(Kryo kryo, Object obj) {
        return this.f7292c.copy(kryo, obj);
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public Object read(Kryo kryo, Input input, Class cls) {
        return this.f7292c.read(kryo, new Input(new CipherInputStream(input, m23255a(2)), 256), cls);
    }

    @Override // com.esotericsoftware.kryo.Serializer
    public void write(Kryo kryo, Output output, Object obj) {
        CipherOutputStream cipherOutputStream = new CipherOutputStream(output, m23255a(1));
        Output output2 = new Output(cipherOutputStream, 256) { // from class: com.esotericsoftware.kryo.serializers.BlowfishSerializer.1
            @Override // com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        };
        this.f7292c.write(kryo, output2, obj);
        output2.flush();
        try {
            cipherOutputStream.close();
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    /* renamed from: a */
    public static Cipher m23255a(int i) {
        try {
            Cipher cipher = Cipher.getInstance("Blowfish");
            cipher.init(i, f7291d);
            return cipher;
        } catch (Exception e) {
            throw new KryoException(e);
        }
    }

    public BlowfishSerializer(Serializer serializer, byte[] bArr) {
        this.f7292c = serializer;
        f7291d = new SecretKeySpec(bArr, "Blowfish");
    }
}
