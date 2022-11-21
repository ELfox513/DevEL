package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.Registration;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.InputChunked;
import com.esotericsoftware.kryo.serializers.FieldSerializer;
import com.esotericsoftware.kryo.util.Util;
import com.esotericsoftware.minlog.Log;
/* loaded from: classes.dex */
public class CompatibleFieldSerializer<T> extends FieldSerializer<T> {

    /* renamed from: h */
    public final CompatibleFieldSerializerConfig f7304h;

    /* loaded from: classes.dex */
    public static class CompatibleFieldSerializerConfig extends FieldSerializer.FieldSerializerConfig {

        /* renamed from: u */
        public boolean f7306u;

        /* renamed from: t */
        public boolean f7305t = true;

        /* renamed from: v */
        public int f7307v = 1024;

        public int getChunkSize() {
            return this.f7307v;
        }

        public boolean getChunkedEncoding() {
            return this.f7306u;
        }

        public boolean getReadUnknownTagData() {
            return this.f7305t;
        }

        public void setReadUnknownFieldData(boolean z) {
            this.f7305t = z;
        }

        public void setChunkSize(int i) {
            this.f7307v = i;
            if (Log.TRACE) {
                Log.trace("kryo", "CompatibleFieldSerializerConfig setChunkSize: " + i);
            }
        }

        public void setChunkedEncoding(boolean z) {
            this.f7306u = z;
            if (Log.TRACE) {
                Log.trace("kryo", "CompatibleFieldSerializerConfig setChunked: " + z);
            }
        }

        @Override // com.esotericsoftware.kryo.serializers.FieldSerializer.FieldSerializerConfig
        public CompatibleFieldSerializerConfig clone() {
            return (CompatibleFieldSerializerConfig) super.m27844clone();
        }
    }

    public CompatibleFieldSerializer(Kryo kryo, Class cls) {
        this(kryo, cls, new CompatibleFieldSerializerConfig());
    }

    public CompatibleFieldSerializerConfig getCompatibleFieldSerializerConfig() {
        return this.f7304h;
    }

    public CompatibleFieldSerializer(Kryo kryo, Class cls, CompatibleFieldSerializerConfig compatibleFieldSerializerConfig) {
        super(kryo, cls, compatibleFieldSerializerConfig);
        this.f7304h = compatibleFieldSerializerConfig;
    }

