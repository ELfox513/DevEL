package com.esotericsoftware.kryonet.rmi;
/* loaded from: classes.dex */
public class TimeoutException extends RuntimeException {
    public TimeoutException() {
    }

    public TimeoutException(String str, Throwable th) {
        super(str, th);
    }

    public TimeoutException(String str) {
        super(str);
    }

    public TimeoutException(Throwable th) {
        super(th);
    }
}
