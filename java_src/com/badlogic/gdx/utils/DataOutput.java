package com.badlogic.gdx.utils;

import java.io.DataOutputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class DataOutput extends DataOutputStream {
    public DataOutput(OutputStream outputStream) {
        super(outputStream);
    }

    public void writeString(@Null String str) {
        int i = 0;
        if (str == null) {
            write(0);
            return;
        }
        int length = str.length();
        if (length == 0) {
            writeByte(1);
            return;
        }
        writeInt(length + 1, true);
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt > 127) {
                break;
            }
            write((byte) charAt);
            i++;
        }
        if (i < length) {
            m23664c(str, length, i);
        }
    }

    /* renamed from: c */
    public final void m23664c(String str, int i, int i2) {
        while (i2 < i) {
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                write((byte) charAt);
            } else if (charAt > 2047) {
                write((byte) (((charAt >> '\f') & 15) | 224));
                write((byte) (((charAt >> 6) & 63) | 128));
                write((byte) ((charAt & '?') | 128));
            } else {
                write((byte) (((charAt >> 6) & 31) | 192));
                write((byte) ((charAt & '?') | 128));
            }
            i2++;
        }
    }

    public int writeInt(int i, boolean z) {
        if (!z) {
            i = (i >> 31) ^ (i << 1);
        }
        int i2 = i >>> 7;
        if (i2 == 0) {
            write((byte) i);
            return 1;
        }
        write((byte) ((i & 127) | 128));
        int i3 = i >>> 14;
        if (i3 == 0) {
            write((byte) i2);
            return 2;
        }
        write((byte) (i2 | 128));
        int i4 = i >>> 21;
        if (i4 == 0) {
            write((byte) i3);
            return 3;
        }
        write((byte) (i3 | 128));
        int i5 = i >>> 28;
        if (i5 == 0) {
            write((byte) i4);
            return 4;
        }
        write((byte) (i4 | 128));
        write((byte) i5);
        return 5;
    }
}
