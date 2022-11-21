package com.prineside.tdi2.ibxm;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* loaded from: classes2.dex */
public class Pattern {
    public byte[] data;
    public int numRows;

    public Pattern(Pattern pattern) {
        this.numRows = pattern.numRows;
        byte[] bArr = new byte[pattern.data.length];
        this.data = bArr;
        System.arraycopy(pattern.data, 0, bArr, 0, bArr.length);
    }

    public Note getNote(int i, Note note) {
        int i2 = i * 5;
        byte[] bArr = this.data;
        note.key = bArr[i2] & DefaultClassResolver.NAME;
        note.instrument = bArr[i2 + 1] & DefaultClassResolver.NAME;
        note.volume = bArr[i2 + 2] & DefaultClassResolver.NAME;
        note.effect = bArr[i2 + 3] & DefaultClassResolver.NAME;
        note.param = bArr[i2 + 4] & DefaultClassResolver.NAME;
        return note;
    }

    public String toString() {
        int length = this.data.length;
        int i = this.numRows;
        StringBuffer stringBuffer = new StringBuffer(((length / (i * 5)) * i * 11) + i);
        toStringBuffer(stringBuffer);
        return stringBuffer.toString();
    }

    public void toStringBuffer(StringBuffer stringBuffer) {
        Note note = new Note();
        char[] cArr = new char[10];
        int length = this.data.length / (this.numRows * 5);
        for (int i = 0; i < this.numRows; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                getNote((length * i) + i2, note);
                note.toChars(cArr);
                stringBuffer.append(cArr);
                stringBuffer.append(' ');
            }
            stringBuffer.append('\n');
        }
    }

    public Pattern(int i, int i2) {
        this.numRows = i2;
        this.data = new byte[i * i2 * 5];
    }
}
