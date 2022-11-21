package net.bytebuddy.jar.asm;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SymbolTable {

    /* renamed from: a */
    public final ClassWriter f19231a;
    private int bootstrapMethodCount;
    private ByteVector bootstrapMethods;
    private String className;
    private ByteVector constantPool;
    private int constantPoolCount;
    private Entry[] entries;
    private int entryCount;
    private int majorVersion;
    private final ClassReader sourceClassReader;
    private int typeCount;
    private Entry[] typeTable;

    public SymbolTable(ClassWriter classWriter) {
        this.f19231a = classWriter;
        this.sourceClassReader = null;
        this.entries = new Entry[256];
        this.constantPoolCount = 1;
        this.constantPool = new ByteVector();
    }

    private Symbol addConstantDynamicOrInvokeDynamicReference(int i, String str, String str2, int i2) {
        int hash = hash(i, str, str2, i2);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == i && entry.f19232h == hash && entry.f19229f == i2 && entry.f19227d.equals(str) && entry.f19228e.equals(str2)) {
                return entry;
            }
        }
        this.constantPool.m14914e(i, i2, m14847o(str, str2));
        int i3 = this.constantPoolCount;
        this.constantPoolCount = i3 + 1;
        return put(new Entry(i3, i, null, str, str2, i2, hash));
    }

    private Symbol addConstantIntegerOrFloat(int i, int i2) {
        int hash = hash(i, i2);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == i && entry.f19232h == hash && entry.f19229f == i2) {
                return entry;
            }
        }
        this.constantPool.putByte(i).putInt(i2);
        int i3 = this.constantPoolCount;
        this.constantPoolCount = i3 + 1;
        return put(new Entry(i3, i, i2, hash));
    }

    private Symbol addConstantLongOrDouble(int i, long j) {
        int hash = hash(i, j);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == i && entry.f19232h == hash && entry.f19229f == j) {
                return entry;
            }
        }
        int i2 = this.constantPoolCount;
        this.constantPool.putByte(i).putLong(j);
        this.constantPoolCount += 2;
        return put(new Entry(i2, i, j, hash));
    }

    private Entry addConstantMemberReference(int i, String str, String str2, String str3) {
        int hash = hash(i, str, str2, str3);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == i && entry.f19232h == hash && entry.f19226c.equals(str) && entry.f19227d.equals(str2) && entry.f19228e.equals(str3)) {
                return entry;
            }
        }
        this.constantPool.m14914e(i, m14859c(str).f19224a, m14847o(str2, str3));
        int i2 = this.constantPoolCount;
        this.constantPoolCount = i2 + 1;
        return put(new Entry(i2, i, str, str2, str3, 0L, hash));
    }

    private void addConstantNameAndType(int i, String str, String str2) {
        add(new Entry(i, 12, str, str2, hash(12, str, str2)));
    }

    private void addConstantUtf8(int i, String str) {
        add(new Entry(i, 1, str, hash(1, str)));
    }

    private Symbol addConstantUtf8Reference(int i, String str) {
        int hash = hash(i, str);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == i && entry.f19232h == hash && entry.f19228e.equals(str)) {
                return entry;
            }
        }
        this.constantPool.m14915d(i, m14844r(str));
        int i2 = this.constantPoolCount;
        this.constantPoolCount = i2 + 1;
        return put(new Entry(i2, i, str, hash));
    }

    private Entry get(int i) {
        Entry[] entryArr = this.entries;
        return entryArr[i % entryArr.length];
    }

    private static int hash(int i, int i2) {
        return (i + i2) & Integer.MAX_VALUE;
    }

    private static int hash(int i, long j) {
        return (i + ((int) j) + ((int) (j >>> 32))) & Integer.MAX_VALUE;
    }

    private static int hash(int i, String str) {
        return (i + str.hashCode()) & Integer.MAX_VALUE;
    }

    /* renamed from: A */
    public ClassReader m14866A() {
        return this.sourceClassReader;
    }

    /* renamed from: B */
    public Symbol m14865B(int i) {
        return this.typeTable[i];
    }

    /* renamed from: D */
    public void m14863D(ByteVector byteVector) {
        ByteVector putShort = byteVector.putShort(this.constantPoolCount);
        ByteVector byteVector2 = this.constantPool;
        putShort.putByteArray(byteVector2.f19173a, 0, byteVector2.f19174b);
    }

    /* renamed from: c */
    public Symbol m14859c(String str) {
        return addConstantUtf8Reference(7, str);
    }

    /* renamed from: d */
    public Symbol m14858d(double d) {
        return addConstantLongOrDouble(6, Double.doubleToRawLongBits(d));
    }

    /* renamed from: f */
    public Symbol m14856f(String str, String str2, String str3) {
        return addConstantMemberReference(9, str, str2, str3);
    }

    /* renamed from: g */
    public Symbol m14855g(float f) {
        return addConstantIntegerOrFloat(4, Float.floatToRawIntBits(f));
    }

    /* renamed from: h */
    public Symbol m14854h(int i) {
        return addConstantIntegerOrFloat(3, i);
    }

    /* renamed from: j */
    public Symbol m14852j(long j) {
        return addConstantLongOrDouble(5, j);
    }

    /* renamed from: l */
    public Symbol m14850l(String str) {
        return addConstantUtf8Reference(16, str);
    }

    /* renamed from: m */
    public Symbol m14849m(String str, String str2, String str3, boolean z) {
        return addConstantMemberReference(z ? 11 : 10, str, str2, str3);
    }

    /* renamed from: n */
    public Symbol m14848n(String str) {
        return addConstantUtf8Reference(19, str);
    }

    /* renamed from: p */
    public Symbol m14846p(String str) {
        return addConstantUtf8Reference(20, str);
    }

    /* renamed from: q */
    public Symbol m14845q(String str) {
        return addConstantUtf8Reference(8, str);
    }

    /* renamed from: r */
    public int m14844r(String str) {
        int hash = hash(1, str);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 1 && entry.f19232h == hash && entry.f19228e.equals(str)) {
                return entry.f19224a;
            }
        }
        this.constantPool.putByte(1).putUTF8(str);
        int i = this.constantPoolCount;
        this.constantPoolCount = i + 1;
        return put(new Entry(i, 1, str, hash)).f19224a;
    }

    /* renamed from: w */
    public String m14839w() {
        return this.className;
    }

    /* renamed from: x */
    public int m14838x() {
        return this.constantPoolCount;
    }

    /* renamed from: y */
    public int m14837y() {
        return this.constantPool.f19174b;
    }

    /* renamed from: z */
    public int m14836z() {
        return this.majorVersion;
    }

    /* loaded from: classes.dex */
    public static class Entry extends Symbol {

        /* renamed from: h */
        public final int f19232h;

        /* renamed from: i */
        public Entry f19233i;

        public Entry(int i, int i2, String str, String str2, String str3, long j, int i3) {
            super(i, i2, str, str2, str3, j);
            this.f19232h = i3;
        }

        public Entry(int i, int i2, String str, int i3) {
            super(i, i2, null, null, str, 0L);
            this.f19232h = i3;
        }

        public Entry(int i, int i2, String str, long j, int i3) {
            super(i, i2, null, null, str, j);
            this.f19232h = i3;
        }

        public Entry(int i, int i2, String str, String str2, int i3) {
            super(i, i2, null, str, str2, 0L);
            this.f19232h = i3;
        }

        public Entry(int i, int i2, long j, int i3) {
            super(i, i2, null, null, null, j);
            this.f19232h = i3;
        }
    }

    private void add(Entry entry) {
        this.entryCount++;
        int i = entry.f19232h;
        Entry[] entryArr = this.entries;
        int length = i % entryArr.length;
        entry.f19233i = entryArr[length];
        entryArr[length] = entry;
    }

    private Symbol addBootstrapMethod(int i, int i2, int i3) {
        byte[] bArr = this.bootstrapMethods.f19173a;
        for (Entry entry = get(i3); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 64 && entry.f19232h == i3) {
                int i4 = (int) entry.f19229f;
                boolean z = false;
                int i5 = 0;
                while (true) {
                    if (i5 < i2) {
                        if (bArr[i + i5] != bArr[i4 + i5]) {
                            break;
                        }
                        i5++;
                    } else {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    this.bootstrapMethods.f19174b = i;
                    return entry;
                }
            }
        }
        int i6 = this.bootstrapMethodCount;
        this.bootstrapMethodCount = i6 + 1;
        return put(new Entry(i6, 64, i, i3));
    }

    private void addConstantMethodHandle(int i, int i2, String str, String str2, String str3) {
        add(new Entry(i, 15, str, str2, str3, i2, hash(15, str, str2, str3, i2)));
    }

    private int addTypeInternal(Entry entry) {
        if (this.typeTable == null) {
            this.typeTable = new Entry[16];
        }
        int i = this.typeCount;
        Entry[] entryArr = this.typeTable;
        if (i == entryArr.length) {
            Entry[] entryArr2 = new Entry[entryArr.length * 2];
            System.arraycopy(entryArr, 0, entryArr2, 0, entryArr.length);
            this.typeTable = entryArr2;
        }
        Entry[] entryArr3 = this.typeTable;
        int i2 = this.typeCount;
        this.typeCount = i2 + 1;
        entryArr3[i2] = entry;
        return put(entry).f19224a;
    }

    private void copyBootstrapMethods(ClassReader classReader, char[] cArr) {
        byte[] bArr = classReader.f19175a;
        int m14913a = classReader.m14913a();
        int readUnsignedShort = classReader.readUnsignedShort(m14913a - 2);
        while (true) {
            if (readUnsignedShort <= 0) {
                break;
            } else if ("BootstrapMethods".equals(classReader.readUTF8(m14913a, cArr))) {
                this.bootstrapMethodCount = classReader.readUnsignedShort(m14913a + 6);
                break;
            } else {
                m14913a += classReader.readInt(m14913a + 2) + 6;
                readUnsignedShort--;
            }
        }
        if (this.bootstrapMethodCount > 0) {
            int i = m14913a + 8;
            int readInt = classReader.readInt(m14913a + 2) - 2;
            ByteVector byteVector = new ByteVector(readInt);
            this.bootstrapMethods = byteVector;
            byteVector.putByteArray(bArr, i, readInt);
            int i2 = i;
            for (int i3 = 0; i3 < this.bootstrapMethodCount; i3++) {
                int i4 = i2 - i;
                int readUnsignedShort2 = classReader.readUnsignedShort(i2);
                int i5 = i2 + 2;
                int readUnsignedShort3 = classReader.readUnsignedShort(i5);
                i2 = i5 + 2;
                int hashCode = classReader.readConst(readUnsignedShort2, cArr).hashCode();
                while (true) {
                    int i6 = readUnsignedShort3 - 1;
                    if (readUnsignedShort3 > 0) {
                        int readUnsignedShort4 = classReader.readUnsignedShort(i2);
                        i2 += 2;
                        hashCode ^= classReader.readConst(readUnsignedShort4, cArr).hashCode();
                        readUnsignedShort3 = i6;
                    }
                }
                add(new Entry(i3, 64, i4, hashCode & Integer.MAX_VALUE));
            }
        }
    }

    private static int hash(int i, String str, int i2) {
        return (i + str.hashCode() + i2) & Integer.MAX_VALUE;
    }

    private Entry put(Entry entry) {
        int i = this.entryCount;
        Entry[] entryArr = this.entries;
        if (i > (entryArr.length * 3) / 4) {
            int length = entryArr.length;
            int i2 = (length * 2) + 1;
            Entry[] entryArr2 = new Entry[i2];
            for (int i3 = length - 1; i3 >= 0; i3--) {
                Entry entry2 = this.entries[i3];
                while (entry2 != null) {
                    int i4 = entry2.f19232h % i2;
                    Entry entry3 = entry2.f19233i;
                    entry2.f19233i = entryArr2[i4];
                    entryArr2[i4] = entry2;
                    entry2 = entry3;
                }
            }
            this.entries = entryArr2;
        }
        this.entryCount++;
        int i5 = entry.f19232h;
        Entry[] entryArr3 = this.entries;
        int length2 = i5 % entryArr3.length;
        entry.f19233i = entryArr3[length2];
        entryArr3[length2] = entry;
        return entry;
    }

    /* renamed from: C */
    public void m14864C(ByteVector byteVector) {
        if (this.bootstrapMethods != null) {
            ByteVector putShort = byteVector.putShort(m14844r("BootstrapMethods")).putInt(this.bootstrapMethods.f19174b + 2).putShort(this.bootstrapMethodCount);
            ByteVector byteVector2 = this.bootstrapMethods;
            putShort.putByteArray(byteVector2.f19173a, 0, byteVector2.f19174b);
        }
    }

    /* renamed from: E */
    public int m14862E(int i, String str) {
        this.majorVersion = i;
        this.className = str;
        return m14859c(str).f19224a;
    }

    /* renamed from: a */
    public Symbol m14861a(Handle handle, Object... objArr) {
        ByteVector byteVector = this.bootstrapMethods;
        if (byteVector == null) {
            byteVector = new ByteVector();
            this.bootstrapMethods = byteVector;
        }
        int length = objArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = m14860b(objArr[i]).f19224a;
        }
        int i2 = byteVector.f19174b;
        byteVector.putShort(m14851k(handle.getTag(), handle.getOwner(), handle.getName(), handle.getDesc(), handle.isInterface()).f19224a);
        byteVector.putShort(length);
        for (int i3 = 0; i3 < length; i3++) {
            byteVector.putShort(iArr[i3]);
        }
        int i4 = byteVector.f19174b - i2;
        int hashCode = handle.hashCode();
        for (Object obj : objArr) {
            hashCode ^= obj.hashCode();
        }
        return addBootstrapMethod(i2, i4, hashCode & Integer.MAX_VALUE);
    }

    /* renamed from: b */
    public Symbol m14860b(Object obj) {
        if (obj instanceof Integer) {
            return m14854h(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return m14854h(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return m14854h(((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return m14854h(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return m14854h(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return m14855g(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return m14852j(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return m14858d(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return m14845q((String) obj);
        }
        if (obj instanceof Type) {
            Type type = (Type) obj;
            int sort = type.getSort();
            if (sort == 10) {
                return m14859c(type.getInternalName());
            }
            if (sort == 11) {
                return m14850l(type.getDescriptor());
            }
            return m14859c(type.getDescriptor());
        } else if (obj instanceof Handle) {
            Handle handle = (Handle) obj;
            return m14851k(handle.getTag(), handle.getOwner(), handle.getName(), handle.getDesc(), handle.isInterface());
        } else if (obj instanceof ConstantDynamic) {
            ConstantDynamic constantDynamic = (ConstantDynamic) obj;
            return m14857e(constantDynamic.getName(), constantDynamic.getDescriptor(), constantDynamic.getBootstrapMethod(), constantDynamic.m14911a());
        } else {
            throw new IllegalArgumentException("value " + obj);
        }
    }

    /* renamed from: k */
    public Symbol m14851k(int i, String str, String str2, String str3, boolean z) {
        int hash = hash(15, str, str2, str3, i);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 15 && entry.f19232h == hash && entry.f19229f == i && entry.f19226c.equals(str) && entry.f19227d.equals(str2) && entry.f19228e.equals(str3)) {
                return entry;
            }
        }
        if (i <= 4) {
            this.constantPool.m14916c(15, i, m14856f(str, str2, str3).f19224a);
        } else {
            this.constantPool.m14916c(15, i, m14849m(str, str2, str3, z).f19224a);
        }
        int i2 = this.constantPoolCount;
        this.constantPoolCount = i2 + 1;
        return put(new Entry(i2, 15, str, str2, str3, i, hash));
    }

    /* renamed from: o */
    public int m14847o(String str, String str2) {
        int hash = hash(12, str, str2);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 12 && entry.f19232h == hash && entry.f19227d.equals(str) && entry.f19228e.equals(str2)) {
                return entry.f19224a;
            }
        }
        this.constantPool.m14914e(12, m14844r(str), m14844r(str2));
        int i = this.constantPoolCount;
        this.constantPoolCount = i + 1;
        return put(new Entry(i, 12, str, str2, hash)).f19224a;
    }

    /* renamed from: s */
    public int m14843s(int i, int i2) {
        long j;
        long j2;
        if (i < i2) {
            j = i;
            j2 = i2;
        } else {
            j = i2;
            j2 = i;
        }
        long j3 = j | (j2 << 32);
        int hash = hash(130, i + i2);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 130 && entry.f19232h == hash && entry.f19229f == j3) {
                return entry.f19230g;
            }
        }
        Entry[] entryArr = this.typeTable;
        int m14842t = m14842t(this.f19231a.getCommonSuperClass(entryArr[i].f19228e, entryArr[i2].f19228e));
        put(new Entry(this.typeCount, 130, j3, hash)).f19230g = m14842t;
        return m14842t;
    }

    /* renamed from: t */
    public int m14842t(String str) {
        int hash = hash(128, str);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 128 && entry.f19232h == hash && entry.f19228e.equals(str)) {
                return entry.f19224a;
            }
        }
        return addTypeInternal(new Entry(this.typeCount, 128, str, hash));
    }

    /* renamed from: u */
    public int m14841u(String str, int i) {
        int hash = hash(129, str, i);
        for (Entry entry = get(hash); entry != null; entry = entry.f19233i) {
            if (entry.f19225b == 129 && entry.f19232h == hash && entry.f19229f == i && entry.f19228e.equals(str)) {
                return entry.f19224a;
            }
        }
        return addTypeInternal(new Entry(this.typeCount, 129, str, i, hash));
    }

    /* renamed from: v */
    public int m14840v() {
        if (this.bootstrapMethods != null) {
            m14844r("BootstrapMethods");
            return this.bootstrapMethods.f19174b + 8;
        }
        return 0;
    }

    private static int hash(int i, String str, String str2) {
        return (i + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
    }

    /* renamed from: e */
    public Symbol m14857e(String str, String str2, Handle handle, Object... objArr) {
        return addConstantDynamicOrInvokeDynamicReference(17, str, str2, m14861a(handle, objArr).f19224a);
    }

    /* renamed from: i */
    public Symbol m14853i(String str, String str2, Handle handle, Object... objArr) {
        return addConstantDynamicOrInvokeDynamicReference(18, str, str2, m14861a(handle, objArr).f19224a);
    }

    private static int hash(int i, String str, String str2, int i2) {
        return (i + (str.hashCode() * str2.hashCode() * (i2 + 1))) & Integer.MAX_VALUE;
    }

    private static int hash(int i, String str, String str2, String str3) {
        return (i + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
    }

    private static int hash(int i, String str, String str2, String str3, int i2) {
        return (i + (str.hashCode() * str2.hashCode() * str3.hashCode() * i2)) & Integer.MAX_VALUE;
    }

    public SymbolTable(ClassWriter classWriter, ClassReader classReader) {
        this.f19231a = classWriter;
        this.sourceClassReader = classReader;
        byte[] bArr = classReader.f19175a;
        int item = classReader.getItem(1) - 1;
        int i = classReader.header - item;
        this.constantPoolCount = classReader.getItemCount();
        ByteVector byteVector = new ByteVector(i);
        this.constantPool = byteVector;
        byteVector.putByteArray(bArr, item, i);
        this.entries = new Entry[this.constantPoolCount * 2];
        char[] cArr = new char[classReader.getMaxStringLength()];
        boolean z = false;
        int i2 = 1;
        while (i2 < this.constantPoolCount) {
            int item2 = classReader.getItem(i2);
            byte b = bArr[item2 - 1];
            switch (b) {
                case 1:
                    addConstantUtf8(i2, classReader.m14912b(i2, cArr));
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                    addConstantIntegerOrFloat(i2, b, classReader.readInt(item2));
                    break;
                case 5:
                case 6:
                    addConstantLongOrDouble(i2, b, classReader.readLong(item2));
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    addConstantUtf8Reference(i2, b, classReader.readUTF8(item2, cArr));
                    break;
                case 9:
                case 10:
                case 11:
                    int item3 = classReader.getItem(classReader.readUnsignedShort(item2 + 2));
                    addConstantMemberReference(i2, b, classReader.readClass(item2, cArr), classReader.readUTF8(item3, cArr), classReader.readUTF8(item3 + 2, cArr));
                    break;
                case 12:
                    addConstantNameAndType(i2, classReader.readUTF8(item2, cArr), classReader.readUTF8(item2 + 2, cArr));
                    break;
                case 15:
                    int item4 = classReader.getItem(classReader.readUnsignedShort(item2 + 1));
                    int item5 = classReader.getItem(classReader.readUnsignedShort(item4 + 2));
                    addConstantMethodHandle(i2, classReader.readByte(item2), classReader.readClass(item4, cArr), classReader.readUTF8(item5, cArr), classReader.readUTF8(item5 + 2, cArr));
                    break;
                case 17:
                case 18:
                    int item6 = classReader.getItem(classReader.readUnsignedShort(item2 + 2));
                    addConstantDynamicOrInvokeDynamicReference(b, i2, classReader.readUTF8(item6, cArr), classReader.readUTF8(item6 + 2, cArr), classReader.readUnsignedShort(item2));
                    z = true;
                    break;
            }
            i2 += (b == 5 || b == 6) ? 2 : 1;
        }
        if (z) {
            copyBootstrapMethods(classReader, cArr);
        }
    }

    private void addConstantIntegerOrFloat(int i, int i2, int i3) {
        add(new Entry(i, i2, i3, hash(i2, i3)));
    }

    private void addConstantUtf8Reference(int i, int i2, String str) {
        add(new Entry(i, i2, str, hash(i2, str)));
    }

    private void addConstantDynamicOrInvokeDynamicReference(int i, int i2, String str, String str2, int i3) {
        add(new Entry(i2, i, null, str, str2, i3, hash(i, str, str2, i3)));
    }

    private void addConstantLongOrDouble(int i, int i2, long j) {
        add(new Entry(i, i2, j, hash(i2, j)));
    }

    private void addConstantMemberReference(int i, int i2, String str, String str2, String str3) {
        add(new Entry(i, i2, str, str2, str3, 0L, hash(i2, str, str2, str3)));
    }
}
