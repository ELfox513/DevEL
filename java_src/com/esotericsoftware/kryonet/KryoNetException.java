package com.esotericsoftware.kryonet;
/* loaded from: classes.dex */
public class KryoNetException extends RuntimeException {
    public KryoNetException() {
    }

    public KryoNetException(String str, Throwable th) {
        super(str, th);
    }

    public KryoNetException(String str) {
        super(str);
    }

    public KryoNetException(Throwable th) {
        super(th);
    }
}
