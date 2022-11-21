package com.android.p030dx.dex.file;

import p015b2.C0438g;
import p015b2.InterfaceC0428a;
import p218x1.C7212d0;
/* renamed from: com.android.dx.dex.file.HeaderItem */
/* loaded from: classes.dex */
public final class HeaderItem extends IndexedItem {
    @Override // com.android.p030dx.dex.file.Item
    public void addContents(DexFile dexFile) {
    }

    @Override // com.android.p030dx.dex.file.Item
    public ItemType itemType() {
        return ItemType.TYPE_HEADER_ITEM;
    }

    @Override // com.android.p030dx.dex.file.Item
    public int writeSize() {
        return 112;
    }

    @Override // com.android.p030dx.dex.file.Item
    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        int fileOffset = dexFile.m24486f().getFileOffset();
        Section m24488d = dexFile.m24488d();
        Section m24487e = dexFile.m24487e();
        int fileOffset2 = m24488d.getFileOffset();
        int fileOffset3 = (m24487e.getFileOffset() + m24487e.writeSize()) - fileOffset2;
        String magic = dexFile.getDexOptions().getMagic();
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(8, "magic: " + new C7212d0(magic).m2116C());
            interfaceC0428a.mo26502d(4, "checksum");
            interfaceC0428a.mo26502d(20, "signature");
            interfaceC0428a.mo26502d(4, "file_size:       " + C0438g.m26475j(dexFile.getFileSize()));
            interfaceC0428a.mo26502d(4, "header_size:     " + C0438g.m26475j(112));
            interfaceC0428a.mo26502d(4, "endian_tag:      " + C0438g.m26475j(305419896));
            interfaceC0428a.mo26502d(4, "link_size:       0");
            interfaceC0428a.mo26502d(4, "link_off:        0");
            interfaceC0428a.mo26502d(4, "map_off:         " + C0438g.m26475j(fileOffset));
        }
        for (int i = 0; i < 8; i++) {
            interfaceC0428a.writeByte(magic.charAt(i));
        }
        interfaceC0428a.mo26445e(24);
        interfaceC0428a.writeInt(dexFile.getFileSize());
        interfaceC0428a.writeInt(112);
        interfaceC0428a.writeInt(305419896);
        interfaceC0428a.mo26445e(8);
        interfaceC0428a.writeInt(fileOffset);
        dexFile.m24483i().writeHeaderPart(interfaceC0428a);
        dexFile.getTypeIds().writeHeaderPart(interfaceC0428a);
        dexFile.m24485g().writeHeaderPart(interfaceC0428a);
        dexFile.getFieldIds().writeHeaderPart(interfaceC0428a);
        dexFile.getMethodIds().writeHeaderPart(interfaceC0428a);
        dexFile.getClassDefs().writeHeaderPart(interfaceC0428a);
        if (interfaceC0428a.mo26499j()) {
            interfaceC0428a.mo26502d(4, "data_size:       " + C0438g.m26475j(fileOffset3));
            interfaceC0428a.mo26502d(4, "data_off:        " + C0438g.m26475j(fileOffset2));
        }
        interfaceC0428a.writeInt(fileOffset3);
        interfaceC0428a.writeInt(fileOffset2);
    }
}
