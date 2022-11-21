package com.esotericsoftware.asm;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class ClassWriter extends ClassVisitor {
    public static final int COMPUTE_FRAMES = 2;
    public static final int COMPUTE_MAXS = 1;

    /* renamed from: N */
    public static final byte[] f6992N;

    /* renamed from: A */
    public AnnotationWriter f6993A;

    /* renamed from: B */
    public Attribute f6994B;

    /* renamed from: C */
    public int f6995C;

    /* renamed from: D */
    public ByteVector f6996D;

    /* renamed from: E */
    public int f6997E;

    /* renamed from: F */
    public ByteVector f6998F;

    /* renamed from: G */
    public FieldWriter f6999G;

    /* renamed from: H */
    public FieldWriter f7000H;

    /* renamed from: I */
    public MethodWriter f7001I;

    /* renamed from: J */
    public MethodWriter f7002J;

    /* renamed from: K */
    public boolean f7003K;

    /* renamed from: L */
    public boolean f7004L;

    /* renamed from: M */
    public boolean f7005M;

    /* renamed from: a */
    public ClassReader f7006a;

    /* renamed from: b */
    public int f7007b;

    /* renamed from: c */
    public int f7008c;

    /* renamed from: d */
    public final ByteVector f7009d;

    /* renamed from: e */
    public Item[] f7010e;

    /* renamed from: f */
    public int f7011f;

    /* renamed from: g */
    public final Item f7012g;

    /* renamed from: h */
    public final Item f7013h;

    /* renamed from: i */
    public final Item f7014i;

    /* renamed from: j */
    public final Item f7015j;

    /* renamed from: k */
    public Item[] f7016k;

    /* renamed from: l */
    public short f7017l;

    /* renamed from: m */
    public int f7018m;

    /* renamed from: n */
    public int f7019n;

    /* renamed from: o */
    public String f7020o;

    /* renamed from: p */
    public int f7021p;

    /* renamed from: q */
    public int f7022q;

    /* renamed from: r */
    public int f7023r;

    /* renamed from: s */
    public int[] f7024s;

    /* renamed from: t */
    public int f7025t;

    /* renamed from: u */
    public ByteVector f7026u;

    /* renamed from: v */
    public int f7027v;

    /* renamed from: w */
    public int f7028w;

    /* renamed from: x */
    public AnnotationWriter f7029x;

    /* renamed from: y */
    public AnnotationWriter f7030y;

    /* renamed from: z */
    public AnnotationWriter f7031z;

    static {
        m23403a();
        byte[] bArr = new byte[220];
        for (int i = 0; i < 220; i++) {
            bArr[i] = (byte) ("AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ".charAt(i) - 'A');
        }
        f6992N = bArr;
    }

    public ClassWriter(int i) {
        super(327680);
        this.f7008c = 1;
        this.f7009d = new ByteVector();
        Item[] itemArr = new Item[256];
        this.f7010e = itemArr;
        double length = itemArr.length;
        Double.isNaN(length);
        this.f7011f = (int) (length * 0.75d);
        this.f7012g = new Item();
        this.f7013h = new Item();
        this.f7014i = new Item();
        this.f7015j = new Item();
        this.f7003K = (i & 1) != 0;
        this.f7004L = (i & 2) != 0;
    }

    public ClassWriter(ClassReader classReader, int i) {
        this(i);
        classReader.m23411j(this);
        this.f7006a = classReader;
    }

    /* renamed from: a */
    public static /* synthetic */ void m23403a() {
    }

    /* renamed from: b */
    public int m23402b(int i, int i2) {
        Item item = this.f7013h;
        item.f7088b = 32;
        item.f7090d = i | (i2 << 32);
        item.f7094h = (i + 32 + i2) & Integer.MAX_VALUE;
        Item m23395i = m23395i(item);
        if (m23395i == null) {
            Item[] itemArr = this.f7016k;
            String str = itemArr[i].f7091e;
            String str2 = itemArr[i2].f7091e;
            this.f7013h.f7089c = m23384t(getCommonSuperClass(str, str2));
            m23395i = new Item(0, this.f7013h);
            m23385s(m23395i);
        }
        return m23395i.f7089c;
    }

    /* renamed from: c */
    public int m23401c(String str, int i) {
        Item item = this.f7012g;
        item.f7088b = 31;
        item.f7089c = i;
        item.f7091e = str;
        item.f7094h = (str.hashCode() + 31 + i) & Integer.MAX_VALUE;
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            m23395i = m23383u(this.f7012g);
        }
        return m23395i.f7087a;
    }

    /* renamed from: d */
    public Item m23400d(double d) {
        this.f7012g.m23363a(d);
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            this.f7009d.putByte(6).putLong(this.f7012g.f7090d);
            Item item = new Item(this.f7008c, this.f7012g);
            this.f7008c += 2;
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: e */
    public Item m23399e(float f) {
        this.f7012g.m23362b(f);
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            this.f7009d.putByte(4).putInt(this.f7012g.f7089c);
            int i = this.f7008c;
            this.f7008c = i + 1;
            Item item = new Item(i, this.f7012g);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: f */
    public Item m23398f(int i) {
        this.f7012g.m23361c(i);
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            this.f7009d.putByte(3).putInt(i);
            int i2 = this.f7008c;
            this.f7008c = i2 + 1;
            Item item = new Item(i2, this.f7012g);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: g */
    public Item m23397g(int i, String str, String str2, String str3, boolean z) {
        this.f7015j.m23359e(i + 20, str, str2, str3);
        Item m23395i = m23395i(this.f7015j);
        if (m23395i == null) {
            m23386r(15, i, i <= 4 ? newField(str, str2, str3) : newMethod(str, str2, str3, z));
            int i2 = this.f7008c;
            this.f7008c = i2 + 1;
            Item item = new Item(i2, this.f7015j);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    public String getCommonSuperClass(String str, String str2) {
        ClassLoader classLoader = getClass().getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), false, classLoader);
            Class<?> cls2 = Class.forName(str2.replace('/', TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH), false, classLoader);
            if (cls.isAssignableFrom(cls2)) {
                return str;
            }
            if (cls2.isAssignableFrom(cls)) {
                return str2;
            }
            if (cls.isInterface() || cls2.isInterface()) {
                return TypeProxy.SilentConstruction.Appender.JAVA_LANG_OBJECT_INTERNAL_NAME;
            }
            do {
                cls = cls.getSuperclass();
            } while (!cls.isAssignableFrom(cls2));
            return cls.getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
        } catch (Exception e) {
            throw new RuntimeException(e.toString());
        }
    }

    /* renamed from: h */
    public Item m23396h(long j) {
        this.f7012g.m23358f(j);
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            this.f7009d.putByte(5).putLong(j);
            Item item = new Item(this.f7008c, this.f7012g);
            this.f7008c += 2;
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: i */
    public final Item m23395i(Item item) {
        Item[] itemArr = this.f7010e;
        Item item2 = itemArr[item.f7094h % itemArr.length];
        while (item2 != null && (item2.f7088b != item.f7088b || !item.m23356h(item2))) {
            item2 = item2.f7095i;
        }
        return item2;
    }

    /* renamed from: j */
    public Item m23394j(Object obj) {
        if (obj instanceof Integer) {
            return m23398f(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return m23398f(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return m23398f(((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return m23398f(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return m23398f(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return m23399e(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return m23396h(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return m23400d(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return m23387q((String) obj);
        }
        if (obj instanceof Type) {
            Type type = (Type) obj;
            int sort = type.getSort();
            if (sort == 10) {
                return m23393k(type.getInternalName());
            }
            String descriptor = type.getDescriptor();
            return sort == 11 ? m23382v(descriptor) : m23393k(descriptor);
        } else if (obj instanceof Handle) {
            Handle handle = (Handle) obj;
            return m23397g(handle.f7076a, handle.f7077b, handle.f7078c, handle.f7079d, handle.f7080e);
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("value ");
            stringBuffer.append(obj);
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    /* renamed from: k */
    public Item m23393k(String str) {
        this.f7013h.m23359e(7, str, null, null);
        Item m23395i = m23395i(this.f7013h);
        if (m23395i == null) {
            this.f7009d.m23422c(7, newUTF8(str));
            int i = this.f7008c;
            this.f7008c = i + 1;
            Item item = new Item(i, this.f7013h);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: l */
    public Item m23392l(String str, String str2) {
        this.f7013h.m23359e(12, str, str2, null);
        Item m23395i = m23395i(this.f7013h);
        if (m23395i == null) {
            m23388p(12, newUTF8(str), newUTF8(str2));
            int i = this.f7008c;
            this.f7008c = i + 1;
            Item item = new Item(i, this.f7013h);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: m */
    public Item m23391m(String str, String str2, Handle handle, Object... objArr) {
        int i;
        ByteVector byteVector = this.f6998F;
        if (byteVector == null) {
            byteVector = new ByteVector();
            this.f6998F = byteVector;
        }
        int i2 = byteVector.f6986b;
        int hashCode = handle.hashCode();
        byteVector.putShort(newHandle(handle.f7076a, handle.f7077b, handle.f7078c, handle.f7079d, handle.isInterface()));
        int length = objArr.length;
        byteVector.putShort(length);
        for (Object obj : objArr) {
            hashCode ^= obj.hashCode();
            byteVector.putShort(newConst(obj));
        }
        byte[] bArr = byteVector.f6985a;
        int i3 = (length + 2) << 1;
        int i4 = hashCode & Integer.MAX_VALUE;
        Item[] itemArr = this.f7010e;
        Item item = itemArr[i4 % itemArr.length];
        loop1: while (item != null) {
            if (item.f7088b == 33 && item.f7094h == i4) {
                int i5 = item.f7089c;
                for (int i6 = 0; i6 < i3; i6++) {
                    if (bArr[i2 + i6] != bArr[i5 + i6]) {
                        break;
                    }
                }
                break loop1;
            }
            item = item.f7095i;
        }
        if (item != null) {
            i = item.f7087a;
            byteVector.f6986b = i2;
        } else {
            i = this.f6997E;
            this.f6997E = i + 1;
            Item item2 = new Item(i);
            item2.m23360d(i2, i4);
            m23385s(item2);
        }
        this.f7014i.m23357g(str, str2, i);
        Item m23395i = m23395i(this.f7014i);
        if (m23395i == null) {
            m23388p(18, i, newNameType(str, str2));
            int i7 = this.f7008c;
            this.f7008c = i7 + 1;
            Item item3 = new Item(i7, this.f7014i);
            m23385s(item3);
            return item3;
        }
        return m23395i;
    }

    /* renamed from: n */
    public Item m23390n(String str, String str2, String str3) {
        this.f7014i.m23359e(9, str, str2, str3);
        Item m23395i = m23395i(this.f7014i);
        if (m23395i == null) {
            m23388p(9, newClass(str), newNameType(str2, str3));
            int i = this.f7008c;
            this.f7008c = i + 1;
            Item item = new Item(i, this.f7014i);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    public int newClass(String str) {
        return m23393k(str).f7087a;
    }

    public int newConst(Object obj) {
        return m23394j(obj).f7087a;
    }

    public int newField(String str, String str2, String str3) {
        return m23390n(str, str2, str3).f7087a;
    }

    public int newHandle(int i, String str, String str2, String str3) {
        return newHandle(i, str, str2, str3, i == 9);
    }

    public int newHandle(int i, String str, String str2, String str3, boolean z) {
        return m23397g(i, str, str2, str3, z).f7087a;
    }

    public int newInvokeDynamic(String str, String str2, Handle handle, Object... objArr) {
        return m23391m(str, str2, handle, objArr).f7087a;
    }

    public int newMethod(String str, String str2, String str3, boolean z) {
        return m23389o(str, str2, str3, z).f7087a;
    }

    public int newMethodType(String str) {
        return m23382v(str).f7087a;
    }

    public int newNameType(String str, String str2) {
        return m23392l(str, str2).f7087a;
    }

    public int newUTF8(String str) {
        this.f7012g.m23359e(1, str, null, null);
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            this.f7009d.putByte(1).putUTF8(str);
            int i = this.f7008c;
            this.f7008c = i + 1;
            m23395i = new Item(i, this.f7012g);
            m23385s(m23395i);
        }
        return m23395i.f7087a;
    }

    /* renamed from: o */
    public Item m23389o(String str, String str2, String str3, boolean z) {
        int i = z ? 11 : 10;
        this.f7014i.m23359e(i, str, str2, str3);
        Item m23395i = m23395i(this.f7014i);
        if (m23395i == null) {
            m23388p(i, newClass(str), newNameType(str2, str3));
            int i2 = this.f7008c;
            this.f7008c = i2 + 1;
            Item item = new Item(i2, this.f7014i);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: p */
    public final void m23388p(int i, int i2, int i3) {
        this.f7009d.m23422c(i, i2).putShort(i3);
    }

    /* renamed from: q */
    public final Item m23387q(String str) {
        this.f7013h.m23359e(8, str, null, null);
        Item m23395i = m23395i(this.f7013h);
        if (m23395i == null) {
            this.f7009d.m23422c(8, newUTF8(str));
            int i = this.f7008c;
            this.f7008c = i + 1;
            Item item = new Item(i, this.f7013h);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    /* renamed from: r */
    public final void m23386r(int i, int i2, int i3) {
        this.f7009d.m23424a(i, i2).putShort(i3);
    }

    /* renamed from: s */
    public final void m23385s(Item item) {
        if (this.f7008c + this.f7017l > this.f7011f) {
            int length = this.f7010e.length;
            int i = (length * 2) + 1;
            Item[] itemArr = new Item[i];
            for (int i2 = length - 1; i2 >= 0; i2--) {
                Item item2 = this.f7010e[i2];
                while (item2 != null) {
                    int i3 = item2.f7094h % i;
                    Item item3 = item2.f7095i;
                    item2.f7095i = itemArr[i3];
                    itemArr[i3] = item2;
                    item2 = item3;
                }
            }
            this.f7010e = itemArr;
            double d = i;
            Double.isNaN(d);
            this.f7011f = (int) (d * 0.75d);
        }
        int i4 = item.f7094h;
        Item[] itemArr2 = this.f7010e;
        int length2 = i4 % itemArr2.length;
        item.f7095i = itemArr2[length2];
        itemArr2[length2] = item;
    }

    /* renamed from: t */
    public int m23384t(String str) {
        this.f7012g.m23359e(30, str, null, null);
        Item m23395i = m23395i(this.f7012g);
        if (m23395i == null) {
            m23395i = m23383u(this.f7012g);
        }
        return m23395i.f7087a;
    }

    public byte[] toByteArray() {
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        int i2;
        ByteVector byteVector;
        if (this.f7008c <= 65535) {
            int i3 = (this.f7023r * 2) + 24;
            int i4 = 0;
            for (FieldWriter fieldWriter = this.f6999G; fieldWriter != null; fieldWriter = (FieldWriter) fieldWriter.f7055fv) {
                i4++;
                i3 += fieldWriter.m23381a();
            }
            int i5 = 0;
            for (MethodWriter methodWriter = this.f7001I; methodWriter != null; methodWriter = (MethodWriter) methodWriter.f7107mv) {
                i5++;
                i3 += methodWriter.m23347a();
            }
            ByteVector byteVector2 = this.f6998F;
            if (byteVector2 != null) {
                i3 += byteVector2.f6986b + 8;
                newUTF8("BootstrapMethods");
                i = 1;
            } else {
                i = 0;
            }
            if (this.f7021p != 0) {
                i++;
                i3 += 8;
                newUTF8("Signature");
            }
            if (this.f7025t != 0) {
                i++;
                i3 += 8;
                newUTF8("SourceFile");
            }
            ByteVector byteVector3 = this.f7026u;
            if (byteVector3 != null) {
                i++;
                i3 += byteVector3.f6986b + 6;
                newUTF8("SourceDebugExtension");
            }
            if (this.f7027v != 0) {
                i++;
                i3 += 10;
                newUTF8("EnclosingMethod");
            }
            if ((this.f7018m & 131072) != 0) {
                i++;
                i3 += 6;
                newUTF8("Deprecated");
            }
            int i6 = this.f7018m;
            if ((i6 & 4096) != 0 && ((this.f7007b & MeshBuilder.MAX_INDEX) < 49 || (i6 & 262144) != 0)) {
                i++;
                i3 += 6;
                newUTF8("Synthetic");
            }
            ByteVector byteVector4 = this.f6996D;
            if (byteVector4 != null) {
                i++;
                i3 += byteVector4.f6986b + 8;
                newUTF8("InnerClasses");
            }
            AnnotationWriter annotationWriter = this.f7029x;
            if (annotationWriter != null) {
                i++;
                i3 += annotationWriter.m23431a() + 8;
                newUTF8("RuntimeVisibleAnnotations");
            }
            AnnotationWriter annotationWriter2 = this.f7030y;
            if (annotationWriter2 != null) {
                i++;
                i3 += annotationWriter2.m23431a() + 8;
                newUTF8("RuntimeInvisibleAnnotations");
            }
            AnnotationWriter annotationWriter3 = this.f7031z;
            if (annotationWriter3 != null) {
                i++;
                i3 += annotationWriter3.m23431a() + 8;
                newUTF8("RuntimeVisibleTypeAnnotations");
            }
            AnnotationWriter annotationWriter4 = this.f6993A;
            if (annotationWriter4 != null) {
                i++;
                i3 += annotationWriter4.m23431a() + 8;
                newUTF8("RuntimeInvisibleTypeAnnotations");
            }
            int i7 = i3;
            Attribute attribute = this.f6994B;
            if (attribute != null) {
                int m23427a = i + attribute.m23427a();
                str = "Deprecated";
                str2 = "EnclosingMethod";
                str3 = "RuntimeVisibleTypeAnnotations";
                str4 = "RuntimeInvisibleAnnotations";
                str5 = "SourceDebugExtension";
                i7 += this.f6994B.m23426b(this, null, 0, -1, -1);
                i = m23427a;
            } else {
                str = "Deprecated";
                str2 = "EnclosingMethod";
                str3 = "RuntimeVisibleTypeAnnotations";
                str4 = "RuntimeInvisibleAnnotations";
                str5 = "SourceDebugExtension";
            }
            ByteVector byteVector5 = new ByteVector(i7 + this.f7009d.f6986b);
            byteVector5.putInt(-889275714).putInt(this.f7007b);
            ByteVector putShort = byteVector5.putShort(this.f7008c);
            ByteVector byteVector6 = this.f7009d;
            putShort.putByteArray(byteVector6.f6985a, 0, byteVector6.f6986b);
            int i8 = this.f7018m;
            byteVector5.putShort(((393216 | ((i8 & 262144) / 64)) ^ (-1)) & i8).putShort(this.f7019n).putShort(this.f7022q);
            byteVector5.putShort(this.f7023r);
            for (int i9 = 0; i9 < this.f7023r; i9++) {
                byteVector5.putShort(this.f7024s[i9]);
            }
            byteVector5.putShort(i4);
            for (FieldWriter fieldWriter2 = this.f6999G; fieldWriter2 != null; fieldWriter2 = (FieldWriter) fieldWriter2.f7055fv) {
                fieldWriter2.m23380b(byteVector5);
            }
            byteVector5.putShort(i5);
            for (MethodWriter methodWriter2 = this.f7001I; methodWriter2 != null; methodWriter2 = (MethodWriter) methodWriter2.f7107mv) {
                methodWriter2.m23341g(byteVector5);
            }
            byteVector5.putShort(i);
            if (this.f6998F != null) {
                byteVector5.putShort(newUTF8("BootstrapMethods"));
                byteVector5.putInt(this.f6998F.f6986b + 2).putShort(this.f6997E);
                ByteVector byteVector7 = this.f6998F;
                byteVector5.putByteArray(byteVector7.f6985a, 0, byteVector7.f6986b);
            }
            if (this.f7021p != 0) {
                i2 = 2;
                byteVector5.putShort(newUTF8("Signature")).putInt(2).putShort(this.f7021p);
            } else {
                i2 = 2;
            }
            if (this.f7025t != 0) {
                byteVector5.putShort(newUTF8("SourceFile")).putInt(i2).putShort(this.f7025t);
            }
            ByteVector byteVector8 = this.f7026u;
            if (byteVector8 != null) {
                int i10 = byteVector8.f6986b;
                byteVector5.putShort(newUTF8(str5)).putInt(i10);
                byteVector5.putByteArray(this.f7026u.f6985a, 0, i10);
            }
            if (this.f7027v != 0) {
                byteVector5.putShort(newUTF8(str2)).putInt(4);
                byteVector5.putShort(this.f7027v).putShort(this.f7028w);
            }
            if ((this.f7018m & 131072) != 0) {
                byteVector5.putShort(newUTF8(str)).putInt(0);
            }
            int i11 = this.f7018m;
            if ((i11 & 4096) != 0 && ((this.f7007b & MeshBuilder.MAX_INDEX) < 49 || (i11 & 262144) != 0)) {
                byteVector5.putShort(newUTF8("Synthetic")).putInt(0);
            }
            if (this.f6996D != null) {
                byteVector5.putShort(newUTF8("InnerClasses"));
                byteVector5.putInt(this.f6996D.f6986b + 2).putShort(this.f6995C);
                ByteVector byteVector9 = this.f6996D;
                byteVector5.putByteArray(byteVector9.f6985a, 0, byteVector9.f6986b);
            }
            if (this.f7029x != null) {
                byteVector5.putShort(newUTF8("RuntimeVisibleAnnotations"));
                this.f7029x.m23429c(byteVector5);
            }
            if (this.f7030y != null) {
                byteVector5.putShort(newUTF8(str4));
                this.f7030y.m23429c(byteVector5);
            }
            if (this.f7031z != null) {
                byteVector5.putShort(newUTF8(str3));
                this.f7031z.m23429c(byteVector5);
            }
            if (this.f6993A != null) {
                byteVector5.putShort(newUTF8("RuntimeInvisibleTypeAnnotations"));
                this.f6993A.m23429c(byteVector5);
            }
            Attribute attribute2 = this.f6994B;
            if (attribute2 != null) {
                byteVector = byteVector5;
                attribute2.m23425c(this, null, 0, -1, -1, byteVector);
            } else {
                byteVector = byteVector5;
            }
            if (this.f7005M) {
                this.f7029x = null;
                this.f7030y = null;
                this.f6994B = null;
                this.f6995C = 0;
                this.f6996D = null;
                this.f6997E = 0;
                this.f6998F = null;
                this.f6999G = null;
                this.f7000H = null;
                this.f7001I = null;
                this.f7002J = null;
                this.f7003K = false;
                this.f7004L = true;
                this.f7005M = false;
                new ClassReader(byteVector.f6985a).accept(this, 4);
                return toByteArray();
            }
            return byteVector.f6985a;
        }
        throw new RuntimeException("Class file too large!");
    }

    /* renamed from: u */
    public final Item m23383u(Item item) {
        short s = (short) (this.f7017l + 1);
        this.f7017l = s;
        Item item2 = new Item(s, this.f7012g);
        m23385s(item2);
        if (this.f7016k == null) {
            this.f7016k = new Item[16];
        }
        short s2 = this.f7017l;
        Item[] itemArr = this.f7016k;
        if (s2 == itemArr.length) {
            Item[] itemArr2 = new Item[itemArr.length * 2];
            System.arraycopy(itemArr, 0, itemArr2, 0, itemArr.length);
            this.f7016k = itemArr2;
        }
        this.f7016k[this.f7017l] = item2;
        return item2;
    }

    /* renamed from: v */
    public Item m23382v(String str) {
        this.f7013h.m23359e(16, str, null, null);
        Item m23395i = m23395i(this.f7013h);
        if (m23395i == null) {
            this.f7009d.m23422c(16, newUTF8(str));
            int i = this.f7008c;
            this.f7008c = i + 1;
            Item item = new Item(i, this.f7013h);
            m23385s(item);
            return item;
        }
        return m23395i;
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
        this.f7007b = i;
        this.f7018m = i2;
        this.f7019n = newClass(str);
        this.f7020o = str;
        if (str2 != null) {
            this.f7021p = newUTF8(str2);
        }
        this.f7022q = str3 == null ? 0 : newClass(str3);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f7023r = length;
        this.f7024s = new int[length];
        for (int i3 = 0; i3 < this.f7023r; i3++) {
            this.f7024s[i3] = newClass(strArr[i3]);
        }
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final AnnotationVisitor visitAnnotation(String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        byteVector.putShort(newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this, true, byteVector, byteVector, 2);
        if (z) {
            annotationWriter.f6981g = this.f7029x;
            this.f7029x = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f7030y;
            this.f7030y = annotationWriter;
        }
        return annotationWriter;
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final void visitAttribute(Attribute attribute) {
        attribute.f6984b = this.f6994B;
        this.f6994B = attribute;
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final void visitEnd() {
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final FieldVisitor visitField(int i, String str, String str2, String str3, Object obj) {
        return new FieldWriter(this, i, str, str2, str3, obj);
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final void visitInnerClass(String str, String str2, String str3, int i) {
        if (this.f6996D == null) {
            this.f6996D = new ByteVector();
        }
        Item m23393k = m23393k(str);
        if (m23393k.f7089c == 0) {
            this.f6995C++;
            this.f6996D.putShort(m23393k.f7087a);
            this.f6996D.putShort(str2 == null ? 0 : newClass(str2));
            this.f6996D.putShort(str3 != null ? newUTF8(str3) : 0);
            this.f6996D.putShort(i);
            m23393k.f7089c = this.f6995C;
        }
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final MethodVisitor visitMethod(int i, String str, String str2, String str3, String[] strArr) {
        return new MethodWriter(this, i, str, str2, str3, strArr, this.f7003K, this.f7004L);
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final void visitOuterClass(String str, String str2, String str3) {
        this.f7027v = newClass(str);
        if (str2 == null || str3 == null) {
            return;
        }
        this.f7028w = newNameType(str2, str3);
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final void visitSource(String str, String str2) {
        if (str != null) {
            this.f7025t = newUTF8(str);
        }
        if (str2 != null) {
            this.f7026u = new ByteVector().m23421d(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override // com.esotericsoftware.asm.ClassVisitor
    public final AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
        ByteVector byteVector = new ByteVector();
        AnnotationWriter.m23430b(i, typePath, byteVector);
        byteVector.putShort(newUTF8(str)).putShort(0);
        AnnotationWriter annotationWriter = new AnnotationWriter(this, true, byteVector, byteVector, byteVector.f6986b - 2);
        if (z) {
            annotationWriter.f6981g = this.f7031z;
            this.f7031z = annotationWriter;
        } else {
            annotationWriter.f6981g = this.f6993A;
            this.f6993A = annotationWriter;
        }
        return annotationWriter;
    }
}
