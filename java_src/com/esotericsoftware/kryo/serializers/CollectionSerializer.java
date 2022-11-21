package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.Serializer;
import com.esotericsoftware.kryo.SerializerFactory;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class CollectionSerializer<T extends Collection> extends Serializer<T> {

    /* renamed from: c */
    public boolean f7301c = true;

    /* renamed from: d */
    public Serializer f7302d;

    /* renamed from: e */
    public Class f7303e;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface BindCollection {
        Class elementClass() default Object.class;

        Class<? extends Serializer> elementSerializer() default Serializer.class;

        Class<? extends SerializerFactory> elementSerializerFactory() default SerializerFactory.class;

        boolean elementsCanBeNull() default true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.Serializer
    public /* bridge */ /* synthetic */ Object copy(Kryo kryo, Object obj) {
        return copy(kryo, (Kryo) ((Collection) obj));
    }

    public T createCopy(Kryo kryo, T t) {
        return (T) kryo.newInstance(t.getClass());
    }

    public Class getElementClass() {
        return this.f7303e;
    }

    public Serializer getElementSerializer() {
        return this.f7302d;
    }

    public void setElementClass(Class cls) {
        this.f7303e = cls;
    }

    public void setElementSerializer(Serializer serializer) {
        this.f7302d = serializer;
    }

    public void setElementsCanBeNull(boolean z) {
        this.f7301c = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.esotericsoftware.kryo.Serializer
    public /* bridge */ /* synthetic */ void write(Kryo kryo, Output output, Object obj) {
        write(kryo, output, (Output) ((Collection) obj));
    }

    public void writeHeader(Kryo kryo, Output output, T t) {
    }

    public T copy(Kryo kryo, T t) {
        T createCopy = createCopy(kryo, t);
        kryo.reference(createCopy);
        for (Object obj : t) {
            createCopy.add(kryo.copy(obj));
        }
        return createCopy;
    }

    public T create(Kryo kryo, Input input, Class<? extends T> cls, int i) {
        if (cls == ArrayList.class) {
            return new ArrayList(i);
        }
        if (cls == HashSet.class) {
            return new HashSet(Math.max(((int) (i / 0.75f)) + 1, 16));
        }
        T t = (T) kryo.newInstance(cls);
        if (t instanceof ArrayList) {
            ((ArrayList) t).ensureCapacity(i);
        }
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        if (r5 == 0) goto L20;
     */
    @Override // com.esotericsoftware.kryo.Serializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T read(com.esotericsoftware.kryo.Kryo r8, com.esotericsoftware.kryo.p035io.Input r9, java.lang.Class<? extends T> r10) {
        /*
            r7 = this;
            java.lang.Class r0 = r7.f7303e
            com.esotericsoftware.kryo.Serializer r1 = r7.f7302d
            if (r1 != 0) goto L1b
            com.esotericsoftware.kryo.util.Generics r2 = r8.getGenerics()
            java.lang.Class r2 = r2.nextGenericClass()
            if (r2 == 0) goto L1b
            boolean r3 = r8.isFinal(r2)
            if (r3 == 0) goto L1b
            com.esotericsoftware.kryo.Serializer r1 = r8.getSerializer(r2)
            r0 = r2
        L1b:
            boolean r2 = r7.f7301c     // Catch: java.lang.Throwable -> Lb3
            r3 = 0
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L4e
            if (r2 == 0) goto L2d
            boolean r2 = r9.readVarIntFlag()     // Catch: java.lang.Throwable -> Lb3
            int r5 = r9.readVarIntFlag(r5)     // Catch: java.lang.Throwable -> Lb3
            goto L31
        L2d:
            int r5 = r9.readVarInt(r5)     // Catch: java.lang.Throwable -> Lb3
        L31:
            if (r5 != 0) goto L3b
        L33:
            com.esotericsoftware.kryo.util.Generics r8 = r8.getGenerics()
            r8.popGenericType()
            return r3
        L3b:
            int r5 = r5 + (-1)
            java.util.Collection r10 = r7.create(r8, r9, r10, r5)     // Catch: java.lang.Throwable -> Lb3
            r8.reference(r10)     // Catch: java.lang.Throwable -> Lb3
            if (r5 != 0) goto L8b
        L46:
            com.esotericsoftware.kryo.util.Generics r8 = r8.getGenerics()
            r8.popGenericType()
            return r10
        L4e:
            boolean r6 = r9.readVarIntFlag()     // Catch: java.lang.Throwable -> Lb3
            int r5 = r9.readVarIntFlag(r5)     // Catch: java.lang.Throwable -> Lb3
            if (r5 != 0) goto L59
            goto L33
        L59:
            int r5 = r5 + (-1)
            java.util.Collection r10 = r7.create(r8, r9, r10, r5)     // Catch: java.lang.Throwable -> Lb3
            r8.reference(r10)     // Catch: java.lang.Throwable -> Lb3
            if (r5 != 0) goto L65
            goto L46
        L65:
            if (r6 == 0) goto L8b
            com.esotericsoftware.kryo.Registration r0 = r8.readClass(r9)     // Catch: java.lang.Throwable -> Lb3
            if (r0 != 0) goto L7d
        L6d:
            if (r4 >= r5) goto L75
            r10.add(r3)     // Catch: java.lang.Throwable -> Lb3
            int r4 = r4 + 1
            goto L6d
        L75:
            com.esotericsoftware.kryo.util.Generics r9 = r8.getGenerics()     // Catch: java.lang.Throwable -> Lb3
            r9.popGenericType()     // Catch: java.lang.Throwable -> Lb3
            goto L46
        L7d:
            java.lang.Class r0 = r0.getType()     // Catch: java.lang.Throwable -> Lb3
            com.esotericsoftware.kryo.Serializer r1 = r8.getSerializer(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r2 == 0) goto L8b
            boolean r2 = r9.readBoolean()     // Catch: java.lang.Throwable -> Lb3
        L8b:
            if (r1 == 0) goto La7
            if (r2 == 0) goto L9b
        L8f:
            if (r4 >= r5) goto L46
            java.lang.Object r2 = r8.readObjectOrNull(r9, r0, r1)     // Catch: java.lang.Throwable -> Lb3
            r10.add(r2)     // Catch: java.lang.Throwable -> Lb3
            int r4 = r4 + 1
            goto L8f
        L9b:
            if (r4 >= r5) goto L46
            java.lang.Object r2 = r8.readObject(r9, r0, r1)     // Catch: java.lang.Throwable -> Lb3
            r10.add(r2)     // Catch: java.lang.Throwable -> Lb3
            int r4 = r4 + 1
            goto L9b
        La7:
            if (r4 >= r5) goto L46
            java.lang.Object r0 = r8.readClassAndObject(r9)     // Catch: java.lang.Throwable -> Lb3
            r10.add(r0)     // Catch: java.lang.Throwable -> Lb3
            int r4 = r4 + 1
            goto La7
        Lb3:
            r9 = move-exception
            com.esotericsoftware.kryo.util.Generics r8 = r8.getGenerics()
            r8.popGenericType()
            goto Lbd
        Lbc:
            throw r9
        Lbd:
            goto Lbc
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.serializers.CollectionSerializer.read(com.esotericsoftware.kryo.Kryo, com.esotericsoftware.kryo.io.Input, java.lang.Class):java.util.Collection");
    }

    public void setElementClass(Class cls, Serializer serializer) {
        this.f7303e = cls;
        this.f7302d = serializer;
    }

    public void write(Kryo kryo, Output output, T t) {
        Class nextGenericClass;
        boolean z = false;
        if (t == null) {
            output.writeByte((byte) 0);
            return;
        }
        int size = t.size();
        if (size == 0) {
            output.writeByte(1);
            writeHeader(kryo, output, t);
            return;
        }
        boolean z2 = this.f7301c;
        Serializer serializer = this.f7302d;
        if (serializer == null && (nextGenericClass = kryo.getGenerics().nextGenericClass()) != null && kryo.isFinal(nextGenericClass)) {
            serializer = kryo.getSerializer(nextGenericClass);
        }
        try {
            if (serializer != null) {
                if (z2) {
                    for (Object obj : t) {
                        if (obj == null) {
                            output.writeVarIntFlag(true, size + 1, true);
                        }
                    }
                    output.writeVarIntFlag(false, size + 1, true);
                    writeHeader(kryo, output, t);
                    z2 = z;
                } else {
                    output.writeVarInt(size + 1, true);
                }
                z = z2;
                writeHeader(kryo, output, t);
                z2 = z;
            } else {
                Class<?> cls = null;
                Iterator it = t.iterator();
                boolean z3 = false;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        if (next == null) {
                            z3 = true;
                        } else if (cls == null) {
                            cls = next.getClass();
                        } else if (next.getClass() != cls) {
                            output.writeVarIntFlag(false, size + 1, true);
                            writeHeader(kryo, output, t);
                            break;
                        }
                    } else {
                        output.writeVarIntFlag(true, size + 1, true);
                        writeHeader(kryo, output, t);
                        if (cls == null) {
                            output.writeByte((byte) 0);
                            return;
                        }
                        kryo.writeClass(output, cls);
                        serializer = kryo.getSerializer(cls);
                        if (z2) {
                            output.writeBoolean(z3);
                            z2 = z3;
                        }
                    }
                }
            }
            if (serializer == null) {
                for (Object obj2 : t) {
                    kryo.writeClassAndObject(output, obj2);
                }
            } else if (z2) {
                for (Object obj3 : t) {
                    kryo.writeObjectOrNull(output, obj3, serializer);
                }
            } else {
                for (Object obj4 : t) {
                    kryo.writeObject(output, obj4, serializer);
                }
            }
        } finally {
            kryo.getGenerics().popGenericType();
        }
    }

    public CollectionSerializer() {
        setAcceptsNull(true);
    }
}
