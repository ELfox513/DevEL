package com.android.p030dx.dex.code;

import p015b2.C0437f;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.PositionList */
/* loaded from: classes.dex */
public final class PositionList extends C0437f {
    public static final PositionList EMPTY = new PositionList(0);
    public static final int IMPORTANT = 3;
    public static final int LINES = 2;
    public static final int NONE = 1;

    public PositionList(int i) {
        super(i);
    }

    public static PositionList make(DalvInsnList dalvInsnList, int i) {
        if (i != 1) {
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException("bogus howMuch");
            }
            C7167w c7167w = C7167w.f36439d;
            int size = dalvInsnList.size();
            Entry[] entryArr = new Entry[size];
            C7167w c7167w2 = c7167w;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < size; i3++) {
                DalvInsn dalvInsn = dalvInsnList.get(i3);
                if (dalvInsn instanceof CodeAddress) {
                    z = true;
                } else {
                    C7167w position = dalvInsn.getPosition();
                    if (!position.equals(c7167w) && !position.m2254b(c7167w2) && (i != 3 || z)) {
                        entryArr[i2] = new Entry(dalvInsn.getAddress(), position);
                        i2++;
                        c7167w2 = position;
                        z = false;
                    }
                }
            }
            PositionList positionList = new PositionList(i2);
            for (int i4 = 0; i4 < i2; i4++) {
                positionList.set(i4, entryArr[i4]);
            }
            positionList.setImmutable();
            return positionList;
        }
        return EMPTY;
    }

    public Entry get(int i) {
        return (Entry) get0(i);
    }

    public void set(int i, Entry entry) {
        set0(i, entry);
    }

    /* renamed from: com.android.dx.dex.code.PositionList$Entry */
    /* loaded from: classes.dex */
    public static class Entry {
        private final int address;
        private final C7167w position;

        public int getAddress() {
            return this.address;
        }

        public C7167w getPosition() {
            return this.position;
        }

        public Entry(int i, C7167w c7167w) {
            if (i >= 0) {
                if (c7167w != null) {
                    this.address = i;
                    this.position = c7167w;
                    return;
                }
                throw new NullPointerException("position == null");
            }
            throw new IllegalArgumentException("address < 0");
        }
    }
}
