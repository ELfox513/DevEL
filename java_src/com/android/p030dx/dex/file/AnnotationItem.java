package com.android.p030dx.dex.file;

import java.util.Arrays;
import java.util.Comparator;
import p015b2.C0435e;
import p015b2.InterfaceC0428a;
import p201v1.C6969a;
import p201v1.C6973e;
import p201v1.EnumC6970b;
import p218x1.AbstractC7204a;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.file.AnnotationItem */
/* loaded from: classes.dex */
public final class AnnotationItem extends OffsettedItem {
    private static final int ALIGNMENT = 1;
    private static final TypeIdSorter TYPE_ID_SORTER = new TypeIdSorter(null);
    private static final int VISIBILITY_BUILD = 0;
    private static final int VISIBILITY_RUNTIME = 1;
    private static final int VISIBILITY_SYSTEM = 2;
    private final C6969a annotation;
    private byte[] encodedForm;
    private TypeIdItem type;

    /* renamed from: com.android.dx.dex.file.AnnotationItem$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C11061 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3102a;

        static {
            int[] iArr = new int[EnumC6970b.values().length];
            f3102a = iArr;
            try {
                iArr[EnumC6970b.BUILD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3102a[EnumC6970b.RUNTIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3102a[EnumC6970b.SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.android.dx.dex.file.AnnotationItem$TypeIdSorter */
    /* loaded from: classes.dex */
    public static class TypeIdSorter implements Comparator<AnnotationItem> {
        private TypeIdSorter() {
        }

        public /* synthetic */ TypeIdSorter(C11061 c11061) {
            this();
        }

        @Override // java.util.Comparator
        public int compare(AnnotationItem annotationItem, AnnotationItem annotationItem2) {
            int index = annotationItem.type.getIndex();
            int index2 = annotationItem2.type.getIndex();
            if (index < index2) {
                return -1;
            }
            return index > index2 ? 1 : 0;
        }
    }

    public AnnotationItem(C6969a c6969a, DexFile dexFile) {
        super(1, -1);
        if (c6969a != null) {
            this.annotation = c6969a;
            this.type = null;
            this.encodedForm = null;
            addContents(dexFile);
            return;
        }
        throw new NullPointerException("annotation == null");
    }

    public static void sortByTypeIdIndex(AnnotationItem[] annotationItemArr) {
        Arrays.sort(annotationItemArr, TYPE_ID_SORTER);
    }

    public int hashCode() {
        return this.annotation.hashCode();
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_ANNOTATION_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return this.annotation.toHuman();
    }

    public void annotateTo(InterfaceC0428a interfaceC0428a, String str) {
        interfaceC0428a.mo26502d(0, str + "visibility: " + this.annotation.m2833C().toHuman());
        interfaceC0428a.mo26502d(0, str + "type: " + this.annotation.m2834B().toHuman());
        for (C6973e c6973e : this.annotation.m2835A()) {
            C7212d0 m2819d = c6973e.m2819d();
            AbstractC7204a m2818f = c6973e.m2818f();
            interfaceC0428a.mo26502d(0, str + m2819d.toHuman() + ": " + ValueEncoder.constantToHuman(m2818f));
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public int compareTo0(OffsettedItem offsettedItem) {
        return this.annotation.compareTo(((AnnotationItem) offsettedItem).annotation);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        C0435e c0435e = new C0435e();
        new ValueEncoder(section.getFile(), c0435e).writeAnnotation(this.annotation, false);
        byte[] m26493r = c0435e.m26493r();
        this.encodedForm = m26493r;
        setWriteSize(m26493r.length + 1);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        this.type = dexFile.getTypeIds().intern(this.annotation.m2834B());
        ValueEncoder.addContents(dexFile, this.annotation);
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        boolean mo26499j = interfaceC0428a.mo26499j();
        EnumC6970b m2833C = this.annotation.m2833C();
        if (mo26499j) {
            interfaceC0428a.mo26502d(0, offsetString() + " annotation");
            interfaceC0428a.mo26502d(1, "  visibility: VISBILITY_" + m2833C);
        }
        int i = C11061.f3102a[m2833C.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    interfaceC0428a.writeByte(2);
                } else {
                    throw new RuntimeException("shouldn't happen");
                }
            } else {
                interfaceC0428a.writeByte(1);
            }
        } else {
            interfaceC0428a.writeByte(0);
        }
        if (mo26499j) {
            new ValueEncoder(dexFile, interfaceC0428a).writeAnnotation(this.annotation, true);
        } else {
            interfaceC0428a.write(this.encodedForm);
        }
    }
}
