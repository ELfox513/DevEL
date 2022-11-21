package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.JsonWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class JsonValue implements Iterable<JsonValue> {

    /* renamed from: a */
    public ValueType f6555a;

    /* renamed from: b */
    public String f6556b;
    public JsonValue child;

    /* renamed from: d */
    public double f6557d;

    /* renamed from: k */
    public long f6558k;
    public String name;
    public JsonValue next;
    public JsonValue parent;
    public JsonValue prev;
    public int size;

    /* renamed from: com.badlogic.gdx.utils.JsonValue$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C13461 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6559a;

        static {
            int[] iArr = new int[ValueType.values().length];
            f6559a = iArr;
            try {
                iArr[ValueType.stringValue.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6559a[ValueType.doubleValue.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6559a[ValueType.longValue.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6559a[ValueType.booleanValue.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6559a[ValueType.nullValue.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class JsonIterator implements Iterator<JsonValue>, Iterable<JsonValue> {

        /* renamed from: a */
        public JsonValue f6560a;

        /* renamed from: b */
        public JsonValue f6561b;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f6560a != null;
        }

        @Override // java.lang.Iterable
        public Iterator<JsonValue> iterator() {
            return this;
        }

        public JsonIterator() {
            this.f6560a = JsonValue.this.child;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public JsonValue next() {
            JsonValue jsonValue = this.f6560a;
            this.f6561b = jsonValue;
            if (jsonValue != null) {
                this.f6560a = jsonValue.next;
                return jsonValue;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            JsonValue jsonValue = this.f6561b;
            JsonValue jsonValue2 = jsonValue.prev;
            if (jsonValue2 == null) {
                JsonValue jsonValue3 = JsonValue.this;
                JsonValue jsonValue4 = jsonValue.next;
                jsonValue3.child = jsonValue4;
                if (jsonValue4 != null) {
                    jsonValue4.prev = null;
                }
            } else {
                jsonValue2.next = jsonValue.next;
                JsonValue jsonValue5 = jsonValue.next;
                if (jsonValue5 != null) {
                    jsonValue5.prev = jsonValue2;
                }
            }
            JsonValue jsonValue6 = JsonValue.this;
            jsonValue6.size--;
        }
    }

    /* loaded from: classes.dex */
    public static class PrettyPrintSettings {
        public JsonWriter.OutputType outputType;
        public int singleLineColumns;
        public boolean wrapNumericArrays;
    }

    /* loaded from: classes.dex */
    public enum ValueType {
        object,
        array,
        stringValue,
        doubleValue,
        longValue,
        booleanValue,
        nullValue
    }

    public JsonValue(ValueType valueType) {
        this.f6555a = valueType;
    }

    /* renamed from: d */
    public static void m23605d(int i, StringBuilder stringBuilder) {
        for (int i2 = 0; i2 < i; i2++) {
            stringBuilder.append('\t');
        }
    }

    /* renamed from: e */
    public static void m23604e(int i, Writer writer) {
        for (int i2 = 0; i2 < i; i2++) {
            writer.append('\t');
        }
    }

    public void addChild(String str, JsonValue jsonValue) {
        if (str != null) {
            jsonValue.name = str;
            addChild(jsonValue);
            return;
        }
        throw new IllegalArgumentException("name cannot be null.");
    }

    @Null
    public JsonValue child() {
        return this.child;
    }

    @Null
    public JsonValue get(int i) {
        JsonValue jsonValue = this.child;
        while (jsonValue != null && i > 0) {
            i--;
            jsonValue = jsonValue.next;
        }
        return jsonValue;
    }

    public boolean getBoolean(String str, boolean z) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? z : jsonValue.asBoolean();
    }

    public byte getByte(String str, byte b) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? b : jsonValue.asByte();
    }

    public char getChar(String str, char c) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? c : jsonValue.asChar();
    }

    public double getDouble(String str, double d) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? d : jsonValue.asDouble();
    }

    public float getFloat(String str, float f) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? f : jsonValue.asFloat();
    }

    public int getInt(String str, int i) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? i : jsonValue.asInt();
    }

    public long getLong(String str, long j) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? j : jsonValue.asLong();
    }

    public short getShort(String str, short s) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? s : jsonValue.asShort();
    }

    public String getString(String str, @Null String str2) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue() || jsonValue.isNull()) ? str2 : jsonValue.asString();
    }

    public boolean has(String str) {
        return get(str) != null;
    }

    public boolean hasChild(String str) {
        return getChild(str) != null;
    }

    public boolean isArray() {
        return this.f6555a == ValueType.array;
    }

    public boolean isBoolean() {
        return this.f6555a == ValueType.booleanValue;
    }

    public boolean isDouble() {
        return this.f6555a == ValueType.doubleValue;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean isLong() {
        return this.f6555a == ValueType.longValue;
    }

    public boolean isNull() {
        return this.f6555a == ValueType.nullValue;
    }

    public boolean isNumber() {
        ValueType valueType = this.f6555a;
        return valueType == ValueType.doubleValue || valueType == ValueType.longValue;
    }

    public boolean isObject() {
        return this.f6555a == ValueType.object;
    }

    public boolean isString() {
        return this.f6555a == ValueType.stringValue;
    }

    public boolean isValue() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    @Null
    public String name() {
        return this.name;
    }

    @Null
    public JsonValue next() {
        return this.next;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    @Null
    public JsonValue parent() {
        return this.parent;
    }

    public String prettyPrint(JsonWriter.OutputType outputType, int i) {
        PrettyPrintSettings prettyPrintSettings = new PrettyPrintSettings();
        prettyPrintSettings.outputType = outputType;
        prettyPrintSettings.singleLineColumns = i;
        return prettyPrint(prettyPrintSettings);
    }

    @Null
    public JsonValue prev() {
        return this.prev;
    }

    @Null
    public JsonValue remove(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue == null) {
            return null;
        }
        JsonValue jsonValue2 = jsonValue.prev;
        if (jsonValue2 == null) {
            JsonValue jsonValue3 = jsonValue.next;
            this.child = jsonValue3;
            if (jsonValue3 != null) {
                jsonValue3.prev = null;
            }
        } else {
            jsonValue2.next = jsonValue.next;
            JsonValue jsonValue4 = jsonValue.next;
            if (jsonValue4 != null) {
                jsonValue4.prev = jsonValue2;
            }
        }
        this.size--;
        return jsonValue;
    }

    public JsonValue require(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue;
        }
        throw new IllegalArgumentException("Child not found with index: " + i);
    }

    public void set(@Null String str) {
        this.f6556b = str;
        this.f6555a = str == null ? ValueType.nullValue : ValueType.stringValue;
    }

    public void setName(@Null String str) {
        this.name = str;
    }

    public void setNext(@Null JsonValue jsonValue) {
        this.next = jsonValue;
    }

    public void setPrev(@Null JsonValue jsonValue) {
        this.prev = jsonValue;
    }

    @Deprecated
    public int size() {
        return this.size;
    }

    public ValueType type() {
        return this.f6555a;
    }

    /* renamed from: g */
    public static boolean m23603g(JsonValue jsonValue) {
        for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
            if (jsonValue2.isObject() || jsonValue2.isArray()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public static boolean m23602i(JsonValue jsonValue) {
        for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
            if (!jsonValue2.isNumber()) {
                return false;
            }
        }
        return true;
    }

    public boolean asBoolean() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return true;
                        }
                        return false;
                    }
                    throw new IllegalStateException("Value cannot be converted to boolean: " + this.f6555a);
                } else if (this.f6558k != 0) {
                    return true;
                } else {
                    return false;
                }
            } else if (this.f6557d != 0.0d) {
                return true;
            } else {
                return false;
            }
        }
        return this.f6556b.equalsIgnoreCase("true");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        if (r1.f6558k != 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
        if (r1.f6558k == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        if (r1.f6557d == 0.0d) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean[] asBooleanArray() {
        /*
            r11 = this;
            com.badlogic.gdx.utils.JsonValue$ValueType r0 = r11.f6555a
            com.badlogic.gdx.utils.JsonValue$ValueType r1 = com.badlogic.gdx.utils.JsonValue.ValueType.array
            if (r0 != r1) goto L68
            int r0 = r11.size
            boolean[] r0 = new boolean[r0]
            com.badlogic.gdx.utils.JsonValue r1 = r11.child
            r2 = 0
            r3 = 0
        Le:
            if (r1 == 0) goto L67
            int[] r4 = com.badlogic.gdx.utils.JsonValue.C13461.f6559a
            com.badlogic.gdx.utils.JsonValue$ValueType r5 = r1.f6555a
            int r5 = r5.ordinal()
            r4 = r4[r5]
            r5 = 1
            if (r4 == r5) goto L5b
            r6 = 2
            if (r4 == r6) goto L52
            r6 = 3
            r7 = 0
            if (r4 == r6) goto L4b
            r6 = 4
            if (r4 != r6) goto L32
            long r9 = r1.f6558k
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 == 0) goto L30
        L2e:
            r4 = 1
            goto L61
        L30:
            r4 = 0
            goto L61
        L32:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Value cannot be converted to boolean: "
            r2.append(r3)
            com.badlogic.gdx.utils.JsonValue$ValueType r1 = r1.f6555a
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L4b:
            long r9 = r1.f6558k
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 != 0) goto L30
            goto L2e
        L52:
            double r6 = r1.f6557d
            r8 = 0
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 != 0) goto L30
            goto L2e
        L5b:
            java.lang.String r4 = r1.f6556b
            boolean r4 = java.lang.Boolean.parseBoolean(r4)
        L61:
            r0[r3] = r4
            com.badlogic.gdx.utils.JsonValue r1 = r1.next
            int r3 = r3 + r5
            goto Le
        L67:
            return r0
        L68:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Value is not an array: "
            r1.append(r2)
            com.badlogic.gdx.utils.JsonValue$ValueType r2 = r11.f6555a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            goto L82
        L81:
            throw r0
        L82:
            goto L81
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.JsonValue.asBooleanArray():boolean[]");
    }

    public byte asByte() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return (byte) 1;
                        }
                        return (byte) 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to byte: " + this.f6555a);
                }
                return (byte) this.f6558k;
            }
            return (byte) this.f6557d;
        }
        return Byte.parseByte(this.f6556b);
    }

    public byte[] asByteArray() {
        byte parseByte;
        int i;
        if (this.f6555a == ValueType.array) {
            byte[] bArr = new byte[this.size];
            JsonValue jsonValue = this.child;
            int i2 = 0;
            while (jsonValue != null) {
                int i3 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                if (jsonValue.f6558k != 0) {
                                    parseByte = 1;
                                } else {
                                    parseByte = 0;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to byte: " + jsonValue.f6555a);
                            }
                        } else {
                            i = (int) jsonValue.f6558k;
                        }
                    } else {
                        i = (int) jsonValue.f6557d;
                    }
                    parseByte = (byte) i;
                } else {
                    parseByte = Byte.parseByte(jsonValue.f6556b);
                }
                bArr[i2] = parseByte;
                jsonValue = jsonValue.next;
                i2++;
            }
            return bArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    public char asChar() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return (char) 1;
                        }
                        return (char) 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to char: " + this.f6555a);
                }
                return (char) this.f6558k;
            }
            return (char) this.f6557d;
        } else if (this.f6556b.length() == 0) {
            return (char) 0;
        } else {
            return this.f6556b.charAt(0);
        }
    }

    public char[] asCharArray() {
        char charAt;
        int i;
        if (this.f6555a == ValueType.array) {
            char[] cArr = new char[this.size];
            JsonValue jsonValue = this.child;
            int i2 = 0;
            while (jsonValue != null) {
                int i3 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                if (jsonValue.f6558k != 0) {
                                    charAt = 1;
                                }
                                charAt = 0;
                            } else {
                                throw new IllegalStateException("Value cannot be converted to char: " + jsonValue.f6555a);
                            }
                        } else {
                            i = (int) jsonValue.f6558k;
                        }
                    } else {
                        i = (int) jsonValue.f6557d;
                    }
                    charAt = (char) i;
                } else {
                    if (jsonValue.f6556b.length() != 0) {
                        charAt = jsonValue.f6556b.charAt(0);
                    }
                    charAt = 0;
                }
                cArr[i2] = charAt;
                jsonValue = jsonValue.next;
                i2++;
            }
            return cArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    public double asDouble() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return 1.0d;
                        }
                        return 0.0d;
                    }
                    throw new IllegalStateException("Value cannot be converted to double: " + this.f6555a);
                }
                return this.f6558k;
            }
            return this.f6557d;
        }
        return Double.parseDouble(this.f6556b);
    }

    public double[] asDoubleArray() {
        double parseDouble;
        if (this.f6555a == ValueType.array) {
            double[] dArr = new double[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (jsonValue.f6558k != 0) {
                                    parseDouble = 1.0d;
                                } else {
                                    parseDouble = 0.0d;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to double: " + jsonValue.f6555a);
                            }
                        } else {
                            parseDouble = jsonValue.f6558k;
                        }
                    } else {
                        parseDouble = jsonValue.f6557d;
                    }
                } else {
                    parseDouble = Double.parseDouble(jsonValue.f6556b);
                }
                dArr[i] = parseDouble;
                jsonValue = jsonValue.next;
                i++;
            }
            return dArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    public float asFloat() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return 1.0f;
                        }
                        return 0.0f;
                    }
                    throw new IllegalStateException("Value cannot be converted to float: " + this.f6555a);
                }
                return (float) this.f6558k;
            }
            return (float) this.f6557d;
        }
        return Float.parseFloat(this.f6556b);
    }

    public float[] asFloatArray() {
        float parseFloat;
        if (this.f6555a == ValueType.array) {
            float[] fArr = new float[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (jsonValue.f6558k != 0) {
                                    parseFloat = 1.0f;
                                } else {
                                    parseFloat = 0.0f;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to float: " + jsonValue.f6555a);
                            }
                        } else {
                            parseFloat = (float) jsonValue.f6558k;
                        }
                    } else {
                        parseFloat = (float) jsonValue.f6557d;
                    }
                } else {
                    parseFloat = Float.parseFloat(jsonValue.f6556b);
                }
                fArr[i] = parseFloat;
                jsonValue = jsonValue.next;
                i++;
            }
            return fArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    public int asInt() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return 1;
                        }
                        return 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to int: " + this.f6555a);
                }
                return (int) this.f6558k;
            }
            return (int) this.f6557d;
        }
        return Integer.parseInt(this.f6556b);
    }

    public int[] asIntArray() {
        int parseInt;
        if (this.f6555a == ValueType.array) {
            int[] iArr = new int[this.size];
            JsonValue jsonValue = this.child;
            int i = 0;
            while (jsonValue != null) {
                int i2 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (jsonValue.f6558k != 0) {
                                    parseInt = 1;
                                } else {
                                    parseInt = 0;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to int: " + jsonValue.f6555a);
                            }
                        } else {
                            parseInt = (int) jsonValue.f6558k;
                        }
                    } else {
                        parseInt = (int) jsonValue.f6557d;
                    }
                } else {
                    parseInt = Integer.parseInt(jsonValue.f6556b);
                }
                iArr[i] = parseInt;
                jsonValue = jsonValue.next;
                i++;
            }
            return iArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    public long asLong() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k == 0) {
                            return 0L;
                        }
                        return 1L;
                    }
                    throw new IllegalStateException("Value cannot be converted to long: " + this.f6555a);
                }
                return this.f6558k;
            }
            return (long) this.f6557d;
        }
        return Long.parseLong(this.f6556b);
    }

    public long[] asLongArray() {
        long parseLong;
        if (this.f6555a == ValueType.array) {
            long[] jArr = new long[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                parseLong = 0;
                                if (jsonValue.f6558k != 0) {
                                    parseLong = 1;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to long: " + jsonValue.f6555a);
                            }
                        } else {
                            parseLong = jsonValue.f6558k;
                        }
                    } else {
                        parseLong = (long) jsonValue.f6557d;
                    }
                } else {
                    parseLong = Long.parseLong(jsonValue.f6556b);
                }
                jArr[i] = parseLong;
                jsonValue = jsonValue.next;
                i++;
            }
            return jArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    public short asShort() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f6558k != 0) {
                            return (short) 1;
                        }
                        return (short) 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to short: " + this.f6555a);
                }
                return (short) this.f6558k;
            }
            return (short) this.f6557d;
        }
        return Short.parseShort(this.f6556b);
    }

    public short[] asShortArray() {
        short parseShort;
        int i;
        if (this.f6555a == ValueType.array) {
            short[] sArr = new short[this.size];
            JsonValue jsonValue = this.child;
            int i2 = 0;
            while (jsonValue != null) {
                int i3 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                if (jsonValue.f6558k != 0) {
                                    parseShort = 1;
                                } else {
                                    parseShort = 0;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to short: " + jsonValue.f6555a);
                            }
                        } else {
                            i = (int) jsonValue.f6558k;
                        }
                    } else {
                        i = (int) jsonValue.f6557d;
                    }
                    parseShort = (short) i;
                } else {
                    parseShort = Short.parseShort(jsonValue.f6556b);
                }
                sArr[i2] = parseShort;
                jsonValue = jsonValue.next;
                i2++;
            }
            return sArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    @Null
    public String asString() {
        int i = C13461.f6559a[this.f6555a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return null;
                        }
                        throw new IllegalStateException("Value cannot be converted to string: " + this.f6555a);
                    } else if (this.f6558k != 0) {
                        return "true";
                    } else {
                        return "false";
                    }
                }
                String str = this.f6556b;
                if (str == null) {
                    return Long.toString(this.f6558k);
                }
                return str;
            }
            String str2 = this.f6556b;
            if (str2 == null) {
                return Double.toString(this.f6557d);
            }
            return str2;
        }
        return this.f6556b;
    }

    public String[] asStringArray() {
        String str;
        if (this.f6555a == ValueType.array) {
            String[] strArr = new String[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13461.f6559a[jsonValue.f6555a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                if (i2 == 5) {
                                    str = null;
                                } else {
                                    throw new IllegalStateException("Value cannot be converted to string: " + jsonValue.f6555a);
                                }
                            } else if (jsonValue.f6558k != 0) {
                                str = "true";
                            } else {
                                str = "false";
                            }
                        } else {
                            str = this.f6556b;
                            if (str == null) {
                                str = Long.toString(jsonValue.f6558k);
                            }
                        }
                    } else {
                        str = this.f6556b;
                        if (str == null) {
                            str = Double.toString(jsonValue.f6557d);
                        }
                    }
                } else {
                    str = jsonValue.f6556b;
                }
                strArr[i] = str;
                jsonValue = jsonValue.next;
                i++;
            }
            return strArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f6555a);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.badlogic.gdx.utils.JsonValue$JsonIterator] */
    public JsonIterator iterator(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue == null) {
            JsonIterator jsonIterator = new JsonIterator();
            jsonIterator.f6560a = null;
            return jsonIterator;
        }
        return jsonValue.iterator2();
    }

    /* renamed from: l */
    public final void m23600l(JsonValue jsonValue, StringBuilder stringBuilder, int i, PrettyPrintSettings prettyPrintSettings) {
        boolean z;
        String str;
        char c;
        String str2;
        char c2;
        JsonWriter.OutputType outputType = prettyPrintSettings.outputType;
        if (jsonValue.isObject()) {
            if (jsonValue.child == null) {
                stringBuilder.append("{}");
                return;
            }
            boolean z2 = !m23603g(jsonValue);
            int length = stringBuilder.length();
            loop0: while (true) {
                if (z2) {
                    str2 = "{\n";
                } else {
                    str2 = "{ ";
                }
                stringBuilder.append(str2);
                for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
                    if (z2) {
                        m23605d(i, stringBuilder);
                    }
                    stringBuilder.append(outputType.quoteName(jsonValue2.name));
                    stringBuilder.append(": ");
                    m23600l(jsonValue2, stringBuilder, i + 1, prettyPrintSettings);
                    if ((!z2 || outputType != JsonWriter.OutputType.minimal) && jsonValue2.next != null) {
                        stringBuilder.append(',');
                    }
                    if (z2) {
                        c2 = '\n';
                    } else {
                        c2 = ' ';
                    }
                    stringBuilder.append(c2);
                    if (z2 || stringBuilder.length() - length <= prettyPrintSettings.singleLineColumns) {
                    }
                }
                stringBuilder.setLength(length);
                z2 = true;
            }
            if (z2) {
                m23605d(i - 1, stringBuilder);
            }
            stringBuilder.append('}');
        } else if (jsonValue.isArray()) {
            if (jsonValue.child == null) {
                stringBuilder.append("[]");
                return;
            }
            boolean z3 = !m23603g(jsonValue);
            if (!prettyPrintSettings.wrapNumericArrays && m23602i(jsonValue)) {
                z = false;
            } else {
                z = true;
            }
            int length2 = stringBuilder.length();
            loop2: while (true) {
                if (z3) {
                    str = "[\n";
                } else {
                    str = "[ ";
                }
                stringBuilder.append(str);
                for (JsonValue jsonValue3 = jsonValue.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                    if (z3) {
                        m23605d(i, stringBuilder);
                    }
                    m23600l(jsonValue3, stringBuilder, i + 1, prettyPrintSettings);
                    if ((!z3 || outputType != JsonWriter.OutputType.minimal) && jsonValue3.next != null) {
                        stringBuilder.append(',');
                    }
                    if (z3) {
                        c = '\n';
                    } else {
                        c = ' ';
                    }
                    stringBuilder.append(c);
                    if (!z || z3 || stringBuilder.length() - length2 <= prettyPrintSettings.singleLineColumns) {
                    }
                }
                stringBuilder.setLength(length2);
                z3 = true;
            }
            if (z3) {
                m23605d(i - 1, stringBuilder);
            }
            stringBuilder.append(']');
        } else if (jsonValue.isString()) {
            stringBuilder.append(outputType.quoteValue(jsonValue.asString()));
        } else if (jsonValue.isDouble()) {
            double asDouble = jsonValue.asDouble();
            double asLong = jsonValue.asLong();
            if (asDouble == asLong) {
                asDouble = asLong;
            }
            stringBuilder.append(asDouble);
        } else if (jsonValue.isLong()) {
            stringBuilder.append(jsonValue.asLong());
        } else if (jsonValue.isBoolean()) {
            stringBuilder.append(jsonValue.asBoolean());
        } else if (jsonValue.isNull()) {
            stringBuilder.append("null");
        } else {
            throw new SerializationException("Unknown object type: " + jsonValue);
        }
    }

    /* renamed from: m */
    public final void m23599m(JsonValue jsonValue, Writer writer, int i, PrettyPrintSettings prettyPrintSettings) {
        String str;
        char c;
        boolean z;
        String str2;
        char c2;
        JsonWriter.OutputType outputType = prettyPrintSettings.outputType;
        if (jsonValue.isObject()) {
            if (jsonValue.child == null) {
                writer.append("{}");
                return;
            }
            if (m23603g(jsonValue) && jsonValue.size <= 6) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                str2 = "{\n";
            } else {
                str2 = "{ ";
            }
            writer.append((CharSequence) str2);
            for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
                if (z) {
                    m23604e(i, writer);
                }
                writer.append((CharSequence) outputType.quoteName(jsonValue2.name));
                writer.append(": ");
                m23599m(jsonValue2, writer, i + 1, prettyPrintSettings);
                if ((!z || outputType != JsonWriter.OutputType.minimal) && jsonValue2.next != null) {
                    writer.append(',');
                }
                if (z) {
                    c2 = '\n';
                } else {
                    c2 = ' ';
                }
                writer.append(c2);
            }
            if (z) {
                m23604e(i - 1, writer);
            }
            writer.append('}');
        } else if (jsonValue.isArray()) {
            if (jsonValue.child == null) {
                writer.append("[]");
                return;
            }
            boolean z2 = !m23603g(jsonValue);
            if (z2) {
                str = "[\n";
            } else {
                str = "[ ";
            }
            writer.append((CharSequence) str);
            for (JsonValue jsonValue3 = jsonValue.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                if (z2) {
                    m23604e(i, writer);
                }
                m23599m(jsonValue3, writer, i + 1, prettyPrintSettings);
                if ((!z2 || outputType != JsonWriter.OutputType.minimal) && jsonValue3.next != null) {
                    writer.append(',');
                }
                if (z2) {
                    c = '\n';
                } else {
                    c = ' ';
                }
                writer.append(c);
            }
            if (z2) {
                m23604e(i - 1, writer);
            }
            writer.append(']');
        } else if (jsonValue.isString()) {
            writer.append((CharSequence) outputType.quoteValue(jsonValue.asString()));
        } else if (jsonValue.isDouble()) {
            double asDouble = jsonValue.asDouble();
            double asLong = jsonValue.asLong();
            if (asDouble == asLong) {
                asDouble = asLong;
            }
            writer.append((CharSequence) Double.toString(asDouble));
        } else if (jsonValue.isLong()) {
            writer.append((CharSequence) Long.toString(jsonValue.asLong()));
        } else if (jsonValue.isBoolean()) {
            writer.append((CharSequence) Boolean.toString(jsonValue.asBoolean()));
        } else if (jsonValue.isNull()) {
            writer.append("null");
        } else {
            throw new SerializationException("Unknown object type: " + jsonValue);
        }
    }

    public void setType(ValueType valueType) {
        if (valueType != null) {
            this.f6555a = valueType;
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public String trace() {
        JsonValue jsonValue = this.parent;
        String str = "[]";
        if (jsonValue == null) {
            ValueType valueType = this.f6555a;
            if (valueType == ValueType.array) {
                return "[]";
            }
            if (valueType == ValueType.object) {
                return "{}";
            }
            return "";
        }
        if (jsonValue.f6555a == ValueType.array) {
            int i = 0;
            JsonValue jsonValue2 = jsonValue.child;
            while (true) {
                if (jsonValue2 == null) {
                    break;
                } else if (jsonValue2 == this) {
                    str = "[" + i + "]";
                    break;
                } else {
                    jsonValue2 = jsonValue2.next;
                    i++;
                }
            }
        } else if (this.name.indexOf(46) != -1) {
            str = ".\"" + this.name.replace("\"", "\\\"") + "\"";
        } else {
            str = TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH + this.name;
        }
        return this.parent.trace() + str;
    }

    public JsonValue(@Null String str) {
        set(str);
    }

    @Null
    public JsonValue get(String str) {
        JsonValue jsonValue = this.child;
        while (jsonValue != null) {
            String str2 = jsonValue.name;
            if (str2 != null && str2.equalsIgnoreCase(str)) {
                break;
            }
            jsonValue = jsonValue.next;
        }
        return jsonValue;
    }

    public boolean getBoolean(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asBoolean();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public byte getByte(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asByte();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public char getChar(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asChar();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    @Null
    public JsonValue getChild(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue == null) {
            return null;
        }
        return jsonValue.child;
    }

    public double getDouble(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asDouble();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public float getFloat(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asFloat();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public int getInt(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asInt();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public long getLong(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asLong();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public short getShort(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asShort();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    public String getString(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue.asString();
        }
        throw new IllegalArgumentException("Named value not found: " + str);
    }

    /* renamed from: k */
    public final void m23601k(JsonValue jsonValue, StringBuilder stringBuilder, JsonWriter.OutputType outputType) {
        if (jsonValue.isObject()) {
            if (jsonValue.child == null) {
                stringBuilder.append("{}");
                return;
            }
            stringBuilder.length();
            stringBuilder.append('{');
            for (JsonValue jsonValue2 = jsonValue.child; jsonValue2 != null; jsonValue2 = jsonValue2.next) {
                stringBuilder.append(outputType.quoteName(jsonValue2.name));
                stringBuilder.append(':');
                m23601k(jsonValue2, stringBuilder, outputType);
                if (jsonValue2.next != null) {
                    stringBuilder.append(',');
                }
            }
            stringBuilder.append('}');
        } else if (jsonValue.isArray()) {
            if (jsonValue.child == null) {
                stringBuilder.append("[]");
                return;
            }
            stringBuilder.length();
            stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            for (JsonValue jsonValue3 = jsonValue.child; jsonValue3 != null; jsonValue3 = jsonValue3.next) {
                m23601k(jsonValue3, stringBuilder, outputType);
                if (jsonValue3.next != null) {
                    stringBuilder.append(',');
                }
            }
            stringBuilder.append(']');
        } else if (jsonValue.isString()) {
            stringBuilder.append(outputType.quoteValue(jsonValue.asString()));
        } else if (jsonValue.isDouble()) {
            double asDouble = jsonValue.asDouble();
            double asLong = jsonValue.asLong();
            if (asDouble == asLong) {
                asDouble = asLong;
            }
            stringBuilder.append(asDouble);
        } else if (jsonValue.isLong()) {
            stringBuilder.append(jsonValue.asLong());
        } else if (jsonValue.isBoolean()) {
            stringBuilder.append(jsonValue.asBoolean());
        } else if (jsonValue.isNull()) {
            stringBuilder.append("null");
        } else {
            throw new SerializationException("Unknown object type: " + jsonValue);
        }
    }

    public JsonValue require(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue != null) {
            return jsonValue;
        }
        throw new IllegalArgumentException("Child not found with name: " + str);
    }

    public void set(double d, @Null String str) {
        this.f6557d = d;
        this.f6558k = (long) d;
        this.f6556b = str;
        this.f6555a = ValueType.doubleValue;
    }

    public String toJson(JsonWriter.OutputType outputType) {
        if (isValue()) {
            return asString();
        }
        StringBuilder stringBuilder = new StringBuilder(512);
        m23601k(this, stringBuilder, outputType);
        return stringBuilder.toString();
    }

    public String toString() {
        String str;
        if (isValue()) {
            if (this.name == null) {
                return asString();
            }
            return this.name + ": " + asString();
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        if (this.name == null) {
            str = "";
        } else {
            str = this.name + ": ";
        }
        sb.append(str);
        sb.append(prettyPrint(JsonWriter.OutputType.minimal, 0));
        return sb.toString();
    }

    public void addChild(JsonValue jsonValue) {
        if (this.f6555a == ValueType.object && jsonValue.name == null) {
            throw new IllegalStateException("An object child requires a name: " + jsonValue);
        }
        jsonValue.parent = this;
        this.size++;
        JsonValue jsonValue2 = this.child;
        if (jsonValue2 == null) {
            this.child = jsonValue;
            return;
        }
        while (true) {
            JsonValue jsonValue3 = jsonValue2.next;
            if (jsonValue3 == null) {
                jsonValue2.next = jsonValue;
                jsonValue.prev = jsonValue2;
                return;
            }
            jsonValue2 = jsonValue3;
        }
    }

    public JsonValue(double d) {
        set(d, (String) null);
    }

    public String prettyPrint(PrettyPrintSettings prettyPrintSettings) {
        StringBuilder stringBuilder = new StringBuilder(512);
        m23600l(this, stringBuilder, 0, prettyPrintSettings);
        return stringBuilder.toString();
    }

    public boolean getBoolean(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asBoolean();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public byte getByte(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asByte();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public char getChar(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asChar();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public double getDouble(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asDouble();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public float getFloat(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asFloat();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public int getInt(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asInt();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public long getLong(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asLong();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public short getShort(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asShort();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    public String getString(int i) {
        JsonValue jsonValue = get(i);
        if (jsonValue != null) {
            return jsonValue.asString();
        }
        throw new IllegalArgumentException("Indexed value not found: " + this.name);
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<JsonValue> iterator2() {
        return new JsonIterator();
    }

    public JsonValue(long j) {
        set(j, (String) null);
    }

    public void set(long j, @Null String str) {
        this.f6558k = j;
        this.f6557d = j;
        this.f6556b = str;
        this.f6555a = ValueType.longValue;
    }

    public void prettyPrint(JsonWriter.OutputType outputType, Writer writer) {
        PrettyPrintSettings prettyPrintSettings = new PrettyPrintSettings();
        prettyPrintSettings.outputType = outputType;
        m23599m(this, writer, 0, prettyPrintSettings);
    }

    @Null
    public JsonValue remove(String str) {
        JsonValue jsonValue = get(str);
        if (jsonValue == null) {
            return null;
        }
        JsonValue jsonValue2 = jsonValue.prev;
        if (jsonValue2 == null) {
            JsonValue jsonValue3 = jsonValue.next;
            this.child = jsonValue3;
            if (jsonValue3 != null) {
                jsonValue3.prev = null;
            }
        } else {
            jsonValue2.next = jsonValue.next;
            JsonValue jsonValue4 = jsonValue.next;
            if (jsonValue4 != null) {
                jsonValue4.prev = jsonValue2;
            }
        }
        this.size--;
        return jsonValue;
    }

    public JsonValue(double d, String str) {
        set(d, str);
    }

    public JsonValue(long j, String str) {
        set(j, str);
    }

    public void set(boolean z) {
        this.f6558k = z ? 1L : 0L;
        this.f6555a = ValueType.booleanValue;
    }

    public JsonValue(boolean z) {
        set(z);
    }

    public void remove() {
        JsonValue jsonValue = this.parent;
        if (jsonValue != null) {
            JsonValue jsonValue2 = this.prev;
            if (jsonValue2 == null) {
                JsonValue jsonValue3 = this.next;
                jsonValue.child = jsonValue3;
                if (jsonValue3 != null) {
                    jsonValue3.prev = null;
                }
            } else {
                jsonValue2.next = this.next;
                JsonValue jsonValue4 = this.next;
                if (jsonValue4 != null) {
                    jsonValue4.prev = jsonValue2;
                }
            }
            jsonValue.size--;
            return;
        }
        throw new IllegalStateException();
    }
}
