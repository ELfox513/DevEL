package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.C7212d0;
import p226y1.C7400a;
import p226y1.C7401b;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.file.ProtoIdItem */
/* loaded from: classes.dex */
public final class ProtoIdItem extends IndexedItem {
    private TypeListItem parameterTypes;
    private final C7400a prototype;
    private final C7212d0 shortForm;

    private static char shortFormCharFor(C7402c c7402c) {
        char charAt = c7402c.m1524z().charAt(0);
        if (charAt == '[') {
            return 'L';
        }
        return charAt;
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_PROTO_ID_ITEM;
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 12;
    }

    public ProtoIdItem(C7400a c7400a) {
        TypeListItem typeListItem;
        if (c7400a != null) {
            this.prototype = c7400a;
            this.shortForm = makeShortForm(c7400a);
            C7401b m1565l = c7400a.m1565l();
            if (m1565l.size() == 0) {
                typeListItem = null;
            } else {
                typeListItem = new TypeListItem(m1565l);
            }
            this.parameterTypes = typeListItem;
            return;
        }
        throw new NullPointerException("prototype == null");
    }

    private static C7212d0 makeShortForm(C7400a c7400a) {
        C7401b m1565l = c7400a.m1565l();
        int size = m1565l.size();
        StringBuilder sb = new StringBuilder(size + 1);
        sb.append(shortFormCharFor(c7400a.m1564n()));
        for (int i = 0; i < size; i++) {
            sb.append(shortFormCharFor(m1565l.getType(i)));
        }
        return new C7212d0(sb.toString());
    }

    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
        StringIdsSection m24483i = dexFile.m24483i();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        MixedItemSection m24482j = dexFile.m24482j();
        typeIds.intern(this.prototype.m1564n());
        m24483i.intern(this.shortForm);
        TypeListItem typeListItem = this.parameterTypes;
        if (typeListItem != null) {
            this.parameterTypes = (TypeListItem) m24482j.intern(typeListItem);
        }
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int indexOf = dexFile.m24483i().indexOf(this.shortForm);
        int indexOf2 = dexFile.getTypeIds().indexOf(this.prototype.m1564n());
        int absoluteOffsetOr0 = OffsettedItem.getAbsoluteOffsetOr0(this.parameterTypes);
        if (interfaceC0428a.mo26499j()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.prototype.m1564n().toHuman());
            sb.append(" proto(");
            C7401b m1565l = this.prototype.m1565l();
            int size = m1565l.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(m1565l.getType(i).toHuman());
            }
            sb.append(")");
            interfaceC0428a.mo26502d(0, indexString() + ' ' + sb.toString());
            interfaceC0428a.mo26502d(4, "  shorty_idx:      " + C0438g.m26475j(indexOf) + " // " + this.shortForm.m2116C());
            interfaceC0428a.mo26502d(4, "  return_type_idx: " + C0438g.m26475j(indexOf2) + " // " + this.prototype.m1564n().toHuman());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  parameters_off:  ");
            sb2.append(C0438g.m26475j(absoluteOffsetOr0));
            interfaceC0428a.mo26502d(4, sb2.toString());
        }
        interfaceC0428a.writeInt(indexOf);
        interfaceC0428a.writeInt(indexOf2);
        interfaceC0428a.writeInt(absoluteOffsetOr0);
    }
}
