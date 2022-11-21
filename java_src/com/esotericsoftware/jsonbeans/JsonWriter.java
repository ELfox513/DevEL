package com.esotericsoftware.jsonbeans;

import java.io.Writer;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class JsonWriter extends Writer {

    /* renamed from: a */
    public final Writer f7202a;

    /* renamed from: d */
    public JsonObject f7204d;

    /* renamed from: k */
    public boolean f7205k;

    /* renamed from: b */
    public final ArrayList<JsonObject> f7203b = new ArrayList<>();

    /* renamed from: p */
    public OutputType f7206p = OutputType.json;

    /* loaded from: classes.dex */
    public class JsonObject {

        /* renamed from: a */
        public final boolean f7207a;

        /* renamed from: b */
        public boolean f7208b;

        /* renamed from: a */
        public void m23304a() {
            JsonWriter.this.f7202a.write(this.f7207a ? 93 : 125);
        }

        public JsonObject(boolean z) {
            int i;
            this.f7207a = z;
            Writer writer = JsonWriter.this.f7202a;
            if (z) {
                i = 91;
            } else {
                i = 123;
            }
            writer.write(i);
        }
    }

    public JsonWriter array() {
        JsonObject jsonObject = this.f7204d;
        if (jsonObject != null) {
            boolean z = jsonObject.f7207a;
            if (z) {
                if (!jsonObject.f7208b) {
                    jsonObject.f7208b = true;
                } else {
                    this.f7202a.write(44);
                }
            } else if (!this.f7205k && !z) {
                throw new IllegalStateException("Name must be set.");
            } else {
                this.f7205k = false;
            }
        }
        ArrayList<JsonObject> arrayList = this.f7203b;
        JsonObject jsonObject2 = new JsonObject(true);
        this.f7204d = jsonObject2;
        arrayList.add(jsonObject2);
        return this;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        this.f7202a.flush();
    }

    public Writer getWriter() {
        return this.f7202a;
    }

    public JsonWriter object() {
        JsonObject jsonObject = this.f7204d;
        if (jsonObject != null) {
            boolean z = jsonObject.f7207a;
            if (z) {
                if (!jsonObject.f7208b) {
                    jsonObject.f7208b = true;
                } else {
                    this.f7202a.write(44);
                }
            } else if (!this.f7205k && !z) {
                throw new IllegalStateException("Name must be set.");
            } else {
                this.f7205k = false;
            }
        }
        ArrayList<JsonObject> arrayList = this.f7203b;
        JsonObject jsonObject2 = new JsonObject(false);
        this.f7204d = jsonObject2;
        arrayList.add(jsonObject2);
        return this;
    }

    public JsonWriter set(String str, Object obj) {
        return name(str).value(obj);
    }

    public void setOutputType(OutputType outputType) {
        this.f7206p = outputType;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        this.f7202a.write(cArr, i, i2);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (this.f7203b.size() > 0) {
            pop();
        }
        this.f7202a.close();
    }

    public JsonWriter name(String str) {
        JsonObject jsonObject = this.f7204d;
        if (jsonObject != null && !jsonObject.f7207a) {
            if (!jsonObject.f7208b) {
                jsonObject.f7208b = true;
            } else {
                this.f7202a.write(44);
            }
            this.f7202a.write(this.f7206p.quoteName(str));
            this.f7202a.write(58);
            this.f7205k = true;
            return this;
        }
        throw new IllegalStateException("Current item must be an object.");
    }

    public JsonWriter pop() {
        JsonObject jsonObject;
        if (!this.f7205k) {
            ArrayList<JsonObject> arrayList = this.f7203b;
            arrayList.remove(arrayList.size() - 1).m23304a();
            if (this.f7203b.size() == 0) {
                jsonObject = null;
            } else {
                ArrayList<JsonObject> arrayList2 = this.f7203b;
                jsonObject = arrayList2.get(arrayList2.size() - 1);
            }
            this.f7204d = jsonObject;
            return this;
        }
        throw new IllegalStateException("Expected an object, array, or value since a name was set.");
    }

    public JsonWriter value(Object obj) {
        if (obj instanceof Number) {
            Number number = (Number) obj;
            long longValue = number.longValue();
            if (number.doubleValue() == longValue) {
                obj = Long.valueOf(longValue);
            }
        }
        JsonObject jsonObject = this.f7204d;
        if (jsonObject != null) {
            if (jsonObject.f7207a) {
                if (!jsonObject.f7208b) {
                    jsonObject.f7208b = true;
                } else {
                    this.f7202a.write(44);
                }
            } else if (this.f7205k) {
                this.f7205k = false;
            } else {
                throw new IllegalStateException("Name must be set.");
            }
        }
        this.f7202a.write(this.f7206p.quoteValue(obj));
        return this;
    }

    public JsonWriter(Writer writer) {
        this.f7202a = writer;
    }

    public JsonWriter array(String str) {
        return name(str).array();
    }

    public JsonWriter object(String str) {
        return name(str).object();
    }
}
