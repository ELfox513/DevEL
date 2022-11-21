package com.android.p030dx.dex.file;

import com.android.p030dx.dex.DexOptions;
import com.android.p030dx.dex.file.MixedItemSection;
import java.io.OutputStream;
import java.io.Writer;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Adler32;
import p015b2.C0435e;
import p111l1.C4557d;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7213e;
import p218x1.C7207b0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7222j;
import p218x1.C7225m;
import p218x1.C7226n;
import p218x1.C7237y;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.file.DexFile */
/* loaded from: classes.dex */
public final class DexFile {
    private final MixedItemSection byteData;
    private final CallSiteIdsSection callSiteIds;
    private final MixedItemSection classData;
    private final ClassDefsSection classDefs;
    private final DexOptions dexOptions;
    private int dumpWidth;
    private final FieldIdsSection fieldIds;
    private int fileSize;
    private final HeaderSection header;
    private final MixedItemSection map;
    private final MethodHandlesSection methodHandles;
    private final MethodIdsSection methodIds;
    private final ProtoIdsSection protoIds;
    private final Section[] sections;
    private final MixedItemSection stringData;
    private final StringIdsSection stringIds;
    private final TypeIdsSection typeIds;
    private final MixedItemSection typeLists;
    private final MixedItemSection wordData;

    /* renamed from: com.android.dx.dex.file.DexFile$Storage */
    /* loaded from: classes.dex */
    public static final class Storage {

        /* renamed from: a */
        public byte[] f3109a;

        public byte[] getStorage(int i) {
            if (this.f3109a.length < i) {
                Logger anonymousLogger = Logger.getAnonymousLogger();
                Level level = Level.FINER;
                anonymousLogger.log(level, "DexFile storage too small  " + this.f3109a.length + " vs " + i);
                this.f3109a = new byte[i];
            }
            return this.f3109a;
        }

        public Storage(byte[] bArr) {
            this.f3109a = bArr;
        }
    }

    public void add(ClassDefItem classDefItem) {
        this.classDefs.add(classDefItem);
    }

    /* renamed from: b */
    public MixedItemSection m24490b() {
        return this.byteData;
    }

    /* renamed from: c */
    public MixedItemSection m24489c() {
        return this.classData;
    }

    /* renamed from: d */
    public Section m24488d() {
        return this.wordData;
    }

    /* renamed from: e */
    public Section m24487e() {
        return this.map;
    }

    /* renamed from: f */
    public MixedItemSection m24486f() {
        return this.map;
    }

    /* renamed from: g */
    public ProtoIdsSection m24485g() {
        return this.protoIds;
    }

    public CallSiteIdsSection getCallSiteIds() {
        return this.callSiteIds;
    }

    public ClassDefsSection getClassDefs() {
        return this.classDefs;
    }

    public DexOptions getDexOptions() {
        return this.dexOptions;
    }

    public FieldIdsSection getFieldIds() {
        return this.fieldIds;
    }

    public MethodHandlesSection getMethodHandles() {
        return this.methodHandles;
    }

    public MethodIdsSection getMethodIds() {
        return this.methodIds;
    }

    public TypeIdsSection getTypeIds() {
        return this.typeIds;
    }

    /* renamed from: h */
    public MixedItemSection m24484h() {
        return this.stringData;
    }

    /* renamed from: i */
    public StringIdsSection m24483i() {
        return this.stringIds;
    }

    public boolean isEmpty() {
        return this.classDefs.items().isEmpty();
    }

    /* renamed from: j */
    public MixedItemSection m24482j() {
        return this.typeLists;
    }

    /* renamed from: k */
    public MixedItemSection m24481k() {
        return this.wordData;
    }

    public void writeTo(OutputStream outputStream, Writer writer, boolean z) {
        writeTo(outputStream, null, writer, z);
    }

