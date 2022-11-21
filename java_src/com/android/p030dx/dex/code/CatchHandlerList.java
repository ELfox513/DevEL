package com.android.p030dx.dex.code;

import p015b2.C0437f;
import p015b2.C0438g;
import p218x1.C7214e0;
/* renamed from: com.android.dx.dex.code.CatchHandlerList */
/* loaded from: classes.dex */
public final class CatchHandlerList extends C0437f implements Comparable<CatchHandlerList> {
    public static final CatchHandlerList EMPTY = new CatchHandlerList(0);

    /* renamed from: com.android.dx.dex.code.CatchHandlerList$Entry */
    /* loaded from: classes.dex */
    public static class Entry implements Comparable<Entry> {
        private final C7214e0 exceptionType;
        private final int handler;

        public C7214e0 getExceptionType() {
            return this.exceptionType;
        }

        public int getHandler() {
            return this.handler;
        }

        public int hashCode() {
            return (this.handler * 31) + this.exceptionType.hashCode();
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i = this.handler;
            int i2 = entry.handler;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            return this.exceptionType.compareTo(entry.exceptionType);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry) || compareTo((Entry) obj) != 0) {
                return false;
            }
            return true;
        }

        public Entry(C7214e0 c7214e0, int i) {
            if (i >= 0) {
                if (c7214e0 != null) {
                    this.handler = i;
                    this.exceptionType = c7214e0;
                    return;
                }
                throw new NullPointerException("exceptionType == null");
            }
            throw new IllegalArgumentException("handler < 0");
        }
    }

    public CatchHandlerList(int i) {
        super(i);
    }

    public Entry get(int i) {
        return (Entry) get0(i);
    }

    public void set(int i, C7214e0 c7214e0, int i2) {
        set0(i, new Entry(c7214e0, i2));
    }

    @Override // p015b2.C0437f, p015b2.InterfaceC0450r
    public String toHuman() {
        return toHuman("", "");
    }

    @Override // java.lang.Comparable
    public int compareTo(CatchHandlerList catchHandlerList) {
        if (this == catchHandlerList) {
            return 0;
        }
        int size = size();
        int size2 = catchHandlerList.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int compareTo = get(i).compareTo(catchHandlerList.get(i));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        if (size < size2) {
            return -1;
        }
        return size > size2 ? 1 : 0;
    }

    public void set(int i, Entry entry) {
        set0(i, entry);
    }

    public String toHuman(String str, String str2) {
        StringBuilder sb = new StringBuilder(100);
        int size = size();
        sb.append(str);
        sb.append(str2);
        sb.append("catch ");
        for (int i = 0; i < size; i++) {
            Entry entry = get(i);
            if (i != 0) {
                sb.append(",\n");
                sb.append(str);
                sb.append("  ");
            }
            if (i == size - 1 && catchesAll()) {
                sb.append("<any>");
            } else {
                sb.append(entry.getExceptionType().toHuman());
            }
            sb.append(" -> ");
            sb.append(C0438g.m26477h(entry.getHandler()));
        }
        return sb.toString();
    }

    public boolean catchesAll() {
        int size = size();
        if (size == 0) {
            return false;
        }
        return get(size - 1).getExceptionType().equals(C7214e0.f36571k);
    }
}