    /* renamed from: a */
    public final FieldSerializer.CachedField[] m23247a(Kryo kryo, Input input) {
        if (Log.TRACE) {
            Log.trace("kryo", "Read fields for class: " + this.f7323d.getName());
        }
        int readVarInt = input.readVarInt(true);
        String[] strArr = new String[readVarInt];
        for (int i = 0; i < readVarInt; i++) {
            strArr[i] = input.readString();
            if (Log.TRACE) {
                Log.trace("kryo", "Read field name: " + strArr[i]);
            }
        }
        FieldSerializer.CachedField[] cachedFieldArr = new FieldSerializer.CachedField[readVarInt];
        FieldSerializer.CachedField[] cachedFieldArr2 = this.f7325f.f7296b;
        if (readVarInt < 32) {
            for (int i2 = 0; i2 < readVarInt; i2++) {
                String str = strArr[i2];
                int length = cachedFieldArr2.length;
                int i3 = 0;
                while (true) {
                    if (i3 < length) {
                        if (cachedFieldArr2[i3].f7328b.equals(str)) {
                            cachedFieldArr[i2] = cachedFieldArr2[i3];
                            break;
                        }
                        i3++;
                    } else if (Log.TRACE) {
                        Log.trace("kryo", "Unknown field will be skipped: " + str);
                    }
                }
            }
        } else {
            int length2 = cachedFieldArr2.length - 1;
            for (int i4 = 0; i4 < readVarInt; i4++) {
                String str2 = strArr[i4];
                int i5 = length2;
                int i6 = 0;
                while (true) {
                    if (i6 <= i5) {
                        int i7 = (i6 + i5) >>> 1;
                        int compareTo = str2.compareTo(cachedFieldArr2[i7].f7328b);
                        if (compareTo >= 0) {
                            if (compareTo > 0) {
                                i6 = i7 + 1;
                            } else {
                                cachedFieldArr[i4] = cachedFieldArr2[i7];
                                break;
                            }
                        } else {
                            i5 = i7 - 1;
                        }
                    } else if (Log.TRACE) {
                        Log.trace("kryo", "Unknown field will be skipped: " + str2);
                    }
                }
            }
        }
        kryo.getGraphContext().put(this, cachedFieldArr);
        return cachedFieldArr;
    }

    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
    public T read(Kryo kryo, Input input, Class<? extends T> cls) {
        InputChunked inputChunked;
        InputChunked inputChunked2;
        boolean z;
        int i;
        Kryo kryo2 = kryo;
        int pushTypeVariables = pushTypeVariables();
        T create = create(kryo, input, cls);
        kryo2.reference(create);
        FieldSerializer.CachedField[] cachedFieldArr = (FieldSerializer.CachedField[]) kryo.getGraphContext().get(this);
        if (cachedFieldArr == null) {
            cachedFieldArr = m23247a(kryo, input);
        }
        FieldSerializer.CachedField[] cachedFieldArr2 = cachedFieldArr;
        CompatibleFieldSerializerConfig compatibleFieldSerializerConfig = this.f7304h;
        boolean z2 = compatibleFieldSerializerConfig.f7306u;
        boolean z3 = compatibleFieldSerializerConfig.f7305t;
        if (z2) {
            inputChunked2 = new InputChunked(input, this.f7304h.f7307v);
            inputChunked = inputChunked2;
        } else {
            inputChunked = null;
            inputChunked2 = input;
        }
        int i2 = 0;
        for (int length = cachedFieldArr2.length; i2 < length; length = i) {
            FieldSerializer.CachedField cachedField = cachedFieldArr2[i2];
            FieldSerializer.CachedField[] cachedFieldArr3 = cachedFieldArr2;
            if (z3) {
                try {
                    Registration readClass = kryo2.readClass(inputChunked2);
                    if (readClass == null) {
                        if (z2) {
                            inputChunked.nextChunk();
                        }
                        z = z3;
                        i = length;
                    } else {
                        z = z3;
                        Class type = readClass.getType();
                        if (cachedField == null) {
                            if (Log.TRACE) {
                                StringBuilder sb = new StringBuilder();
                                i = length;
                                sb.append("Read unknown data, type: ");
                                sb.append(Util.className(type));
                                sb.append(Util.pos(input.position()));
                                Log.trace("kryo", sb.toString());
                            } else {
                                i = length;
                            }
                            try {
                                kryo2.readObject(inputChunked2, type);
                            } catch (KryoException e) {
                                String str = "Unable to read unknown data, type: " + Util.className(type) + " (" + getType().getName() + "#" + cachedField + ")";
                                if (z2) {
                                    if (Log.DEBUG) {
                                        Log.debug("kryo", str, e);
                                    }
                                } else {
                                    throw new KryoException(str, e);
                                }
                            }
                            if (z2) {
                                inputChunked.nextChunk();
                            }
                        } else {
                            i = length;
                            if (cachedField.f7329c != null && !Util.isAssignableTo(type, cachedField.f7327a.getType())) {
                                String str2 = "Read type is incompatible with the field type: " + Util.className(type) + " -> " + Util.className(cachedField.f7329c) + " (" + getType().getName() + "#" + cachedField + ")";
                                if (z2) {
                                    if (Log.DEBUG) {
                                        Log.debug("kryo", str2);
                                    }
                                    inputChunked.nextChunk();
                                } else {
                                    throw new KryoException(str2);
                                }
                            } else {
                                cachedField.setCanBeNull(false);
                                cachedField.setValueClass(type);
                                cachedField.m23233a(false);
                            }
                        }
                    }
                } catch (KryoException e2) {
                    z = z3;
                    i = length;
                    String str3 = "Unable to read unknown data (unknown type). (" + getType().getName() + "#" + cachedField + ")";
                    if (z2) {
                        if (Log.DEBUG) {
                            Log.debug("kryo", str3, e2);
                        }
                        inputChunked.nextChunk();
                    } else {
                        throw new KryoException(str3, e2);
                    }
                }
                i2++;
                kryo2 = kryo;
                cachedFieldArr2 = cachedFieldArr3;
                z3 = z;
            } else {
                z = z3;
                i = length;
                if (cachedField == null) {
                    if (z2) {
                        if (Log.TRACE) {
                            Log.trace("kryo", "Skip unknown field.");
                        }
                        inputChunked.nextChunk();
                        i2++;
                        kryo2 = kryo;
                        cachedFieldArr2 = cachedFieldArr3;
                        z3 = z;
                    } else {
                        throw new KryoException("Unknown field. (" + getType().getName() + ")");
                    }
                }
            }
            if (Log.TRACE) {
                log("Read", cachedField, input.position());
            }
            cachedField.read(inputChunked2, create);
            if (z2) {
                inputChunked.nextChunk();
            }
            i2++;
            kryo2 = kryo;
            cachedFieldArr2 = cachedFieldArr3;
            z3 = z;
        }
        popTypeVariables(pushTypeVariables);
        return create;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c3  */
    @Override // com.esotericsoftware.kryo.serializers.FieldSerializer, com.esotericsoftware.kryo.Serializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.esotericsoftware.kryo.Kryo r17, com.esotericsoftware.kryo.p035io.Output r18, T r19) {
        /*
            r16 = this;
            r0 = r16
            r1 = r18
            r2 = r19
            int r3 = r16.pushTypeVariables()
            com.esotericsoftware.kryo.serializers.CachedFields r4 = r0.f7325f
            com.esotericsoftware.kryo.serializers.FieldSerializer$CachedField[] r4 = r4.f7296b
            com.esotericsoftware.kryo.util.ObjectMap r5 = r17.getGraphContext()
            boolean r6 = r5.containsKey(r0)
            r7 = 0
            r8 = 0
            if (r6 != 0) goto L77
            boolean r6 = com.esotericsoftware.minlog.Log.TRACE
            java.lang.String r9 = "kryo"
            if (r6 == 0) goto L3a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r10 = "Write fields for class: "
            r6.append(r10)
            java.lang.Class r10 = r0.f7323d
            java.lang.String r10 = r10.getName()
            r6.append(r10)
            java.lang.String r6 = r6.toString()
            com.esotericsoftware.minlog.Log.trace(r9, r6)
        L3a:
            r5.put(r0, r7)
            int r5 = r4.length
            r6 = 1
            r1.writeVarInt(r5, r6)
            int r5 = r4.length
            r6 = 0
        L44:
            if (r6 >= r5) goto L77
            boolean r10 = com.esotericsoftware.minlog.Log.TRACE
            if (r10 == 0) goto L6d
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Write field name: "
            r10.append(r11)
            r11 = r4[r6]
            java.lang.String r11 = r11.f7328b
            r10.append(r11)
            int r11 = r18.position()
            java.lang.String r11 = com.esotericsoftware.kryo.util.Util.pos(r11)
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            com.esotericsoftware.minlog.Log.trace(r9, r10)
        L6d:
            r10 = r4[r6]
            java.lang.String r10 = r10.f7328b
            r1.writeString(r10)
            int r6 = r6 + 1
            goto L44
        L77:
            com.esotericsoftware.kryo.serializers.CompatibleFieldSerializer$CompatibleFieldSerializerConfig r5 = r0.f7304h
            boolean r6 = r5.f7306u
            boolean r5 = r5.f7305t
            if (r6 == 0) goto L8a
            com.esotericsoftware.kryo.io.OutputChunked r9 = new com.esotericsoftware.kryo.io.OutputChunked
            com.esotericsoftware.kryo.serializers.CompatibleFieldSerializer$CompatibleFieldSerializerConfig r10 = r0.f7304h
            int r10 = r10.f7307v
            r9.<init>(r1, r10)
            r10 = r9
            goto L8c
        L8a:
            r10 = r1
            r9 = r7
        L8c:
            int r11 = r4.length
            r12 = 0
        L8e:
            if (r12 >= r11) goto Lda
            r13 = r4[r12]
            boolean r14 = com.esotericsoftware.minlog.Log.TRACE
            if (r14 == 0) goto L9f
            int r14 = r18.position()
            java.lang.String r15 = "Write"
            r0.log(r15, r13, r14)
        L9f:
            if (r5 == 0) goto Lcd
            if (r2 == 0) goto Lb5
            java.lang.reflect.Field r14 = r13.f7327a     // Catch: java.lang.IllegalAccessException -> Lb0
            java.lang.Object r14 = r14.get(r2)     // Catch: java.lang.IllegalAccessException -> Lb0
            if (r14 == 0) goto Lb5
            java.lang.Class r14 = r14.getClass()     // Catch: java.lang.IllegalAccessException -> Lb0
            goto Lb6
        Lb0:
            r15 = r17
            r14 = r7
            goto Lb8
        Lb5:
            r14 = r7
        Lb6:
            r15 = r17
        Lb8:
            r15.writeClass(r10, r14)
            if (r14 != 0) goto Lc3
            if (r6 == 0) goto Ld7
            r9.endChunk()
            goto Ld7
        Lc3:
            r13.setCanBeNull(r8)
            r13.setValueClass(r14)
            r13.m23233a(r8)
            goto Lcf
        Lcd:
            r15 = r17
        Lcf:
            r13.write(r10, r2)
            if (r6 == 0) goto Ld7
            r9.endChunk()
        Ld7:
            int r12 = r12 + 1
            goto L8e
        Lda:
            r0.popTypeVariables(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.CompatibleFieldSerializer.write(com.esotericsoftware.kryo.Kryo, com.esotericsoftware.kryo.io.Output, java.lang.Object):void");
    }
}