    public DexFile(DexOptions dexOptions) {
        this.dexOptions = dexOptions;
        HeaderSection headerSection = new HeaderSection(this);
        this.header = headerSection;
        MixedItemSection.SortType sortType = MixedItemSection.SortType.NONE;
        MixedItemSection mixedItemSection = new MixedItemSection(null, this, 4, sortType);
        this.typeLists = mixedItemSection;
        MixedItemSection.SortType sortType2 = MixedItemSection.SortType.TYPE;
        MixedItemSection mixedItemSection2 = new MixedItemSection("word_data", this, 4, sortType2);
        this.wordData = mixedItemSection2;
        MixedItemSection mixedItemSection3 = new MixedItemSection("string_data", this, 1, MixedItemSection.SortType.INSTANCE);
        this.stringData = mixedItemSection3;
        MixedItemSection mixedItemSection4 = new MixedItemSection(null, this, 1, sortType);
        this.classData = mixedItemSection4;
        MixedItemSection mixedItemSection5 = new MixedItemSection("byte_data", this, 1, sortType2);
        this.byteData = mixedItemSection5;
        StringIdsSection stringIdsSection = new StringIdsSection(this);
        this.stringIds = stringIdsSection;
        TypeIdsSection typeIdsSection = new TypeIdsSection(this);
        this.typeIds = typeIdsSection;
        ProtoIdsSection protoIdsSection = new ProtoIdsSection(this);
        this.protoIds = protoIdsSection;
        FieldIdsSection fieldIdsSection = new FieldIdsSection(this);
        this.fieldIds = fieldIdsSection;
        MethodIdsSection methodIdsSection = new MethodIdsSection(this);
        this.methodIds = methodIdsSection;
        ClassDefsSection classDefsSection = new ClassDefsSection(this);
        this.classDefs = classDefsSection;
        MixedItemSection mixedItemSection6 = new MixedItemSection("map", this, 4, sortType);
        this.map = mixedItemSection6;
        if (dexOptions.apiIsSupported(26)) {
            CallSiteIdsSection callSiteIdsSection = new CallSiteIdsSection(this);
            this.callSiteIds = callSiteIdsSection;
            MethodHandlesSection methodHandlesSection = new MethodHandlesSection(this);
            this.methodHandles = methodHandlesSection;
            this.sections = new Section[]{headerSection, stringIdsSection, typeIdsSection, protoIdsSection, fieldIdsSection, methodIdsSection, classDefsSection, callSiteIdsSection, methodHandlesSection, mixedItemSection2, mixedItemSection, mixedItemSection3, mixedItemSection5, mixedItemSection4, mixedItemSection6};
        } else {
            this.callSiteIds = null;
            this.methodHandles = null;
            this.sections = new Section[]{headerSection, stringIdsSection, typeIdsSection, protoIdsSection, fieldIdsSection, methodIdsSection, classDefsSection, mixedItemSection2, mixedItemSection, mixedItemSection3, mixedItemSection5, mixedItemSection4, mixedItemSection6};
        }
        this.fileSize = -1;
        this.dumpWidth = 79;
    }

    private static void calcChecksum(byte[] bArr, int i) {
        Adler32 adler32 = new Adler32();
        adler32.update(bArr, 12, i - 12);
        int value = (int) adler32.getValue();
        bArr[8] = (byte) value;
        bArr[9] = (byte) (value >> 8);
        bArr[10] = (byte) (value >> 16);
        bArr[11] = (byte) (value >> 24);
    }

