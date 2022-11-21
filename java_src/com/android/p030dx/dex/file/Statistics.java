package com.android.p030dx.dex.file;

import java.util.HashMap;
import java.util.TreeMap;
import p015b2.InterfaceC0428a;
import p168r4.C6226s;
/* renamed from: com.android.dx.dex.file.Statistics */
/* loaded from: classes.dex */
public final class Statistics {
    private final HashMap<String, Data> dataMap = new HashMap<>(50);

    /* renamed from: com.android.dx.dex.file.Statistics$Data */
    /* loaded from: classes.dex */
    public static class Data {
        private int count;
        private int largestSize;
        private final String name;
        private int smallestSize;
        private int totalSize;

        public void writeAnnotation(InterfaceC0428a interfaceC0428a) {
            interfaceC0428a.mo26504b(toHuman());
        }

        public String toHuman() {
            String str;
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  ");
            sb2.append(this.name);
            sb2.append(": ");
            sb2.append(this.count);
            sb2.append(" item");
            if (this.count == 1) {
                str = "";
            } else {
                str = C6226s.f31189J;
            }
            sb2.append(str);
            sb2.append("; ");
            sb2.append(this.totalSize);
            sb2.append(" bytes total\n");
            sb.append(sb2.toString());
            if (this.smallestSize == this.largestSize) {
                sb.append("    " + this.smallestSize + " bytes/item\n");
            } else {
                int i = this.totalSize / this.count;
                sb.append("    " + this.smallestSize + ".." + this.largestSize + " bytes/item; average " + i + "\n");
            }
            return sb.toString();
        }

        public Data(Item item, String str) {
            int writeSize = item.writeSize();
            this.name = str;
            this.count = 1;
            this.totalSize = writeSize;
            this.largestSize = writeSize;
            this.smallestSize = writeSize;
        }

        public void add(Item item) {
            int writeSize = item.writeSize();
            this.count++;
            this.totalSize += writeSize;
            if (writeSize > this.largestSize) {
                this.largestSize = writeSize;
            }
            if (writeSize < this.smallestSize) {
                this.smallestSize = writeSize;
            }
        }
    }

    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append("Statistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        for (Data data2 : treeMap.values()) {
            sb.append(data2.toHuman());
        }
        return sb.toString();
    }

    public final void writeAnnotation(InterfaceC0428a interfaceC0428a) {
        if (this.dataMap.size() == 0) {
            return;
        }
        interfaceC0428a.mo26502d(0, "\nstatistics:\n");
        TreeMap treeMap = new TreeMap();
        for (Data data : this.dataMap.values()) {
            treeMap.put(data.name, data);
        }
        for (Data data2 : treeMap.values()) {
            data2.writeAnnotation(interfaceC0428a);
        }
    }

    public void add(Item item) {
        String typeName = item.typeName();
        Data data = this.dataMap.get(typeName);
        if (data == null) {
            this.dataMap.put(typeName, new Data(item, typeName));
        } else {
            data.add(item);
        }
    }

    public void addAll(Section section) {
        for (Item item : section.items()) {
            add(item);
        }
    }
}
