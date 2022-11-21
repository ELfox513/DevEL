package com.android.p030dx.dex.file;

import java.util.Collection;
import p015b2.InterfaceC0428a;
/* renamed from: com.android.dx.dex.file.Section */
/* loaded from: classes.dex */
public abstract class Section {
    private final int alignment;
    private final DexFile file;
    private int fileOffset;
    private final String name;
    private boolean prepared;

    public static void validateAlignment(int i) {
        if (i <= 0 || (i & (i - 1)) != 0) {
            throw new IllegalArgumentException("invalid alignment");
        }
    }

    public final void align(InterfaceC0428a interfaceC0428a) {
        interfaceC0428a.mo26441l(this.alignment);
    }

    public abstract int getAbsoluteItemOffset(Item item);

    public final int getAlignment() {
        return this.alignment;
    }

    public final DexFile getFile() {
        return this.file;
    }

    public final String getName() {
        return this.name;
    }

    public abstract Collection<? extends Item> items();

    public abstract void prepare0();

    public abstract int writeSize();

    public abstract void writeTo0(InterfaceC0428a interfaceC0428a);

    public final int getAbsoluteOffset(int i) {
        if (i >= 0) {
            int i2 = this.fileOffset;
            if (i2 >= 0) {
                return i2 + i;
            }
            throw new RuntimeException("fileOffset not yet set");
        }
        throw new IllegalArgumentException("relative < 0");
    }

    public final int getFileOffset() {
        int i = this.fileOffset;
        if (i >= 0) {
            return i;
        }
        throw new RuntimeException("fileOffset not set");
    }

    public final int setFileOffset(int i) {
        if (i >= 0) {
            if (this.fileOffset < 0) {
                int i2 = this.alignment - 1;
                int i3 = (i + i2) & (i2 ^ (-1));
                this.fileOffset = i3;
                return i3;
            }
            throw new RuntimeException("fileOffset already set");
        }
        throw new IllegalArgumentException("fileOffset < 0");
    }

    public final void throwIfNotPrepared() {
        if (this.prepared) {
            return;
        }
        throw new RuntimeException("not prepared");
    }

    public final void throwIfPrepared() {
        if (!this.prepared) {
            return;
        }
        throw new RuntimeException("already prepared");
    }

    public Section(String str, DexFile dexFile, int i) {
        if (dexFile != null) {
            validateAlignment(i);
            this.name = str;
            this.file = dexFile;
            this.alignment = i;
            this.fileOffset = -1;
            this.prepared = false;
            return;
        }
        throw new NullPointerException("file == null");
    }

    public final void prepare() {
        throwIfPrepared();
        prepare0();
        this.prepared = true;
    }

    public final void writeTo(InterfaceC0428a interfaceC0428a) {
        throwIfNotPrepared();
        align(interfaceC0428a);
        int mo26446a = interfaceC0428a.mo26446a();
        int i = this.fileOffset;
        if (i < 0) {
            this.fileOffset = mo26446a;
        } else if (i != mo26446a) {
            throw new RuntimeException("alignment mismatch: for " + this + ", at " + mo26446a + ", but expected " + this.fileOffset);
        }
        if (interfaceC0428a.mo26499j()) {
            if (this.name != null) {
                interfaceC0428a.mo26502d(0, "\n" + this.name + ":");
            } else if (mo26446a != 0) {
                interfaceC0428a.mo26502d(0, "\n");
            }
        }
        writeTo0(interfaceC0428a);
    }
}
