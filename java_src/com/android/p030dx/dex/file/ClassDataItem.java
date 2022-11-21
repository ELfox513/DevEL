package com.android.p030dx.dex.file;

import java.io.PrintWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import p015b2.C0435e;
import p015b2.C0453u;
import p015b2.InterfaceC0428a;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7234v;
import p218x1.C7210d;
import p218x1.C7214e0;
import p218x1.C7220h0;
/* renamed from: com.android.dx.dex.file.ClassDataItem */
/* loaded from: classes.dex */
public final class ClassDataItem extends OffsettedItem {
    private final ArrayList<EncodedMethod> directMethods;
    private byte[] encodedForm;
    private final ArrayList<EncodedField> instanceFields;
    private final ArrayList<EncodedField> staticFields;
    private final HashMap<EncodedField, AbstractC7204a> staticValues;
    private C7210d staticValuesConstant;
    private final C7214e0 thisClass;
    private final ArrayList<EncodedMethod> virtualMethods;

    public ClassDataItem(C7214e0 c7214e0) {
        super(1, -1);
        if (c7214e0 != null) {
            this.thisClass = c7214e0;
            this.staticFields = new ArrayList<>(20);
            this.staticValues = new HashMap<>(40);
            this.instanceFields = new ArrayList<>(20);
            this.directMethods = new ArrayList<>(20);
            this.virtualMethods = new ArrayList<>(20);
            this.staticValuesConstant = null;
            return;
        }
        throw new NullPointerException("thisClass == null");
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_CLASS_DATA_ITEM;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public String toHuman() {
        return toString();
    }

    private C7210d makeStaticValuesConstant() {
        Collections.sort(this.staticFields);
        int size = this.staticFields.size();
        while (size > 0) {
            AbstractC7204a abstractC7204a = this.staticValues.get(this.staticFields.get(size - 1));
            if (abstractC7204a instanceof AbstractC7234v) {
                if (((AbstractC7234v) abstractC7204a).mo2061A() != 0) {
                    break;
                }
                size--;
            } else if (abstractC7204a != null) {
                break;
            } else {
                size--;
            }
        }
        if (size == 0) {
            return null;
        }
        C7210d.C7211a c7211a = new C7210d.C7211a(size);
        for (int i = 0; i < size; i++) {
            EncodedField encodedField = this.staticFields.get(i);
            AbstractC7204a abstractC7204a2 = this.staticValues.get(encodedField);
            if (abstractC7204a2 == null) {
                abstractC7204a2 = C7220h0.m2086a(encodedField.getRef().getType());
            }
            c7211a.m2119z(i, abstractC7204a2);
        }
        c7211a.setImmutable();
        return new C7210d(c7211a);
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        if (!this.staticFields.isEmpty()) {
            getStaticValuesConstant();
            Iterator<EncodedField> it = this.staticFields.iterator();
            while (it.hasNext()) {
                it.next().addContents(dexFile);
            }
        }
        if (!this.instanceFields.isEmpty()) {
            Collections.sort(this.instanceFields);
            Iterator<EncodedField> it2 = this.instanceFields.iterator();
            while (it2.hasNext()) {
                it2.next().addContents(dexFile);
            }
        }
        if (!this.directMethods.isEmpty()) {
            Collections.sort(this.directMethods);
            Iterator<EncodedMethod> it3 = this.directMethods.iterator();
            while (it3.hasNext()) {
                it3.next().addContents(dexFile);
            }
        }
        if (!this.virtualMethods.isEmpty()) {
            Collections.sort(this.virtualMethods);
            Iterator<EncodedMethod> it4 = this.virtualMethods.iterator();
            while (it4.hasNext()) {
                it4.next().addContents(dexFile);
            }
        }
    }

    public void addDirectMethod(EncodedMethod encodedMethod) {
        if (encodedMethod != null) {
            this.directMethods.add(encodedMethod);
            return;
        }
        throw new NullPointerException("method == null");
    }

    public void addInstanceField(EncodedField encodedField) {
        if (encodedField != null) {
            this.instanceFields.add(encodedField);
            return;
        }
        throw new NullPointerException("field == null");
    }

    public void addStaticField(EncodedField encodedField, AbstractC7204a abstractC7204a) {
        if (encodedField != null) {
            if (this.staticValuesConstant == null) {
                this.staticFields.add(encodedField);
                this.staticValues.put(encodedField, abstractC7204a);
                return;
            }
            throw new UnsupportedOperationException("static fields already sorted");
        }
        throw new NullPointerException("field == null");
    }

    public void addVirtualMethod(EncodedMethod encodedMethod) {
        if (encodedMethod != null) {
            this.virtualMethods.add(encodedMethod);
            return;
        }
        throw new NullPointerException("method == null");
    }

    public ArrayList<EncodedMethod> getMethods() {
        ArrayList<EncodedMethod> arrayList = new ArrayList<>(this.directMethods.size() + this.virtualMethods.size());
        arrayList.addAll(this.directMethods);
        arrayList.addAll(this.virtualMethods);
        return arrayList;
    }

    public C7210d getStaticValuesConstant() {
        if (this.staticValuesConstant == null && this.staticFields.size() != 0) {
            this.staticValuesConstant = makeStaticValuesConstant();
        }
        return this.staticValuesConstant;
    }

    public boolean isEmpty() {
        if (this.staticFields.isEmpty() && this.instanceFields.isEmpty() && this.directMethods.isEmpty() && this.virtualMethods.isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void place0(Section section, int i) {
        C0435e c0435e = new C0435e();
        encodeOutput(section.getFile(), c0435e);
        byte[] m26493r = c0435e.m26493r();
        this.encodedForm = m26493r;
        setWriteSize(m26493r.length);
    }

    private static void encodeList(DexFile dexFile, InterfaceC0428a interfaceC0428a, String str, ArrayList<? extends EncodedMember> arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(0, "  " + str + ":");
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i = arrayList.get(i2).encode(dexFile, interfaceC0428a, i, i2);
        }
    }

    private void encodeOutput(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        boolean mo26499j = interfaceC0428a.mo26499j();
        if (mo26499j) {
            interfaceC0428a.mo26502d(0, offsetString() + " class data for " + this.thisClass.toHuman());
        }
        encodeSize(dexFile, interfaceC0428a, "static_fields", this.staticFields.size());
        encodeSize(dexFile, interfaceC0428a, "instance_fields", this.instanceFields.size());
        encodeSize(dexFile, interfaceC0428a, "direct_methods", this.directMethods.size());
        encodeSize(dexFile, interfaceC0428a, "virtual_methods", this.virtualMethods.size());
        encodeList(dexFile, interfaceC0428a, "static_fields", this.staticFields);
        encodeList(dexFile, interfaceC0428a, "instance_fields", this.instanceFields);
        encodeList(dexFile, interfaceC0428a, "direct_methods", this.directMethods);
        encodeList(dexFile, interfaceC0428a, "virtual_methods", this.virtualMethods);
        if (mo26499j) {
            interfaceC0428a.mo26500i();
        }
    }

    private static void encodeSize(DexFile dexFile, InterfaceC0428a interfaceC0428a, String str, int i) {
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26504b(String.format("  %-21s %08x", str + "_size:", Integer.valueOf(i)));
        }
        interfaceC0428a.mo26443h(i);
    }

    public void debugPrint(Writer writer, boolean z) {
        PrintWriter m26431a = C0453u.m26431a(writer);
        int size = this.staticFields.size();
        for (int i = 0; i < size; i++) {
            m26431a.println("  sfields[" + i + "]: " + this.staticFields.get(i));
        }
        int size2 = this.instanceFields.size();
        for (int i2 = 0; i2 < size2; i2++) {
            m26431a.println("  ifields[" + i2 + "]: " + this.instanceFields.get(i2));
        }
        int size3 = this.directMethods.size();
        for (int i3 = 0; i3 < size3; i3++) {
            m26431a.println("  dmeths[" + i3 + "]:");
            this.directMethods.get(i3).debugPrint(m26431a, z);
        }
        int size4 = this.virtualMethods.size();
        for (int i4 = 0; i4 < size4; i4++) {
            m26431a.println("  vmeths[" + i4 + "]:");
            this.virtualMethods.get(i4).debugPrint(m26431a, z);
        }
    }

    @Override // com.android.p030dx.dex.file.OffsettedItem
    public void writeTo0(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        if (interfaceC0428a.mo26499j()) {
            encodeOutput(dexFile, interfaceC0428a);
        } else {
            interfaceC0428a.write(this.encodedForm);
        }
    }
}
