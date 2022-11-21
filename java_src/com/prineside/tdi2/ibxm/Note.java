package com.prineside.tdi2.ibxm;

import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes2.dex */
public class Note {
    public int effect;
    public int instrument;
    public int key;
    public int param;
    public int volume;

    public String toString() {
        return new String(toChars(new char[10]));
    }

    /* renamed from: a */
    public static void m21744a(int i, char[] cArr) {
        char c;
        char c2;
        char c3 = SignatureVisitor.SUPER;
        if (i > 0 && i < 118) {
            c = "A-A#B-C-C#D-D#E-F-F#G-G#".charAt(((i + 2) % 12) * 2);
        } else {
            c = SignatureVisitor.SUPER;
        }
        cArr[0] = c;
        if (i > 0 && i < 118) {
            c2 = "A-A#B-C-C#D-D#E-F-F#G-G#".charAt((((i + 2) % 12) * 2) + 1);
        } else {
            c2 = SignatureVisitor.SUPER;
        }
        cArr[1] = c2;
        if (i > 0 && i < 118) {
            c3 = (char) (((i + 2) / 12) + 48);
        }
        cArr[2] = c3;
    }

    public char[] toChars(char[] cArr) {
        char c;
        char c2;
        char c3;
        char c4;
        char charAt;
        m21744a(this.key, cArr);
        int i = this.instrument;
        char c5 = SignatureVisitor.SUPER;
        if (i > 15 && i < 255) {
            c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt((i >> 4) & 15);
        } else {
            c = SignatureVisitor.SUPER;
        }
        cArr[3] = c;
        int i2 = this.instrument;
        if (i2 > 0 && i2 < 255) {
            c2 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i2 & 15);
        } else {
            c2 = SignatureVisitor.SUPER;
        }
        cArr[4] = c2;
        int i3 = this.volume;
        if (i3 > 15 && i3 < 255) {
            c3 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt((i3 >> 4) & 15);
        } else {
            c3 = SignatureVisitor.SUPER;
        }
        cArr[5] = c3;
        int i4 = this.volume;
        if (i4 > 0 && i4 < 255) {
            c4 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i4 & 15);
        } else {
            c4 = SignatureVisitor.SUPER;
        }
        cArr[6] = c4;
        int i5 = this.effect;
        if ((i5 > 0 || this.param > 0) && i5 < 36) {
            cArr[7] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i5);
        } else if (i5 > 128 && i5 < 159) {
            cArr[7] = (char) ((i5 & 31) + 96);
        } else {
            cArr[7] = SignatureVisitor.SUPER;
        }
        if (this.effect <= 0 && this.param <= 0) {
            charAt = SignatureVisitor.SUPER;
        } else {
            charAt = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt((this.param >> 4) & 15);
        }
        cArr[8] = charAt;
        if (this.effect > 0 || this.param > 0) {
            c5 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(this.param & 15);
        }
        cArr[9] = c5;
        return cArr;
    }
}
