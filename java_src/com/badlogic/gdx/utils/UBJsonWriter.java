package com.badlogic.gdx.utils;

import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class UBJsonWriter implements Closeable {

    /* renamed from: a */
    public final DataOutputStream f6776a;

    /* renamed from: b */
    public JsonObject f6777b;

    /* renamed from: d */
    public boolean f6778d;

    /* renamed from: k */
    public final Array<JsonObject> f6779k = new Array<>();

    /* loaded from: classes.dex */
    public class JsonObject {

        /* renamed from: a */
        public final boolean f6780a;

        /* renamed from: a */
        public void m23479a() {
            UBJsonWriter.this.f6776a.writeByte(this.f6780a ? 93 : 125);
        }

        public JsonObject(boolean z) {
            int i;
            this.f6780a = z;
            DataOutputStream dataOutputStream = UBJsonWriter.this.f6776a;
            if (z) {
                i = 91;
            } else {
                i = 123;
            }
            dataOutputStream.writeByte(i);
        }
    }

    public UBJsonWriter array() {
        JsonObject jsonObject = this.f6777b;
        if (jsonObject != null && !jsonObject.f6780a) {
            if (this.f6778d) {
                this.f6778d = false;
            } else {
                throw new IllegalStateException("Name must be set.");
            }
        }
        Array<JsonObject> array = this.f6779k;
        JsonObject jsonObject2 = new JsonObject(true);
        this.f6777b = jsonObject2;
        array.add(jsonObject2);
        return this;
    }

    public void flush() {
        this.f6776a.flush();
    }

    public UBJsonWriter object() {
        JsonObject jsonObject = this.f6777b;
        if (jsonObject != null && !jsonObject.f6780a) {
            if (this.f6778d) {
                this.f6778d = false;
            } else {
                throw new IllegalStateException("Name must be set.");
            }
        }
        Array<JsonObject> array = this.f6779k;
        JsonObject jsonObject2 = new JsonObject(false);
        this.f6777b = jsonObject2;
        array.add(jsonObject2);
        return this;
    }

    public UBJsonWriter pop() {
        return m23480d(false);
    }

    public UBJsonWriter set(String str, byte b) {
        return name(str).value(b);
    }

    public UBJsonWriter value(byte b) {
        m23481c();
        this.f6776a.writeByte(105);
        this.f6776a.writeByte(b);
        return this;
    }

    /* renamed from: c */
    public final void m23481c() {
        JsonObject jsonObject = this.f6777b;
        if (jsonObject != null && !jsonObject.f6780a) {
            if (this.f6778d) {
                this.f6778d = false;
                return;
            }
            throw new IllegalStateException("Name must be set.");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (this.f6779k.size > 0) {
            pop();
        }
        this.f6776a.close();
    }

    /* renamed from: d */
    public UBJsonWriter m23480d(boolean z) {
        JsonObject peek;
        if (!this.f6778d) {
            if (z) {
                this.f6779k.pop();
            } else {
                this.f6779k.pop().m23479a();
            }
            Array<JsonObject> array = this.f6779k;
            if (array.size == 0) {
                peek = null;
            } else {
                peek = array.peek();
            }
            this.f6777b = peek;
            return this;
        }
        throw new IllegalStateException("Expected an object, array, or value since a name was set.");
    }

    public UBJsonWriter name(String str) {
        JsonObject jsonObject = this.f6777b;
        if (jsonObject != null && !jsonObject.f6780a) {
            byte[] bytes = str.getBytes("UTF-8");
            if (bytes.length <= 127) {
                this.f6776a.writeByte(105);
                this.f6776a.writeByte(bytes.length);
            } else if (bytes.length <= 32767) {
                this.f6776a.writeByte(73);
                this.f6776a.writeShort(bytes.length);
            } else {
                this.f6776a.writeByte(108);
                this.f6776a.writeInt(bytes.length);
            }
            this.f6776a.write(bytes);
            this.f6778d = true;
            return this;
        }
        throw new IllegalStateException("Current item must be an object.");
    }

    public UBJsonWriter set(String str, short s) {
        return name(str).value(s);
    }

    public UBJsonWriter(OutputStream outputStream) {
        this.f6776a = (DataOutputStream) (outputStream instanceof DataOutputStream ? outputStream : new DataOutputStream(outputStream));
    }

    public UBJsonWriter set(String str, int i) {
        return name(str).value(i);
    }

    public UBJsonWriter set(String str, long j) {
        return name(str).value(j);
    }

    public UBJsonWriter value(short s) {
        m23481c();
        this.f6776a.writeByte(73);
        this.f6776a.writeShort(s);
        return this;
    }

    public UBJsonWriter set(String str, float f) {
        return name(str).value(f);
    }

    public UBJsonWriter set(String str, double d) {
        return name(str).value(d);
    }

    public UBJsonWriter array(String str) {
        name(str).array();
        return this;
    }

    public UBJsonWriter object(String str) {
        name(str).object();
        return this;
    }

    public UBJsonWriter set(String str, boolean z) {
        return name(str).value(z);
    }

    public UBJsonWriter value(int i) {
        m23481c();
        this.f6776a.writeByte(108);
        this.f6776a.writeInt(i);
        return this;
    }

    public UBJsonWriter set(String str, char c) {
        return name(str).value(c);
    }

    public UBJsonWriter set(String str, String str2) {
        return name(str).value(str2);
    }

    public UBJsonWriter set(String str, byte[] bArr) {
        return name(str).value(bArr);
    }

    public UBJsonWriter value(long j) {
        m23481c();
        this.f6776a.writeByte(76);
        this.f6776a.writeLong(j);
        return this;
    }

    public UBJsonWriter set(String str, short[] sArr) {
        return name(str).value(sArr);
    }

    public UBJsonWriter set(String str, int[] iArr) {
        return name(str).value(iArr);
    }

    public UBJsonWriter set(String str, long[] jArr) {
        return name(str).value(jArr);
    }

    public UBJsonWriter value(float f) {
        m23481c();
        this.f6776a.writeByte(100);
        this.f6776a.writeFloat(f);
        return this;
    }

    public UBJsonWriter set(String str, float[] fArr) {
        return name(str).value(fArr);
    }

    public UBJsonWriter set(String str, double[] dArr) {
        return name(str).value(dArr);
    }

    public UBJsonWriter set(String str, boolean[] zArr) {
        return name(str).value(zArr);
    }

    public UBJsonWriter value(double d) {
        m23481c();
        this.f6776a.writeByte(68);
        this.f6776a.writeDouble(d);
        return this;
    }

    public UBJsonWriter set(String str, char[] cArr) {
        return name(str).value(cArr);
    }

    public UBJsonWriter set(String str, String[] strArr) {
        return name(str).value(strArr);
    }

    public UBJsonWriter set(String str) {
        return name(str).value();
    }

    public UBJsonWriter value(boolean z) {
        m23481c();
        this.f6776a.writeByte(z ? 84 : 70);
        return this;
    }

    public UBJsonWriter value(char c) {
        m23481c();
        this.f6776a.writeByte(73);
        this.f6776a.writeChar(c);
        return this;
    }

    public UBJsonWriter value(String str) {
        m23481c();
        byte[] bytes = str.getBytes("UTF-8");
        this.f6776a.writeByte(83);
        if (bytes.length <= 127) {
            this.f6776a.writeByte(105);
            this.f6776a.writeByte(bytes.length);
        } else if (bytes.length <= 32767) {
            this.f6776a.writeByte(73);
            this.f6776a.writeShort(bytes.length);
        } else {
            this.f6776a.writeByte(108);
            this.f6776a.writeInt(bytes.length);
        }
        this.f6776a.write(bytes);
        return this;
    }

    public UBJsonWriter value(byte[] bArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(105);
        this.f6776a.writeByte(35);
        value(bArr.length);
        for (byte b : bArr) {
            this.f6776a.writeByte(b);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(short[] sArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(73);
        this.f6776a.writeByte(35);
        value(sArr.length);
        for (short s : sArr) {
            this.f6776a.writeShort(s);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(int[] iArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(108);
        this.f6776a.writeByte(35);
        value(iArr.length);
        for (int i : iArr) {
            this.f6776a.writeInt(i);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(long[] jArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(76);
        this.f6776a.writeByte(35);
        value(jArr.length);
        for (long j : jArr) {
            this.f6776a.writeLong(j);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(float[] fArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(100);
        this.f6776a.writeByte(35);
        value(fArr.length);
        for (float f : fArr) {
            this.f6776a.writeFloat(f);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(double[] dArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(68);
        this.f6776a.writeByte(35);
        value(dArr.length);
        for (double d : dArr) {
            this.f6776a.writeDouble(d);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(boolean[] zArr) {
        array();
        for (boolean z : zArr) {
            this.f6776a.writeByte(z ? 84 : 70);
        }
        pop();
        return this;
    }

    public UBJsonWriter value(char[] cArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(67);
        this.f6776a.writeByte(35);
        value(cArr.length);
        for (char c : cArr) {
            this.f6776a.writeChar(c);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(String[] strArr) {
        array();
        this.f6776a.writeByte(36);
        this.f6776a.writeByte(83);
        this.f6776a.writeByte(35);
        value(strArr.length);
        for (String str : strArr) {
            byte[] bytes = str.getBytes("UTF-8");
            if (bytes.length <= 127) {
                this.f6776a.writeByte(105);
                this.f6776a.writeByte(bytes.length);
            } else if (bytes.length <= 32767) {
                this.f6776a.writeByte(73);
                this.f6776a.writeShort(bytes.length);
            } else {
                this.f6776a.writeByte(108);
                this.f6776a.writeInt(bytes.length);
            }
            this.f6776a.write(bytes);
        }
        m23480d(true);
        return this;
    }

    public UBJsonWriter value(JsonValue jsonValue) {
        if (jsonValue.isObject()) {
            String str = jsonValue.name;
            if (str != null) {
                object(str);
            } else {
                object();
            }
            for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
                value(jsonValue2);
            }
            pop();
        } else if (jsonValue.isArray()) {
            String str2 = jsonValue.name;
            if (str2 != null) {
                array(str2);
            } else {
                array();
            }
            for (JsonValue jsonValue3 = jsonValue.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                value(jsonValue3);
            }
            pop();
        } else if (jsonValue.isBoolean()) {
            String str3 = jsonValue.name;
            if (str3 != null) {
                name(str3);
            }
            value(jsonValue.asBoolean());
        } else if (jsonValue.isDouble()) {
            String str4 = jsonValue.name;
            if (str4 != null) {
                name(str4);
            }
            value(jsonValue.asDouble());
        } else if (jsonValue.isLong()) {
            String str5 = jsonValue.name;
            if (str5 != null) {
                name(str5);
            }
            value(jsonValue.asLong());
        } else if (jsonValue.isString()) {
            String str6 = jsonValue.name;
            if (str6 != null) {
                name(str6);
            }
            value(jsonValue.asString());
        } else if (jsonValue.isNull()) {
            String str7 = jsonValue.name;
            if (str7 != null) {
                name(str7);
            }
            value();
        } else {
            throw new IOException("Unhandled JsonValue type");
        }
        return this;
    }

    public UBJsonWriter value(Object obj) {
        if (obj == null) {
            return value();
        }
        if (obj instanceof Number) {
            Number number = (Number) obj;
            return obj instanceof Byte ? value(number.byteValue()) : obj instanceof Short ? value(number.shortValue()) : obj instanceof Integer ? value(number.intValue()) : obj instanceof Long ? value(number.longValue()) : obj instanceof Float ? value(number.floatValue()) : obj instanceof Double ? value(number.doubleValue()) : this;
        } else if (obj instanceof Character) {
            return value(((Character) obj).charValue());
        } else {
            if (obj instanceof CharSequence) {
                return value(obj.toString());
            }
            throw new IOException("Unknown object type.");
        }
    }

    public UBJsonWriter value() {
        m23481c();
        this.f6776a.writeByte(90);
        return this;
    }
}
