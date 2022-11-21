package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
/* renamed from: com.esotericsoftware.kryo.io.KryoBufferUnderflowException */
/* loaded from: classes.dex */
public class KryoBufferUnderflowException extends KryoException {
    public KryoBufferUnderflowException() {
    }

    public KryoBufferUnderflowException(String str, Throwable th) {
        super(str, th);
    }

    public KryoBufferUnderflowException(String str) {
        super(str);
    }

    public KryoBufferUnderflowException(Throwable th) {
        super(th);
    }
}