    private static void calcSignature(byte[] bArr, int i) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr, 32, i - 32);
            try {
                int digest = messageDigest.digest(bArr, 12, 20);
                if (digest == 20) {
                    return;
                }
                throw new RuntimeException("unexpected digest write: " + digest + " bytes");
            } catch (DigestException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    private C0435e toDex0(boolean z, boolean z2, Storage storage) {
        byte[] storage2;
        C4557d c4557d;
        this.classDefs.prepare();
        this.classData.prepare();
        this.wordData.prepare();
        if (this.dexOptions.apiIsSupported(26)) {
            this.callSiteIds.prepare();
        }
        this.byteData.prepare();
        if (this.dexOptions.apiIsSupported(26)) {
            this.methodHandles.prepare();
        }
        this.methodIds.prepare();
        this.fieldIds.prepare();
        this.protoIds.prepare();
        this.typeLists.prepare();
        this.typeIds.prepare();
        this.stringIds.prepare();
        this.stringData.prepare();
        this.header.prepare();
        int length = this.sections.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Section section = this.sections[i2];
            if ((section != this.callSiteIds && section != this.methodHandles) || !section.items().isEmpty()) {
                int fileOffset = section.setFileOffset(i);
                if (fileOffset >= i) {
                    try {
                        MixedItemSection mixedItemSection = this.map;
                        if (section == mixedItemSection) {
                            MapItem.addMap(this.sections, mixedItemSection);
                            this.map.prepare();
                        }
                        if (section instanceof MixedItemSection) {
                            ((MixedItemSection) section).placeItems();
                        }
                        i = section.writeSize() + fileOffset;
                    } catch (RuntimeException e) {
                        throw C4557d.m16010d(e, "...while writing section " + i2);
                    }
                } else {
                    throw new RuntimeException("bogus placement for section " + i2);
                }
            }
        }
        this.fileSize = i;
        if (storage == null) {
            storage2 = new byte[i];
        } else {
            storage2 = storage.getStorage(i);
        }
        C0435e c0435e = new C0435e(storage2);
        if (z) {
            c0435e.m26498m(this.dumpWidth, z2);
        }
        for (int i3 = 0; i3 < length; i3++) {
            try {
                Section section2 = this.sections[i3];
                if ((section2 != this.callSiteIds && section2 != this.methodHandles) || !section2.items().isEmpty()) {
                    int fileOffset2 = section2.getFileOffset() - c0435e.mo26446a();
                    if (fileOffset2 >= 0) {
                        c0435e.mo26445e(fileOffset2);
                        section2.writeTo(c0435e);
                    } else {
                        throw new C4557d("excess write of " + (-fileOffset2));
                    }
                }
            } catch (RuntimeException e2) {
                if (e2 instanceof C4557d) {
                    c4557d = (C4557d) e2;
                } else {
                    c4557d = new C4557d(e2);
                }
                c4557d.m16013a("...while writing section " + i3);
                throw c4557d;
            }
        }
        if (c0435e.mo26446a() == this.fileSize) {
            calcSignature(storage2, c0435e.mo26446a());
            calcChecksum(storage2, c0435e.mo26446a());
            if (z) {
                this.wordData.writeIndexAnnotation(c0435e, ItemType.TYPE_CODE_ITEM, "\nmethod code index:\n\n");
                getStatistics().writeAnnotation(c0435e);
                c0435e.m26496o();
            }
            return c0435e;
        }
        throw new RuntimeException("foreshortened write");
    }

    /* renamed from: a */
    public IndexedItem m24491a(AbstractC7204a abstractC7204a) {
        if (abstractC7204a instanceof C7212d0) {
            return this.stringIds.get(abstractC7204a);
        }
        if (abstractC7204a instanceof C7214e0) {
            return this.typeIds.get(abstractC7204a);
        }
        if (abstractC7204a instanceof AbstractC7213e) {
            return this.methodIds.get(abstractC7204a);
        }
        if (abstractC7204a instanceof C7226n) {
            return this.fieldIds.get(abstractC7204a);
        }
        if (abstractC7204a instanceof C7225m) {
            return this.fieldIds.intern(((C7225m) abstractC7204a).m2078x());
        }
        if (abstractC7204a instanceof C7207b0) {
            return this.protoIds.get(abstractC7204a);
        }
        if (abstractC7204a instanceof C7237y) {
            return this.methodHandles.get(abstractC7204a);
        }
        if (abstractC7204a instanceof C7222j) {
            return this.callSiteIds.get(abstractC7204a);
        }
        return null;
    }

    public int getFileSize() {
        int i = this.fileSize;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("file size not yet known");
    }

    public Statistics getStatistics() {
        Statistics statistics = new Statistics();
        for (Section section : this.sections) {
            statistics.addAll(section);
        }
        return statistics;
    }

    /* renamed from: l */
    public void m24480l(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            if (abstractC7204a instanceof C7212d0) {
                this.stringIds.intern((C7212d0) abstractC7204a);
                return;
            } else if (abstractC7204a instanceof C7214e0) {
                this.typeIds.intern((C7214e0) abstractC7204a);
                return;
            } else if (abstractC7204a instanceof AbstractC7213e) {
                this.methodIds.intern((AbstractC7213e) abstractC7204a);
                return;
            } else if (abstractC7204a instanceof C7226n) {
                this.fieldIds.intern((C7226n) abstractC7204a);
                return;
            } else if (abstractC7204a instanceof C7225m) {
                this.fieldIds.intern(((C7225m) abstractC7204a).m2078x());
                return;
            } else if (abstractC7204a instanceof C7207b0) {
                this.protoIds.intern(((C7207b0) abstractC7204a).m2126n());
                return;
            } else if (abstractC7204a instanceof C7237y) {
                this.methodHandles.intern((C7237y) abstractC7204a);
                return;
            } else {
                return;
            }
        }
        throw new NullPointerException("cst == null");
    }

    public void setDumpWidth(int i) {
        if (i >= 40) {
            this.dumpWidth = i;
            return;
        }
        throw new IllegalArgumentException("dumpWidth < 40");
    }

    public byte[] toDex(Writer writer, boolean z) {
        boolean z2;
        if (writer != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0435e dex0 = toDex0(z2, z, null);
        if (z2) {
            dex0.m26491t(writer);
        }
        return dex0.m26495p();
    }

    public void writeTo(OutputStream outputStream, Storage storage, Writer writer, boolean z) {
        boolean z2 = writer != null;
        C0435e dex0 = toDex0(z2, z, storage);
        if (outputStream != null) {
            outputStream.write(dex0.m26495p());
        }
        if (z2) {
            dex0.m26491t(writer);
        }
    }

    public ClassDefItem getClassOrNull(String str) {
        try {
            return (ClassDefItem) this.classDefs.get(new C7214e0(C7402c.m1542E(str)));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public C0435e writeTo(Storage storage) {
        return toDex0(false, false, storage);
    }
}
