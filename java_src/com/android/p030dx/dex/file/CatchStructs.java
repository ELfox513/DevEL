package com.android.p030dx.dex.file;

import com.android.p030dx.dex.code.CatchHandlerList;
import com.android.p030dx.dex.code.CatchTable;
import com.android.p030dx.dex.code.DalvCode;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;
import p015b2.C0435e;
import p015b2.C0438g;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.file.CatchStructs */
/* loaded from: classes.dex */
public final class CatchStructs {
    private static final int TRY_ITEM_WRITE_SIZE = 8;
    private final DalvCode code;
    private CatchTable table = null;
    private byte[] encodedHandlers = null;
    private int encodedHandlerHeaderSize = 0;
    private TreeMap<CatchHandlerList, Integer> handlerOffsets = null;

    private void annotateEntries(String str, PrintWriter printWriter, InterfaceC0428a interfaceC0428a) {
        boolean z;
        int i;
        int i2;
        CatchTable.Entry entry;
        finishProcessingIfNecessary();
        int i3 = 0;
        if (interfaceC0428a != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i = 6;
        } else {
            i = 0;
        }
        if (z) {
            i2 = 2;
        } else {
            i2 = 0;
        }
        int size = this.table.size();
        String str2 = str + "  ";
        if (z) {
            interfaceC0428a.mo26502d(0, str + "tries:");
        } else {
            printWriter.println(str + "tries:");
        }
        for (int i4 = 0; i4 < size; i4++) {
            CatchHandlerList handlers = this.table.get(i4).getHandlers();
            String str3 = str2 + "try " + C0438g.m26477h(entry.getStart()) + ".." + C0438g.m26477h(entry.getEnd());
            String human = handlers.toHuman(str2, "");
            if (z) {
                interfaceC0428a.mo26502d(i, str3);
                interfaceC0428a.mo26502d(i2, human);
            } else {
                printWriter.println(str3);
                printWriter.println(human);
            }
        }
        if (!z) {
            return;
        }
        interfaceC0428a.mo26502d(0, str + "handlers:");
        interfaceC0428a.mo26502d(this.encodedHandlerHeaderSize, str2 + "size: " + C0438g.m26478g(this.handlerOffsets.size()));
        CatchHandlerList catchHandlerList = null;
        for (Map.Entry<CatchHandlerList, Integer> entry2 : this.handlerOffsets.entrySet()) {
            CatchHandlerList key = entry2.getKey();
            int intValue = entry2.getValue().intValue();
            if (catchHandlerList != null) {
                annotateAndConsumeHandlers(catchHandlerList, i3, intValue - i3, str2, printWriter, interfaceC0428a);
            }
            catchHandlerList = key;
            i3 = intValue;
        }
        annotateAndConsumeHandlers(catchHandlerList, i3, this.encodedHandlers.length - i3, str2, printWriter, interfaceC0428a);
    }

    public void debugPrint(PrintWriter printWriter, String str) {
        annotateEntries(str, printWriter, null);
    }

    public int writeSize() {
        return (triesSize() * 8) + this.encodedHandlers.length;
    }

    private static void annotateAndConsumeHandlers(CatchHandlerList catchHandlerList, int i, int i2, String str, PrintWriter printWriter, InterfaceC0428a interfaceC0428a) {
        String human = catchHandlerList.toHuman(str, C0438g.m26478g(i) + ": ");
        if (printWriter != null) {
            printWriter.println(human);
        }
        interfaceC0428a.mo26502d(i2, human);
    }

    private void finishProcessingIfNecessary() {
        if (this.table == null) {
            this.table = this.code.getCatches();
        }
    }

    public CatchStructs(DalvCode dalvCode) {
        this.code = dalvCode;
    }

    public void encode(DexFile dexFile) {
        finishProcessingIfNecessary();
        TypeIdsSection typeIds = dexFile.getTypeIds();
        int size = this.table.size();
        this.handlerOffsets = new TreeMap<>();
        for (int i = 0; i < size; i++) {
            this.handlerOffsets.put(this.table.get(i).getHandlers(), null);
        }
        if (this.handlerOffsets.size() <= 65535) {
            C0435e c0435e = new C0435e();
            this.encodedHandlerHeaderSize = c0435e.mo26443h(this.handlerOffsets.size());
            for (Map.Entry<CatchHandlerList, Integer> entry : this.handlerOffsets.entrySet()) {
                CatchHandlerList key = entry.getKey();
                int size2 = key.size();
                boolean catchesAll = key.catchesAll();
                entry.setValue(Integer.valueOf(c0435e.mo26446a()));
                if (catchesAll) {
                    c0435e.m26490u(-(size2 - 1));
                    size2--;
                } else {
                    c0435e.m26490u(size2);
                }
                for (int i2 = 0; i2 < size2; i2++) {
                    CatchHandlerList.Entry entry2 = key.get(i2);
                    c0435e.mo26443h(typeIds.indexOf(entry2.getExceptionType()));
                    c0435e.mo26443h(entry2.getHandler());
                }
                if (catchesAll) {
                    c0435e.mo26443h(key.get(size2).getHandler());
                }
            }
            this.encodedHandlers = c0435e.m26493r();
            return;
        }
        throw new UnsupportedOperationException("too many catch handlers");
    }

    public int triesSize() {
        finishProcessingIfNecessary();
        return this.table.size();
    }

    public void writeTo(DexFile dexFile, InterfaceC0428a interfaceC0428a) {
        finishProcessingIfNecessary();
        if (interfaceC0428a.mo26499j()) {
            annotateEntries("  ", null, interfaceC0428a);
        }
        int size = this.table.size();
        for (int i = 0; i < size; i++) {
            CatchTable.Entry entry = this.table.get(i);
            int start = entry.getStart();
            int end = entry.getEnd();
            int i2 = end - start;
            if (i2 < 65536) {
                interfaceC0428a.writeInt(start);
                interfaceC0428a.writeShort(i2);
                interfaceC0428a.writeShort(this.handlerOffsets.get(entry.getHandlers()).intValue());
            } else {
                throw new UnsupportedOperationException("bogus exception range: " + C0438g.m26475j(start) + ".." + C0438g.m26475j(end));
            }
        }
        interfaceC0428a.write(this.encodedHandlers);
    }
}
