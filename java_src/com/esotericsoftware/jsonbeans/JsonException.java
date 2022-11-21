package com.esotericsoftware.jsonbeans;
/* loaded from: classes.dex */
public class JsonException extends RuntimeException {

    /* renamed from: a */
    public StringBuffer f7178a;

    public JsonException() {
    }

    public boolean causedBy(Class cls) {
        return m23321a(this, cls);
    }

    public JsonException(String str, Throwable th) {
        super(str, th);
    }

    public void addTrace(String str) {
        if (str != null) {
            if (this.f7178a == null) {
                this.f7178a = new StringBuffer(512);
            }
            this.f7178a.append('\n');
            this.f7178a.append(str);
            return;
        }
        throw new IllegalArgumentException("info cannot be null.");
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.f7178a == null) {
            return super.getMessage();
        }
        StringBuffer stringBuffer = new StringBuffer(512);
        stringBuffer.append(super.getMessage());
        if (stringBuffer.length() > 0) {
            stringBuffer.append('\n');
        }
        stringBuffer.append("Serialization trace:");
        stringBuffer.append(this.f7178a);
        return stringBuffer.toString();
    }

    public JsonException(String str) {
        super(str);
    }

    /* renamed from: a */
    public final boolean m23321a(Throwable th, Class cls) {
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            if (cls.isAssignableFrom(cause.getClass())) {
                return true;
            }
            return m23321a(cause, cls);
        }
        return false;
    }

    public JsonException(Throwable th) {
        super("", th);
    }
}
