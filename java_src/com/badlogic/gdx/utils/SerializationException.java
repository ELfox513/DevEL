package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public class SerializationException extends RuntimeException {

    /* renamed from: a */
    public StringBuilder f6733a;

    public SerializationException() {
    }

    public boolean causedBy(Class cls) {
        return m23540a(this, cls);
    }

    public SerializationException(String str, Throwable th) {
        super(str, th);
    }

    public void addTrace(String str) {
        if (str != null) {
            if (this.f6733a == null) {
                this.f6733a = new StringBuilder(512);
            }
            this.f6733a.append('\n');
            this.f6733a.append(str);
            return;
        }
        throw new IllegalArgumentException("info cannot be null.");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f6733a == null) {
            return super.getMessage();
        }
        StringBuilder stringBuilder = new StringBuilder(512);
        stringBuilder.append(super.getMessage());
        if (stringBuilder.length() > 0) {
            stringBuilder.append('\n');
        }
        stringBuilder.append("Serialization trace:");
        stringBuilder.append(this.f6733a);
        return stringBuilder.toString();
    }

    public SerializationException(String str) {
        super(str);
    }

    /* renamed from: a */
    public final boolean m23540a(Throwable th, Class cls) {
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            if (cls.isAssignableFrom(cause.getClass())) {
                return true;
            }
            return m23540a(cause, cls);
        }
        return false;
    }

    public SerializationException(Throwable th) {
        super("", th);
    }
}
