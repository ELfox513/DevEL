package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
/* renamed from: com.esotericsoftware.kryo.io.KryoBufferOverflowException */
/* loaded from: classes.dex */
public class KryoBufferOverflowException extends KryoException {
    public KryoBufferOverflowException() {
    }

    public KryoBufferOverflowException(String str, Throwable th) {
        super(str, th);
    }

    public KryoBufferOverflowException(String str) {
        super(str);
    }

    public KryoBufferOverflowException(Throwable th) {
        super(th);
    }
}
