package okio;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* renamed from: a */
    public final ByteString[] f19747a;

    /* renamed from: b */
    public final int[] f19748b;

    private static void buildTrieRecursive(long j, Buffer buffer, int i, List<ByteString> list, int i2, int i3, List<Integer> list2) {
        int i4;
        int i5;
        int i6;
        Buffer buffer2;
        int i7 = i2;
        if (i7 < i3) {
            for (int i8 = i7; i8 < i3; i8++) {
                if (list.get(i8).size() < i) {
                    throw new AssertionError();
                }
            }
            ByteString byteString = list.get(i2);
            ByteString byteString2 = list.get(i3 - 1);
            int i9 = -1;
            if (i == byteString.size()) {
                i9 = list2.get(i7).intValue();
                i7++;
                byteString = list.get(i7);
            }
            int i10 = i7;
            if (byteString.getByte(i) != byteString2.getByte(i)) {
                int i11 = 1;
                for (int i12 = i10 + 1; i12 < i3; i12++) {
                    if (list.get(i12 - 1).getByte(i) != list.get(i12).getByte(i)) {
                        i11++;
                    }
                }
                long intCount = j + intCount(buffer) + 2 + (i11 * 2);
                buffer.writeInt(i11);
                buffer.writeInt(i9);
                for (int i13 = i10; i13 < i3; i13++) {
                    byte b = list.get(i13).getByte(i);
                    if (i13 == i10 || b != list.get(i13 - 1).getByte(i)) {
                        buffer.writeInt(b & DefaultClassResolver.NAME);
                    }
                }
                Buffer buffer3 = new Buffer();
                int i14 = i10;
                while (i14 < i3) {
                    byte b2 = list.get(i14).getByte(i);
                    int i15 = i14 + 1;
                    int i16 = i15;
                    while (true) {
                        if (i16 >= i3) {
                            i5 = i3;
                            break;
                        } else if (b2 != list.get(i16).getByte(i)) {
                            i5 = i16;
                            break;
                        } else {
                            i16++;
                        }
                    }
                    if (i15 == i5 && i + 1 == list.get(i14).size()) {
                        buffer.writeInt(list2.get(i14).intValue());
                        i6 = i5;
                        buffer2 = buffer3;
                    } else {
                        buffer.writeInt((int) ((intCount(buffer3) + intCount) * (-1)));
                        i6 = i5;
                        buffer2 = buffer3;
                        buildTrieRecursive(intCount, buffer3, i + 1, list, i14, i5, list2);
                    }
                    buffer3 = buffer2;
                    i14 = i6;
                }
                Buffer buffer4 = buffer3;
                buffer.write(buffer4, buffer4.size());
                return;
            }
            int i17 = 0;
            int min = Math.min(byteString.size(), byteString2.size());
            for (int i18 = i; i18 < min && byteString.getByte(i18) == byteString2.getByte(i18); i18++) {
                i17++;
            }
            long intCount2 = 1 + j + intCount(buffer) + 2 + i17;
            buffer.writeInt(-i17);
            buffer.writeInt(i9);
            int i19 = i;
            while (true) {
                i4 = i + i17;
                if (i19 >= i4) {
                    break;
                }
                buffer.writeInt(byteString.getByte(i19) & DefaultClassResolver.NAME);
                i19++;
            }
            if (i10 + 1 == i3) {
                if (i4 == list.get(i10).size()) {
                    buffer.writeInt(list2.get(i10).intValue());
                    return;
                }
                throw new AssertionError();
            }
            Buffer buffer5 = new Buffer();
            buffer.writeInt((int) ((intCount(buffer5) + intCount2) * (-1)));
            buildTrieRecursive(intCount2, buffer5, i4, list, i10, i3, list2);
            buffer.write(buffer5, buffer5.size());
            return;
        }
        throw new AssertionError();
    }

    private static int intCount(Buffer buffer) {
        return (int) (buffer.size() / 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bc, code lost:
        continue;
     */
    /* renamed from: of */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okio.Options m13732of(okio.ByteString... r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Options.m13732of(okio.ByteString[]):okio.Options");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19747a.length;
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i) {
        return this.f19747a[i];
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.f19747a = byteStringArr;
        this.f19748b = iArr;
    }
}
