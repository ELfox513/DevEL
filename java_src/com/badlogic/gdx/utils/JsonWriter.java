package com.badlogic.gdx.utils;

import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class JsonWriter extends Writer {

    /* renamed from: a */
    public final Writer f6564a;

    /* renamed from: d */
    public JsonObject f6566d;

    /* renamed from: k */
    public boolean f6567k;

    /* renamed from: b */
    public final Array<JsonObject> f6565b = new Array<>();

    /* renamed from: p */
    public OutputType f6568p = OutputType.json;

    /* renamed from: q */
    public boolean f6569q = false;

    /* renamed from: com.badlogic.gdx.utils.JsonWriter$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C13471 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6570a;

        static {
            int[] iArr = new int[OutputType.values().length];
            f6570a = iArr;
            try {
                iArr[OutputType.minimal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6570a[OutputType.javascript.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class JsonObject {

        /* renamed from: a */
        public final boolean f6571a;

        /* renamed from: b */
        public boolean f6572b;

        /* renamed from: a */
        public void m23597a() {
            JsonWriter.this.f6564a.write(this.f6571a ? 93 : 125);
        }

        public JsonObject(boolean z) {
            int i;
            this.f6571a = z;
            Writer writer = JsonWriter.this.f6564a;
            if (z) {
                i = 91;
            } else {
                i = 123;
            }
            writer.write(i);
        }
    }

    /* loaded from: classes.dex */
    public enum OutputType {
        json,
        javascript,
        minimal;
        

        /* renamed from: a */
        public static Pattern f6574a = Pattern.compile("^[a-zA-Z_$][a-zA-Z_$0-9]*$");

        /* renamed from: b */
        public static Pattern f6575b = Pattern.compile("^[^\":,}/ ][^:]*$");

        /* renamed from: d */
        public static Pattern f6576d = Pattern.compile("^[^\":,{\\[\\]/ ][^}\\],]*$");

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0030, code lost:
            if (r1 != 2) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String quoteName(java.lang.String r5) {
            /*
                r4 = this;
                com.badlogic.gdx.utils.StringBuilder r0 = new com.badlogic.gdx.utils.StringBuilder
                r0.<init>(r5)
                r1 = 92
                java.lang.String r2 = "\\\\"
                com.badlogic.gdx.utils.StringBuilder r1 = r0.replace(r1, r2)
                r2 = 13
                java.lang.String r3 = "\\r"
                com.badlogic.gdx.utils.StringBuilder r1 = r1.replace(r2, r3)
                r2 = 10
                java.lang.String r3 = "\\n"
                com.badlogic.gdx.utils.StringBuilder r1 = r1.replace(r2, r3)
                r2 = 9
                java.lang.String r3 = "\\t"
                r1.replace(r2, r3)
                int[] r1 = com.badlogic.gdx.utils.JsonWriter.C13471.f6570a
                int r2 = r4.ordinal()
                r1 = r1[r2]
                r2 = 1
                if (r1 == r2) goto L33
                r5 = 2
                if (r1 == r5) goto L54
                goto L65
            L33:
                java.lang.String r1 = "//"
                boolean r1 = r5.contains(r1)
                if (r1 != 0) goto L54
                java.lang.String r1 = "/*"
                boolean r5 = r5.contains(r1)
                if (r5 != 0) goto L54
                java.util.regex.Pattern r5 = com.badlogic.gdx.utils.JsonWriter.OutputType.f6575b
                java.util.regex.Matcher r5 = r5.matcher(r0)
                boolean r5 = r5.matches()
                if (r5 == 0) goto L54
                java.lang.String r5 = r0.toString()
                return r5
            L54:
                java.util.regex.Pattern r5 = com.badlogic.gdx.utils.JsonWriter.OutputType.f6574a
                java.util.regex.Matcher r5 = r5.matcher(r0)
                boolean r5 = r5.matches()
                if (r5 == 0) goto L65
                java.lang.String r5 = r0.toString()
                return r5
            L65:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                r1 = 34
                r5.append(r1)
                java.lang.String r2 = "\\\""
                com.badlogic.gdx.utils.StringBuilder r0 = r0.replace(r1, r2)
                java.lang.String r0 = r0.toString()
                r5.append(r0)
                r5.append(r1)
                java.lang.String r5 = r5.toString()
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.JsonWriter.OutputType.quoteName(java.lang.String):java.lang.String");
        }

        public String quoteValue(Object obj) {
            int length;
            if (obj == null) {
                return "null";
            }
            String obj2 = obj.toString();
            if (!(obj instanceof Number) && !(obj instanceof Boolean)) {
                StringBuilder stringBuilder = new StringBuilder(obj2);
                stringBuilder.replace('\\', "\\\\").replace('\r', "\\r").replace('\n', "\\n").replace('\t', "\\t");
                if (this == minimal && !obj2.equals("true") && !obj2.equals("false") && !obj2.equals("null") && !obj2.contains("//") && !obj2.contains("/*") && (length = stringBuilder.length()) > 0 && stringBuilder.charAt(length - 1) != ' ' && f6576d.matcher(stringBuilder).matches()) {
                    return stringBuilder.toString();
                }
                return '\"' + stringBuilder.replace('\"', "\\\"").toString() + '\"';
            }
            return obj2;
        }
    }

    public JsonWriter array() {
        m23598c();
        Array<JsonObject> array = this.f6565b;
        JsonObject jsonObject = new JsonObject(true);
        this.f6566d = jsonObject;
        array.add(jsonObject);
        return this;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        this.f6564a.flush();
    }

    public Writer getWriter() {
        return this.f6564a;
    }

    public JsonWriter json(String str) {
        m23598c();
        this.f6564a.write(str);
        return this;
    }

    public JsonWriter object() {
        m23598c();
        Array<JsonObject> array = this.f6565b;
        JsonObject jsonObject = new JsonObject(false);
        this.f6566d = jsonObject;
        array.add(jsonObject);
        return this;
    }

    public JsonWriter set(String str, Object obj) {
        return name(str).value(obj);
    }

    public void setOutputType(OutputType outputType) {
        this.f6568p = outputType;
    }

    public void setQuoteLongValues(boolean z) {
        this.f6569q = z;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        this.f6564a.write(cArr, i, i2);
    }

    /* renamed from: c */
    public final void m23598c() {
        JsonObject jsonObject = this.f6566d;
        if (jsonObject == null) {
            return;
        }
        if (jsonObject.f6571a) {
            if (!jsonObject.f6572b) {
                jsonObject.f6572b = true;
            } else {
                this.f6564a.write(44);
            }
        } else if (this.f6567k) {
            this.f6567k = false;
        } else {
            throw new IllegalStateException("Name must be set.");
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (this.f6565b.size > 0) {
            pop();
        }
        this.f6564a.close();
    }

    public JsonWriter name(String str) {
        JsonObject jsonObject = this.f6566d;
        if (jsonObject != null && !jsonObject.f6571a) {
            if (!jsonObject.f6572b) {
                jsonObject.f6572b = true;
            } else {
                this.f6564a.write(44);
            }
            this.f6564a.write(this.f6568p.quoteName(str));
            this.f6564a.write(58);
            this.f6567k = true;
            return this;
        }
        throw new IllegalStateException("Current item must be an object.");
    }

    public JsonWriter pop() {
        JsonObject peek;
        if (!this.f6567k) {
            this.f6565b.pop().m23597a();
            Array<JsonObject> array = this.f6565b;
            if (array.size == 0) {
                peek = null;
            } else {
                peek = array.peek();
            }
            this.f6566d = peek;
            return this;
        }
        throw new IllegalStateException("Expected an object, array, or value since a name was set.");
    }

    public JsonWriter value(Object obj) {
        if (this.f6569q && ((obj instanceof Long) || (obj instanceof Double) || (obj instanceof BigDecimal) || (obj instanceof BigInteger))) {
            obj = obj.toString();
        } else if (obj instanceof Number) {
            Number number = (Number) obj;
            long longValue = number.longValue();
            if (number.doubleValue() == longValue) {
                obj = Long.valueOf(longValue);
            }
        }
        m23598c();
        this.f6564a.write(this.f6568p.quoteValue(obj));
        return this;
    }

    public JsonWriter(Writer writer) {
        this.f6564a = writer;
    }

    public JsonWriter array(String str) {
        return name(str).array();
    }

    public JsonWriter json(String str, String str2) {
        return name(str).json(str2);
    }

    public JsonWriter object(String str) {
        return name(str).object();
    }
}
