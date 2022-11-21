package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.minlog.Log;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.esotericsoftware.kryo.io.InputChunked */
/* loaded from: classes.dex */
public class InputChunked extends Input {

    /* renamed from: a */
    public int f7276a;

    public InputChunked() {
        this.f7276a = -1;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int fill(byte[] bArr, int i, int i2) {
        int i3 = this.f7276a;
        if (i3 == -1) {
            if (!m23261j()) {
                return -1;
            }
        } else if (i3 == 0) {
            return -1;
        }
        int fill = super.fill(bArr, i, Math.min(this.f7276a, i2));
        int i4 = this.f7276a - fill;
        this.f7276a = i4;
        if (i4 == 0 && !m23261j()) {
            return -1;
        }
        return fill;
    }

    public void nextChunk() {
        this.position = this.limit;
        if (this.f7276a == -1) {
            m23261j();
        }
        while (true) {
            int i = this.f7276a;
            if (i <= 0) {
                break;
            }
            skip(i);
        }
        this.f7276a = -1;
        if (Log.TRACE) {
            Log.trace("kryo", "Next chunk.");
        }
    }

    public InputChunked(int i) {
        super(i);
        this.f7276a = -1;
    }

    /* renamed from: j */
    public final boolean m23261j() {
        try {
            InputStream inputStream = getInputStream();
            int i = 0;
            for (int i2 = 0; i2 < 32; i2 += 7) {
                int read = inputStream.read();
                if (read == -1) {
                    return false;
                }
                i |= (read & 127) << i2;
                if ((read & 128) == 0) {
                    this.f7276a = i;
                    if (Log.TRACE && i > 0) {
                        Log.trace("kryo", "Read chunk: " + this.f7276a);
                        return true;
                    }
                    return true;
                }
            }
            throw new KryoException("Unable to read chunk size: malformed integer");
        } catch (IOException e) {
            throw new KryoException("Unable to read chunk size.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream, com.esotericsoftware.kryo.util.Pool.Poolable
    public void reset() {
        super.reset();
        this.f7276a = -1;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setBuffer(byte[] bArr, int i, int i2) {
        super.setBuffer(bArr, i, i2);
        this.f7276a = -1;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setInputStream(InputStream inputStream) {
        super.setInputStream(inputStream);
        this.f7276a = -1;
    }

    public InputChunked(InputStream inputStream) {
        super(inputStream);
        this.f7276a = -1;
    }

    public InputChunked(InputStream inputStream, int i) {
        super(inputStream, i);
        this.f7276a = -1;
    }
}
