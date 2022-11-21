package com.esotericsoftware.jsonbeans;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class JsonValue implements Iterable<JsonValue> {

    /* renamed from: a */
    public ValueType f7193a;

    /* renamed from: b */
    public String f7194b;
    public JsonValue child;

    /* renamed from: d */
    public double f7195d;

    /* renamed from: k */
    public long f7196k;
    public String name;
    public JsonValue next;
    public JsonValue prev;
    public int size;

    /* renamed from: com.esotericsoftware.jsonbeans.JsonValue$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C13611 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7197a;

        static {
            int[] iArr = new int[ValueType.values().length];
            f7197a = iArr;
            try {
                iArr[ValueType.stringValue.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7197a[ValueType.doubleValue.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7197a[ValueType.longValue.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7197a[ValueType.booleanValue.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7197a[ValueType.nullValue.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public class JsonIterator implements Iterator<JsonValue>, Iterable<JsonValue> {

        /* renamed from: a */
        public JsonValue f7198a;

        /* renamed from: b */
        public JsonValue f7199b;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f7198a != null;
        }

        @Override // java.lang.Iterable
        public Iterator<JsonValue> iterator() {
            return this;
        }

        public JsonIterator() {
            this.f7198a = JsonValue.this.child;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public JsonValue next() {
            JsonValue jsonValue = this.f7198a;
            this.f7199b = jsonValue;
            if (jsonValue != null) {
                this.f7198a = jsonValue.next;
                return jsonValue;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            JsonValue jsonValue = this.f7199b;
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
        public OutputType outputType;
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
        this.f7193a = valueType;
    }

    /* renamed from: d */
    public static void m23308d(int i, StringBuilder sb) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append('\t');
        }
    }

    public JsonValue child() {
        return this.child;
    }

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
        return (jsonValue == null || !jsonValue.isValue()) ? z : jsonValue.asBoolean();
    }

    public byte getByte(String str, byte b) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? b : jsonValue.asByte();
    }

    public char getChar(String str, char c) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? c : jsonValue.asChar();
    }

    public double getDouble(String str, double d) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? d : jsonValue.asDouble();
    }

    public float getFloat(String str, float f) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? f : jsonValue.asFloat();
    }

    public int getInt(String str, int i) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? i : jsonValue.asInt();
    }

    public long getLong(String str, long j) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? j : jsonValue.asLong();
    }

    public short getShort(String str, short s) {
        JsonValue jsonValue = get(str);
        return (jsonValue == null || !jsonValue.isValue()) ? s : jsonValue.asShort();
    }

    public String getString(String str, String str2) {
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
        return this.f7193a == ValueType.array;
    }

    public boolean isBoolean() {
        return this.f7193a == ValueType.booleanValue;
    }

    public boolean isDouble() {
        return this.f7193a == ValueType.doubleValue;
    }

    public boolean isLong() {
        return this.f7193a == ValueType.longValue;
    }

    public boolean isNull() {
        return this.f7193a == ValueType.nullValue;
    }

    public boolean isNumber() {
        ValueType valueType = this.f7193a;
        return valueType == ValueType.doubleValue || valueType == ValueType.longValue;
    }

    public boolean isObject() {
        return this.f7193a == ValueType.object;
    }

    public boolean isString() {
        return this.f7193a == ValueType.stringValue;
    }

    public boolean isValue() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    public String name() {
        return this.name;
    }

    public JsonValue next() {
        return this.next;
    }

    public String prettyPrint(OutputType outputType, int i) {
        PrettyPrintSettings prettyPrintSettings = new PrettyPrintSettings();
        prettyPrintSettings.outputType = outputType;
        prettyPrintSettings.singleLineColumns = i;
        return prettyPrint(prettyPrintSettings);
    }

    public JsonValue prev() {
        return this.prev;
    }

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
        JsonValue jsonValue = this.child;
        while (jsonValue != null && i > 0) {
            i--;
            jsonValue = jsonValue.next;
        }
        if (jsonValue != null) {
            return jsonValue;
        }
        throw new IllegalArgumentException("Child not found with index: " + i);
    }

    public void set(String str) {
        this.f7194b = str;
        this.f7193a = str == null ? ValueType.nullValue : ValueType.stringValue;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNext(JsonValue jsonValue) {
        this.next = jsonValue;
    }

    public void setPrev(JsonValue jsonValue) {
        this.prev = jsonValue;
    }

    @Deprecated
    public int size() {
        return this.size;
    }

    public ValueType type() {
        return this.f7193a;
    }

    public boolean asBoolean() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return true;
                        }
                        return false;
                    }
                    throw new IllegalStateException("Value cannot be converted to boolean: " + this.f7193a);
                } else if (this.f7196k == 0) {
                    return true;
                } else {
                    return false;
                }
            } else if (this.f7195d == 0.0d) {
                return true;
            } else {
                return false;
            }
        }
        return this.f7194b.equalsIgnoreCase("true");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
        if (r1.f7196k != 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
        if (r1.f7196k == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        if (r1.f7195d == 0.0d) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean[] asBooleanArray() {
        /*
            r11 = this;
            com.esotericsoftware.jsonbeans.JsonValue$ValueType r0 = r11.f7193a
            com.esotericsoftware.jsonbeans.JsonValue$ValueType r1 = com.esotericsoftware.jsonbeans.JsonValue.ValueType.array
            if (r0 != r1) goto L68
            int r0 = r11.size
            boolean[] r0 = new boolean[r0]
            com.esotericsoftware.jsonbeans.JsonValue r1 = r11.child
            r2 = 0
            r3 = 0
        Le:
            if (r1 == 0) goto L67
            int[] r4 = com.esotericsoftware.jsonbeans.JsonValue.C13611.f7197a
            com.esotericsoftware.jsonbeans.JsonValue$ValueType r5 = r1.f7193a
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
            long r9 = r1.f7196k
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
            com.esotericsoftware.jsonbeans.JsonValue$ValueType r1 = r1.f7193a
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L4b:
            long r9 = r1.f7196k
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 != 0) goto L30
            goto L2e
        L52:
            double r6 = r1.f7195d
            r8 = 0
            int r4 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r4 != 0) goto L30
            goto L2e
        L5b:
            java.lang.String r4 = r1.f7194b
            boolean r4 = java.lang.Boolean.parseBoolean(r4)
        L61:
            r0[r3] = r4
            com.esotericsoftware.jsonbeans.JsonValue r1 = r1.next
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
            com.esotericsoftware.jsonbeans.JsonValue$ValueType r2 = r11.f7193a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            goto L82
        L81:
            throw r0
        L82:
            goto L81
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.jsonbeans.JsonValue.asBooleanArray():boolean[]");
    }

    public byte asByte() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return (byte) 1;
                        }
                        return (byte) 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to byte: " + this.f7193a);
                }
                return (byte) this.f7196k;
            }
            return (byte) this.f7195d;
        }
        return Byte.parseByte(this.f7194b);
    }

    public byte[] asByteArray() {
        byte parseByte;
        int i;
        if (this.f7193a == ValueType.array) {
            byte[] bArr = new byte[this.size];
            JsonValue jsonValue = this.child;
            int i2 = 0;
            while (jsonValue != null) {
                int i3 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                if (jsonValue.f7196k != 0) {
                                    parseByte = 1;
                                } else {
                                    parseByte = 0;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to byte: " + jsonValue.f7193a);
                            }
                        } else {
                            i = (int) jsonValue.f7196k;
                        }
                    } else {
                        i = (int) jsonValue.f7195d;
                    }
                    parseByte = (byte) i;
                } else {
                    parseByte = Byte.parseByte(jsonValue.f7194b);
                }
                bArr[i2] = parseByte;
                jsonValue = jsonValue.next;
                i2++;
            }
            return bArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public char asChar() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return (char) 1;
                        }
                        return (char) 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to char: " + this.f7193a);
                }
                return (char) this.f7196k;
            }
            return (char) this.f7195d;
        } else if (this.f7194b.length() == 0) {
            return (char) 0;
        } else {
            return this.f7194b.charAt(0);
        }
    }

    public char[] asCharArray() {
        char charAt;
        int i;
        if (this.f7193a == ValueType.array) {
            char[] cArr = new char[this.size];
            JsonValue jsonValue = this.child;
            int i2 = 0;
            while (jsonValue != null) {
                int i3 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                if (jsonValue.f7196k != 0) {
                                    charAt = 1;
                                }
                                charAt = 0;
                            } else {
                                throw new IllegalStateException("Value cannot be converted to char: " + jsonValue.f7193a);
                            }
                        } else {
                            i = (int) jsonValue.f7196k;
                        }
                    } else {
                        i = (int) jsonValue.f7195d;
                    }
                    charAt = (char) i;
                } else {
                    if (jsonValue.f7194b.length() != 0) {
                        charAt = jsonValue.f7194b.charAt(0);
                    }
                    charAt = 0;
                }
                cArr[i2] = charAt;
                jsonValue = jsonValue.next;
                i2++;
            }
            return cArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public double asDouble() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return 1.0d;
                        }
                        return 0.0d;
                    }
                    throw new IllegalStateException("Value cannot be converted to double: " + this.f7193a);
                }
                return this.f7196k;
            }
            return this.f7195d;
        }
        return Double.parseDouble(this.f7194b);
    }

    public double[] asDoubleArray() {
        double parseDouble;
        if (this.f7193a == ValueType.array) {
            double[] dArr = new double[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (jsonValue.f7196k != 0) {
                                    parseDouble = 1.0d;
                                } else {
                                    parseDouble = 0.0d;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to double: " + jsonValue.f7193a);
                            }
                        } else {
                            parseDouble = jsonValue.f7196k;
                        }
                    } else {
                        parseDouble = jsonValue.f7195d;
                    }
                } else {
                    parseDouble = Double.parseDouble(jsonValue.f7194b);
                }
                dArr[i] = parseDouble;
                jsonValue = jsonValue.next;
                i++;
            }
            return dArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public float asFloat() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return 1.0f;
                        }
                        return 0.0f;
                    }
                    throw new IllegalStateException("Value cannot be converted to float: " + this.f7193a);
                }
                return (float) this.f7196k;
            }
            return (float) this.f7195d;
        }
        return Float.parseFloat(this.f7194b);
    }

    public float[] asFloatArray() {
        float parseFloat;
        if (this.f7193a == ValueType.array) {
            float[] fArr = new float[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (jsonValue.f7196k != 0) {
                                    parseFloat = 1.0f;
                                } else {
                                    parseFloat = 0.0f;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to float: " + jsonValue.f7193a);
                            }
                        } else {
                            parseFloat = (float) jsonValue.f7196k;
                        }
                    } else {
                        parseFloat = (float) jsonValue.f7195d;
                    }
                } else {
                    parseFloat = Float.parseFloat(jsonValue.f7194b);
                }
                fArr[i] = parseFloat;
                jsonValue = jsonValue.next;
                i++;
            }
            return fArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public int asInt() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return 1;
                        }
                        return 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to int: " + this.f7193a);
                }
                return (int) this.f7196k;
            }
            return (int) this.f7195d;
        }
        return Integer.parseInt(this.f7194b);
    }

    public int[] asIntArray() {
        int parseInt;
        if (this.f7193a == ValueType.array) {
            int[] iArr = new int[this.size];
            JsonValue jsonValue = this.child;
            int i = 0;
            while (jsonValue != null) {
                int i2 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                if (jsonValue.f7196k != 0) {
                                    parseInt = 1;
                                } else {
                                    parseInt = 0;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to int: " + jsonValue.f7193a);
                            }
                        } else {
                            parseInt = (int) jsonValue.f7196k;
                        }
                    } else {
                        parseInt = (int) jsonValue.f7195d;
                    }
                } else {
                    parseInt = Integer.parseInt(jsonValue.f7194b);
                }
                iArr[i] = parseInt;
                jsonValue = jsonValue.next;
                i++;
            }
            return iArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public long asLong() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k == 0) {
                            return 0L;
                        }
                        return 1L;
                    }
                    throw new IllegalStateException("Value cannot be converted to long: " + this.f7193a);
                }
                return this.f7196k;
            }
            return (long) this.f7195d;
        }
        return Long.parseLong(this.f7194b);
    }

    public long[] asLongArray() {
        long parseLong;
        if (this.f7193a == ValueType.array) {
            long[] jArr = new long[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                parseLong = 0;
                                if (jsonValue.f7196k != 0) {
                                    parseLong = 1;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to long: " + jsonValue.f7193a);
                            }
                        } else {
                            parseLong = jsonValue.f7196k;
                        }
                    } else {
                        parseLong = (long) jsonValue.f7195d;
                    }
                } else {
                    parseLong = Long.parseLong(jsonValue.f7194b);
                }
                jArr[i] = parseLong;
                jsonValue = jsonValue.next;
                i++;
            }
            return jArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public short asShort() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        if (this.f7196k != 0) {
                            return (short) 1;
                        }
                        return (short) 0;
                    }
                    throw new IllegalStateException("Value cannot be converted to short: " + this.f7193a);
                }
                return (short) this.f7196k;
            }
            return (short) this.f7195d;
        }
        return Short.parseShort(this.f7194b);
    }

    public short[] asShortArray() {
        short parseShort;
        int i;
        if (this.f7193a == ValueType.array) {
            short[] sArr = new short[this.size];
            JsonValue jsonValue = this.child;
            int i2 = 0;
            while (jsonValue != null) {
                int i3 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                if (jsonValue.f7196k != 0) {
                                    parseShort = 1;
                                } else {
                                    parseShort = 0;
                                }
                            } else {
                                throw new IllegalStateException("Value cannot be converted to short: " + jsonValue.f7193a);
                            }
                        } else {
                            i = (int) jsonValue.f7196k;
                        }
                    } else {
                        i = (int) jsonValue.f7195d;
                    }
                    parseShort = (short) i;
                } else {
                    parseShort = Short.parseShort(jsonValue.f7194b);
                }
                sArr[i2] = parseShort;
                jsonValue = jsonValue.next;
                i2++;
            }
            return sArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    public String asString() {
        int i = C13611.f7197a[this.f7193a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return null;
                        }
                        throw new IllegalStateException("Value cannot be converted to string: " + this.f7193a);
                    } else if (this.f7196k != 0) {
                        return "true";
                    } else {
                        return "false";
                    }
                }
                return Long.toString(this.f7196k);
            }
            return Double.toString(this.f7195d);
        }
        return this.f7194b;
    }

    public String[] asStringArray() {
        String str;
        if (this.f7193a == ValueType.array) {
            String[] strArr = new String[this.size];
            int i = 0;
            JsonValue jsonValue = this.child;
            while (jsonValue != null) {
                int i2 = C13611.f7197a[jsonValue.f7193a.ordinal()];
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 != 4) {
                                if (i2 == 5) {
                                    str = null;
                                } else {
                                    throw new IllegalStateException("Value cannot be converted to string: " + jsonValue.f7193a);
                                }
                            } else if (jsonValue.f7196k != 0) {
                                str = "true";
                            } else {
                                str = "false";
                            }
                        } else {
                            str = Long.toString(jsonValue.f7196k);
                        }
                    } else {
                        str = Double.toString(jsonValue.f7195d);
                    }
                } else {
                    str = jsonValue.f7194b;
                }
                strArr[i] = str;
                jsonValue = jsonValue.next;
                i++;
            }
            return strArr;
        }
        throw new IllegalStateException("Value is not an array: " + this.f7193a);
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<JsonValue> iterator2() {
        return new JsonIterator();
    }

    public void setType(ValueType valueType) {
        if (valueType != null) {
            this.f7193a = valueType;
            return;
        }
        throw new IllegalArgumentException("type cannot be null.");
    }

    public JsonValue(String str) {
        set(str);
    }

    /* renamed from: e */
    public static boolean m23307e(JsonValue jsonValue) {
        for (JsonValue child = jsonValue.child(); child != null; child = child.next()) {
            if (child.isObject() || child.isArray()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public static boolean m23306g(JsonValue jsonValue) {
        for (JsonValue child = jsonValue.child(); child != null; child = child.next()) {
            if (!child.isNumber()) {
                return false;
            }
        }
        return true;
    }

    public JsonValue get(String str) {
        JsonValue jsonValue = this.child;
        while (jsonValue != null && !jsonValue.name.equalsIgnoreCase(str)) {
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

    /* renamed from: i */
    public final void m23305i(JsonValue jsonValue, StringBuilder sb, int i, PrettyPrintSettings prettyPrintSettings) {
        boolean z;
        String str;
        char c;
        String str2;
        char c2;
        if (jsonValue.isObject()) {
            if (jsonValue.child() == null) {
                sb.append("{}");
                return;
            }
            boolean z2 = !m23307e(jsonValue);
            int length = sb.length();
            loop0: while (true) {
                if (z2) {
                    str2 = "{\n";
                } else {
                    str2 = "{ ";
                }
                sb.append(str2);
                for (JsonValue child = jsonValue.child(); child != null; child = child.next()) {
                    if (z2) {
                        m23308d(i, sb);
                    }
                    sb.append(prettyPrintSettings.outputType.quoteName(child.name()));
                    sb.append(": ");
                    m23305i(child, sb, i + 1, prettyPrintSettings);
                    if (child.next() != null) {
                        sb.append(",");
                    }
                    if (z2) {
                        c2 = '\n';
                    } else {
                        c2 = ' ';
                    }
                    sb.append(c2);
                    if (z2 || sb.length() - length <= prettyPrintSettings.singleLineColumns) {
                    }
                }
                sb.setLength(length);
                z2 = true;
            }
            if (z2) {
                m23308d(i - 1, sb);
            }
            sb.append('}');
        } else if (jsonValue.isArray()) {
            if (jsonValue.child() == null) {
                sb.append("[]");
                return;
            }
            boolean z3 = !m23307e(jsonValue);
            if (!prettyPrintSettings.wrapNumericArrays && m23306g(jsonValue)) {
                z = false;
            } else {
                z = true;
            }
            int length2 = sb.length();
            loop2: while (true) {
                if (z3) {
                    str = "[\n";
                } else {
                    str = "[ ";
                }
                sb.append(str);
                for (JsonValue child2 = jsonValue.child(); child2 != null; child2 = child2.next()) {
                    if (z3) {
                        m23308d(i, sb);
                    }
                    m23305i(child2, sb, i + 1, prettyPrintSettings);
                    if (child2.next() != null) {
                        sb.append(",");
                    }
                    if (z3) {
                        c = '\n';
                    } else {
                        c = ' ';
                    }
                    sb.append(c);
                    if (!z || z3 || sb.length() - length2 <= prettyPrintSettings.singleLineColumns) {
                    }
                }
                sb.setLength(length2);
                z3 = true;
            }
            if (z3) {
                m23308d(i - 1, sb);
            }
            sb.append(']');
        } else if (jsonValue.isString()) {
            sb.append(prettyPrintSettings.outputType.quoteValue(jsonValue.asString()));
        } else if (jsonValue.isDouble()) {
            double asDouble = jsonValue.asDouble();
            double asLong = jsonValue.asLong();
            if (asDouble == asLong) {
                asDouble = asLong;
            }
            sb.append(asDouble);
        } else if (jsonValue.isLong()) {
            sb.append(jsonValue.asLong());
        } else if (jsonValue.isBoolean()) {
            sb.append(jsonValue.asBoolean());
        } else if (jsonValue.isNull()) {
            sb.append("null");
        } else {
            throw new JsonException("Unknown object type: " + jsonValue);
        }
    }

    public void set(double d) {
        this.f7195d = d;
        this.f7196k = (long) d;
        this.f7193a = ValueType.doubleValue;
    }

    public String toString() {
        if (isValue()) {
            if (this.name == null) {
                return asString();
            }
            return this.name + ": " + asString();
        }
        return prettyPrint(OutputType.minimal, 0);
    }

    public JsonValue require(String str) {
        JsonValue jsonValue = this.child;
        while (jsonValue != null && !jsonValue.name.equalsIgnoreCase(str)) {
            jsonValue = jsonValue.next;
        }
        if (jsonValue != null) {
            return jsonValue;
        }
        throw new IllegalArgumentException("Child not found with name: " + str);
    }

    public JsonValue(double d) {
        set(d);
    }

    public String prettyPrint(PrettyPrintSettings prettyPrintSettings) {
        StringBuilder sb = new StringBuilder(512);
        m23305i(this, sb, 0, prettyPrintSettings);
        return sb.toString();
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

    public void set(long j) {
        this.f7196k = j;
        this.f7195d = j;
        this.f7193a = ValueType.longValue;
    }

    public JsonValue(long j) {
        set(j);
    }

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

    public JsonValue(boolean z) {
        set(z);
    }

    public void set(boolean z) {
        this.f7196k = z ? 1L : 0L;
        this.f7193a = ValueType.booleanValue;
    }
}
