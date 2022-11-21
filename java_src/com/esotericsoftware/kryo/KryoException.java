package com.esotericsoftware.kryo;
/* loaded from: classes.dex */
public class KryoException extends RuntimeException {

    /* renamed from: a */
    public StringBuffer f7257a;

    public KryoException() {
    }

    public KryoException(String str, Throwable th) {
        super(str, th);
    }

    public void addTrace(String str) {
        if (str != null) {
            if (this.f7257a == null) {
                this.f7257a = new StringBuffer(512);
            }
            this.f7257a.append('\n');
            this.f7257a.append(str);
            return;
        }
        throw new IllegalArgumentException("info cannot be null.");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f7257a == null) {
            return super.getMessage();
        }
        StringBuffer stringBuffer = new StringBuffer(512);
        stringBuffer.append(super.getMessage());
        if (stringBuffer.length() > 0) {
            stringBuffer.append('\n');
        }
        stringBuffer.append("Serialization trace:");
        stringBuffer.append(this.f7257a);
        return stringBuffer.toString();
    }

    public KryoException(String str) {
        super(str);
    }

    public KryoException(Throwable th) {
        super(th);
    }
}
