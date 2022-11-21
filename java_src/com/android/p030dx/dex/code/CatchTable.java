package com.android.p030dx.dex.code;

import p015b2.C0437f;
/* renamed from: com.android.dx.dex.code.CatchTable */
/* loaded from: classes.dex */
public final class CatchTable extends C0437f implements Comparable<CatchTable> {
    public static final CatchTable EMPTY = new CatchTable(0);

    /* renamed from: com.android.dx.dex.code.CatchTable$Entry */
    /* loaded from: classes.dex */
    public static class Entry implements Comparable<Entry> {
        private final int end;
        private final CatchHandlerList handlers;
        private final int start;

        public int getEnd() {
            return this.end;
        }

        public CatchHandlerList getHandlers() {
            return this.handlers;
        }

        public int getStart() {
            return this.start;
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i = this.start;
            int i2 = entry.start;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i3 = this.end;
            int i4 = entry.end;
            if (i3 < i4) {
                return -1;
            }
            if (i3 > i4) {
                return 1;
            }
            return this.handlers.compareTo(entry.handlers);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry) || compareTo((Entry) obj) != 0) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.start * 31) + this.end) * 31) + this.handlers.hashCode();
        }

        public Entry(int i, int i2, CatchHandlerList catchHandlerList) {
            if (i >= 0) {
                if (i2 > i) {
                    if (!catchHandlerList.isMutable()) {
                        this.start = i;
                        this.end = i2;
                        this.handlers = catchHandlerList;
                        return;
                    }
                    throw new IllegalArgumentException("handlers.isMutable()");
                }
                throw new IllegalArgumentException("end <= start");
            }
            throw new IllegalArgumentException("start < 0");
        }
    }

    public CatchTable(int i) {
        super(i);
    }

    public Entry get(int i) {
        return (Entry) get0(i);
    }

    public void set(int i, Entry entry) {
        set0(i, entry);
    }

    @Override // java.lang.Comparable
    public int compareTo(CatchTable catchTable) {
        if (this == catchTable) {
            return 0;
        }
        int size = size();
        int size2 = catchTable.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int compareTo = get(i).compareTo(catchTable.get(i));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }
}
