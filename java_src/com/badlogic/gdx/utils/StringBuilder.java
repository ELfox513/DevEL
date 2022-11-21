package com.badlogic.gdx.utils;

import com.prineside.tdi2.tiles.CoreTile;
import java.util.Arrays;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class StringBuilder implements Appendable, CharSequence {

    /* renamed from: a */
    public static final char[] f6752a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    public char[] chars;
    public int length;

    public StringBuilder() {
        this.chars = new char[16];
    }

    public static int numChars(int i, int i2) {
        int i3 = i < 0 ? 2 : 1;
        while (true) {
            i /= i2;
            if (i == 0) {
                return i3;
            }
            i3++;
        }
    }

    public StringBuilder appendCodePoint(int i) {
        m23525d(Character.toChars(i));
        return this;
    }

    public int capacity() {
        return this.chars.length;
    }

    public void clear() {
        this.length = 0;
    }

    public int codePointBefore(int i) {
        if (i >= 1 && i <= this.length) {
            return Character.codePointBefore(this.chars, i);
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public boolean contains(String str) {
        return indexOf(str, 0) != -1;
    }

    public boolean containsIgnoreCase(String str) {
        return indexOfIgnoreCase(str, 0) != -1;
    }

    public StringBuilder delete(int i, int i2) {
        m23522g(i, i2);
        return this;
    }

    public StringBuilder deleteCharAt(int i) {
        m23521h(i);
        return this;
    }

    /* renamed from: e */
    public final void m23524e(char[] cArr, int i, int i2) {
        if (i <= cArr.length && i >= 0) {
            if (i2 >= 0 && cArr.length - i >= i2) {
                int i3 = this.length + i2;
                if (i3 > this.chars.length) {
                    m23520i(i3);
                }
                System.arraycopy(cArr, i, this.chars, this.length, i2);
                this.length = i3;
                return;
            }
            throw new ArrayIndexOutOfBoundsException("Length out of bounds: " + i2);
        }
        throw new ArrayIndexOutOfBoundsException("Offset out of bounds: " + i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StringBuilder stringBuilder = (StringBuilder) obj;
        int i = this.length;
        if (i != stringBuilder.length) {
            return false;
        }
        char[] cArr = this.chars;
        char[] cArr2 = stringBuilder.chars;
        for (int i2 = 0; i2 < i; i2++) {
            if (cArr[i2] != cArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public boolean equalsIgnoreCase(@Null StringBuilder stringBuilder) {
        int i;
        if (this == stringBuilder) {
            return true;
        }
        if (stringBuilder != null && (i = this.length) == stringBuilder.length) {
            char[] cArr = this.chars;
            char[] cArr2 = stringBuilder.chars;
            for (int i2 = 0; i2 < i; i2++) {
                char c = cArr[i2];
                char upperCase = Character.toUpperCase(cArr2[i2]);
                if (c != upperCase && c != Character.toLowerCase(upperCase)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int indexOf(String str) {
        return indexOf(str, 0);
    }

    public int indexOfIgnoreCase(String str, int i) {
        boolean z;
        char c;
        char upperCase;
        if (i < 0) {
            i = 0;
        }
        int length = str.length();
        if (length == 0) {
            int i2 = this.length;
            if (i >= i2 && i != 0) {
                return i2;
            }
            return i;
        }
        int i3 = this.length - length;
        if (i > i3) {
            return -1;
        }
        char upperCase2 = Character.toUpperCase(str.charAt(0));
        char lowerCase = Character.toLowerCase(upperCase2);
        while (true) {
            if (i <= i3) {
                char c2 = this.chars[i];
                if (c2 != upperCase2 && c2 != lowerCase) {
                    i++;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            if (!z) {
                return -1;
            }
            int i4 = i;
            int i5 = 0;
            while (true) {
                i5++;
                if (i5 >= length || ((c = this.chars[(i4 = i4 + 1)]) != (upperCase = Character.toUpperCase(str.charAt(i5))) && c != Character.toLowerCase(upperCase))) {
                    break;
                }
            }
            if (i5 != length) {
                i++;
            } else {
                return i;
            }
        }
    }

    public StringBuilder insert(int i, boolean z) {
        m23517l(i, z ? "true" : "false");
        return this;
    }

    public boolean isEmpty() {
        return this.length == 0;
    }

    public int lastIndexOf(String str) {
        return lastIndexOf(str, this.length);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.length;
    }

    public boolean notEmpty() {
        return this.length != 0;
    }

    public int offsetByCodePoints(int i, int i2) {
        return Character.offsetByCodePoints(this.chars, 0, this.length, i, i2);
    }

    public StringBuilder replace(int i, int i2, String str) {
        m23513p(i, i2, str);
        return this;
    }

    public StringBuilder reverse() {
        m23512q();
        return this;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return substring(i, i2);
    }

    public String substring(int i) {
        int i2;
        if (i < 0 || i > (i2 = this.length)) {
            throw new StringIndexOutOfBoundsException(i);
        }
        return i == i2 ? "" : new String(this.chars, i, i2 - i);
    }

    public static int numChars(long j, int i) {
        int i2 = j < 0 ? 2 : 1;
        while (true) {
            j /= i;
            if (j == 0) {
                return i2;
            }
            i2++;
        }
    }

    /* renamed from: a */
    public final void m23528a(char c) {
        int i = this.length;
        if (i == this.chars.length) {
            m23520i(i + 1);
        }
        char[] cArr = this.chars;
        int i2 = this.length;
        this.length = i2 + 1;
        cArr[i2] = c;
    }

    /* renamed from: b */
    public final void m23527b(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        if (i >= 0 && i2 >= 0 && i <= i2 && i2 <= charSequence.length()) {
            m23526c(charSequence.subSequence(i, i2).toString());
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: c */
    public final void m23526c(String str) {
        if (str == null) {
            m23523f();
            return;
        }
        int length = str.length();
        int i = this.length + length;
        if (i > this.chars.length) {
            m23520i(i);
        }
        str.getChars(0, length, this.chars, this.length);
        this.length = i;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        if (i >= 0 && i < this.length) {
            return this.chars[i];
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public int codePointAt(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.length)) {
            return Character.codePointAt(this.chars, i, i2);
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public int codePointCount(int i, int i2) {
        if (i >= 0 && i2 <= this.length && i <= i2) {
            return Character.codePointCount(this.chars, i, i2 - i);
        }
        throw new StringIndexOutOfBoundsException();
    }

    /* renamed from: d */
    public final void m23525d(char[] cArr) {
        int length = this.length + cArr.length;
        if (length > this.chars.length) {
            m23520i(length);
        }
        System.arraycopy(cArr, 0, this.chars, this.length, cArr.length);
        this.length = length;
    }

    public void ensureCapacity(int i) {
        char[] cArr = this.chars;
        if (i > cArr.length) {
            int length = (cArr.length << 1) + 2;
            if (length > i) {
                i = length;
            }
            m23520i(i);
        }
    }

    /* renamed from: f */
    public final void m23523f() {
        int i = this.length + 4;
        if (i > this.chars.length) {
            m23520i(i);
        }
        char[] cArr = this.chars;
        int i2 = this.length;
        int i3 = i2 + 1;
        cArr[i2] = 'n';
        int i4 = i3 + 1;
        cArr[i3] = 'u';
        int i5 = i4 + 1;
        cArr[i4] = 'l';
        this.length = i5 + 1;
        cArr[i5] = 'l';
    }

    /* renamed from: g */
    public final void m23522g(int i, int i2) {
        if (i >= 0) {
            int i3 = this.length;
            if (i2 > i3) {
                i2 = i3;
            }
            if (i2 == i) {
                return;
            }
            if (i2 > i) {
                int i4 = i3 - i2;
                if (i4 >= 0) {
                    char[] cArr = this.chars;
                    System.arraycopy(cArr, i2, cArr, i, i4);
                }
                this.length -= i2 - i;
                return;
            }
        }
        throw new StringIndexOutOfBoundsException();
    }

    public void getChars(int i, int i2, char[] cArr, int i3) {
        int i4 = this.length;
        if (i <= i4 && i2 <= i4 && i <= i2) {
            System.arraycopy(this.chars, i, cArr, i3, i2 - i);
            return;
        }
        throw new StringIndexOutOfBoundsException();
    }

    /* renamed from: h */
    public final void m23521h(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.length)) {
            int i3 = (i2 - i) - 1;
            if (i3 > 0) {
                char[] cArr = this.chars;
                System.arraycopy(cArr, i + 1, cArr, i, i3);
            }
            this.length--;
            return;
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public int hashCode() {
        int i = this.length + 31;
        for (int i2 = 0; i2 < this.length; i2++) {
            i = (i * 31) + this.chars[i2];
        }
        return i;
    }

    /* renamed from: i */
    public final void m23520i(int i) {
        char[] cArr = this.chars;
        int length = (cArr.length >> 1) + cArr.length + 2;
        if (i <= length) {
            i = length;
        }
        char[] cArr2 = new char[i];
        System.arraycopy(cArr, 0, cArr2, 0, this.length);
        this.chars = cArr2;
    }

    public int indexOf(String str, int i) {
        boolean z;
        if (i < 0) {
            i = 0;
        }
        int length = str.length();
        if (length == 0) {
            int i2 = this.length;
            return (i < i2 || i == 0) ? i : i2;
        }
        int i3 = this.length - length;
        if (i > i3) {
            return -1;
        }
        char charAt = str.charAt(0);
        while (true) {
            if (i > i3) {
                z = false;
            } else if (this.chars[i] == charAt) {
                z = true;
            } else {
                continue;
                i++;
            }
            if (!z) {
                return -1;
            }
            int i4 = i;
            int i5 = 0;
            do {
                i5++;
                if (i5 >= length) {
                    break;
                }
                i4++;
            } while (this.chars[i4] == str.charAt(i5));
            if (i5 == length) {
                return i;
            }
            i++;
        }
    }

    public StringBuilder insert(int i, char c) {
        m23519j(i, c);
        return this;
    }

    /* renamed from: j */
    public final void m23519j(int i, char c) {
        if (i >= 0 && i <= this.length) {
            m23514o(1, i);
            this.chars[i] = c;
            this.length++;
            return;
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    /* renamed from: k */
    public final void m23518k(int i, CharSequence charSequence, int i2, int i3) {
        if (charSequence == null) {
            charSequence = "null";
        }
        if (i >= 0 && i <= this.length && i2 >= 0 && i3 >= 0 && i2 <= i3 && i3 <= charSequence.length()) {
            m23517l(i, charSequence.subSequence(i2, i3).toString());
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: l */
    public final void m23517l(int i, String str) {
        if (i >= 0 && i <= this.length) {
            if (str == null) {
                str = "null";
            }
            int length = str.length();
            if (length != 0) {
                m23514o(length, i);
                str.getChars(0, length, this.chars, i);
                this.length += length;
                return;
            }
            return;
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public int lastIndexOf(String str, int i) {
        boolean z;
        int length = str.length();
        int i2 = this.length;
        if (length > i2 || i < 0) {
            return -1;
        }
        if (length <= 0) {
            return i < i2 ? i : i2;
        }
        if (i > i2 - length) {
            i = i2 - length;
        }
        char charAt = str.charAt(0);
        while (true) {
            if (i < 0) {
                z = false;
            } else if (this.chars[i] == charAt) {
                z = true;
            } else {
                i--;
            }
            if (!z) {
                return -1;
            }
            int i3 = i;
            int i4 = 0;
            do {
                i4++;
                if (i4 >= length) {
                    break;
                }
                i3++;
            } while (this.chars[i3] == str.charAt(i4));
            if (i4 == length) {
                return i;
            }
            i--;
        }
    }

    /* renamed from: m */
    public final void m23516m(int i, char[] cArr) {
        if (i >= 0 && i <= this.length) {
            if (cArr.length != 0) {
                m23514o(cArr.length, i);
                System.arraycopy(cArr, 0, cArr, i, cArr.length);
                this.length += cArr.length;
                return;
            }
            return;
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    /* renamed from: n */
    public final void m23515n(int i, char[] cArr, int i2, int i3) {
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i3 >= 0 && i3 <= cArr.length - i2) {
                if (i3 != 0) {
                    m23514o(i3, i);
                    System.arraycopy(cArr, i2, this.chars, i, i3);
                    this.length += i3;
                    return;
                }
                return;
            }
            throw new StringIndexOutOfBoundsException("offset " + i2 + ", length " + i3 + ", char[].length " + cArr.length);
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    /* renamed from: o */
    public final void m23514o(int i, int i2) {
        char[] cArr = this.chars;
        int length = cArr.length;
        int i3 = this.length;
        if (length - i3 >= i) {
            System.arraycopy(cArr, i2, cArr, i + i2, i3 - i2);
            return;
        }
        int i4 = i3 + i;
        int length2 = (cArr.length << 1) + 2;
        if (i4 <= length2) {
            i4 = length2;
        }
        char[] cArr2 = new char[i4];
        System.arraycopy(cArr, 0, cArr2, 0, i2);
        System.arraycopy(this.chars, i2, cArr2, i + i2, this.length - i2);
        this.chars = cArr2;
    }

    /* renamed from: p */
    public final void m23513p(int i, int i2, String str) {
        if (i >= 0) {
            int i3 = this.length;
            if (i2 > i3) {
                i2 = i3;
            }
            if (i2 > i) {
                int length = str.length();
                int i4 = (i2 - i) - length;
                if (i4 > 0) {
                    char[] cArr = this.chars;
                    System.arraycopy(cArr, i2, cArr, i + length, this.length - i2);
                } else if (i4 < 0) {
                    m23514o(-i4, i2);
                }
                str.getChars(0, length, this.chars, i);
                this.length -= i4;
                return;
            } else if (i == i2) {
                str.getClass();
                m23517l(i, str);
                return;
            }
        }
        throw new StringIndexOutOfBoundsException();
    }

    /* renamed from: q */
    public final void m23512q() {
        boolean z;
        boolean z2;
        int i;
        int i2 = this.length;
        if (i2 < 2) {
            return;
        }
        int i3 = i2 - 1;
        char[] cArr = this.chars;
        char c = cArr[0];
        char c2 = cArr[i3];
        int i4 = i2 / 2;
        int i5 = 0;
        boolean z3 = true;
        boolean z4 = true;
        while (i5 < i4) {
            char[] cArr2 = this.chars;
            int i6 = i5 + 1;
            char c3 = cArr2[i6];
            int i7 = i3 - 1;
            char c4 = cArr2[i7];
            if (z3 && c3 >= 56320 && c3 <= 57343 && c >= 55296 && c <= 56319) {
                z = true;
            } else {
                z = false;
            }
            if (z && this.length < 3) {
                return;
            }
            if (z4 && c4 >= 55296 && c4 <= 56319 && c2 >= 56320 && c2 <= 57343) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z == z2) {
                if (z) {
                    cArr2[i3] = c3;
                    cArr2[i7] = c;
                    cArr2[i5] = c4;
                    cArr2[i6] = c2;
                    char c5 = cArr2[i5 + 2];
                    c2 = cArr2[i3 - 2];
                    i3--;
                    c = c5;
                    i5 = i6;
                } else {
                    cArr2[i3] = c;
                    cArr2[i5] = c2;
                    c = c3;
                    c2 = c4;
                }
                i = 1;
                z3 = true;
            } else if (z) {
                cArr2[i3] = c3;
                cArr2[i5] = c2;
                c2 = c4;
                i = 1;
                z3 = false;
            } else {
                cArr2[i3] = c;
                cArr2[i5] = c4;
                c = c3;
                i = 1;
                z3 = true;
                z4 = false;
                i5 += i;
                i3--;
            }
            z4 = true;
            i5 += i;
            i3--;
        }
        if ((this.length & 1) == 1) {
            if (!z3 || !z4) {
                char[] cArr3 = this.chars;
                if (!z3) {
                    c2 = c;
                }
                cArr3[i3] = c2;
            }
        }
    }

    public StringBuilder replace(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        int i = 0;
        while (true) {
            int indexOf = indexOf(str, i);
            if (indexOf == -1) {
                return this;
            }
            m23513p(indexOf, indexOf + length, str2);
            i = indexOf + length2;
        }
    }

    public void setCharAt(int i, char c) {
        if (i >= 0 && i < this.length) {
            this.chars[i] = c;
            return;
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    public void setLength(int i) {
        if (i >= 0) {
            char[] cArr = this.chars;
            if (i > cArr.length) {
                m23520i(i);
            } else {
                int i2 = this.length;
                if (i2 < i) {
                    Arrays.fill(cArr, i2, i, (char) 0);
                }
            }
            this.length = i;
            return;
        }
        throw new StringIndexOutOfBoundsException(i);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        int i = this.length;
        if (i == 0) {
            return "";
        }
        return new String(this.chars, 0, i);
    }

    public void trimToSize() {
        int i = this.length;
        char[] cArr = this.chars;
        if (i < cArr.length) {
            char[] cArr2 = new char[i];
            System.arraycopy(cArr, 0, cArr2, 0, i);
            this.chars = cArr2;
        }
    }

    public StringBuilder(int i) {
        if (i >= 0) {
            this.chars = new char[i];
            return;
        }
        throw new NegativeArraySizeException();
    }

    public StringBuilder appendLine(String str) {
        m23526c(str);
        m23528a('\n');
        return this;
    }

    public StringBuilder insert(int i, int i2) {
        m23517l(i, Integer.toString(i2));
        return this;
    }

    public String toStringAndClear() {
        String stringBuilder = toString();
        clear();
        return stringBuilder;
    }

    public StringBuilder append(boolean z) {
        m23526c(z ? "true" : "false");
        return this;
    }

    public StringBuilder insert(int i, long j) {
        m23517l(i, Long.toString(j));
        return this;
    }

    public String substring(int i, int i2) {
        if (i < 0 || i > i2 || i2 > this.length) {
            throw new StringIndexOutOfBoundsException();
        }
        return i == i2 ? "" : new String(this.chars, i, i2 - i);
    }

    @Override // java.lang.Appendable
    public StringBuilder append(char c) {
        m23528a(c);
        return this;
    }

    public StringBuilder insert(int i, float f) {
        m23517l(i, Float.toString(f));
        return this;
    }

    public StringBuilder replace(char c, String str) {
        int length = str.length();
        int i = 0;
        while (i != this.length) {
            if (this.chars[i] == c) {
                m23513p(i, i + 1, str);
                i += length;
            } else {
                i++;
            }
        }
        return this;
    }

    public StringBuilder(CharSequence charSequence) {
        this(charSequence.toString());
    }

    public StringBuilder append(int i) {
        return append(i, 0);
    }

    public StringBuilder insert(int i, double d) {
        m23517l(i, Double.toString(d));
        return this;
    }

    public StringBuilder(StringBuilder stringBuilder) {
        int i = stringBuilder.length;
        this.length = i;
        char[] cArr = new char[i + 16];
        this.chars = cArr;
        System.arraycopy(stringBuilder.chars, 0, cArr, 0, i);
    }

    public StringBuilder append(int i, int i2) {
        return append(i, i2, '0');
    }

    public boolean equalsIgnoreCase(@Null String str) {
        int i;
        if (str != null && (i = this.length) == str.length()) {
            char[] cArr = this.chars;
            for (int i2 = 0; i2 < i; i2++) {
                char c = cArr[i2];
                char upperCase = Character.toUpperCase(str.charAt(i2));
                if (c != upperCase && c != Character.toLowerCase(upperCase)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public StringBuilder insert(int i, Object obj) {
        m23517l(i, obj == null ? "null" : obj.toString());
        return this;
    }

    public StringBuilder append(int i, int i2, char c) {
        if (i == Integer.MIN_VALUE) {
            m23526c("-2147483648");
            return this;
        }
        if (i < 0) {
            m23528a(SignatureVisitor.SUPER);
            i = -i;
        }
        if (i2 > 1) {
            for (int numChars = i2 - numChars(i, 10); numChars > 0; numChars--) {
                append(c);
            }
        }
        if (i >= 10000) {
            if (i >= 1000000000) {
                m23528a(f6752a[(int) ((i % 10000000000L) / 1000000000)]);
            }
            if (i >= 100000000) {
                m23528a(f6752a[(i % 1000000000) / 100000000]);
            }
            if (i >= 10000000) {
                m23528a(f6752a[(i % 100000000) / 10000000]);
            }
            if (i >= 1000000) {
                m23528a(f6752a[(i % 10000000) / 1000000]);
            }
            if (i >= 100000) {
                m23528a(f6752a[(i % 1000000) / 100000]);
            }
            m23528a(f6752a[(i % 100000) / 10000]);
        }
        if (i >= 1000) {
            m23528a(f6752a[(i % 10000) / CoreTile.FIXED_LEVEL_XP_REQUIREMENT]);
        }
        if (i >= 100) {
            m23528a(f6752a[(i % CoreTile.FIXED_LEVEL_XP_REQUIREMENT) / 100]);
        }
        if (i >= 10) {
            m23528a(f6752a[(i % 100) / 10]);
        }
        m23528a(f6752a[i % 10]);
        return this;
    }

    public StringBuilder insert(int i, String str) {
        m23517l(i, str);
        return this;
    }

    public StringBuilder insert(int i, char[] cArr) {
        m23516m(i, cArr);
        return this;
    }

    public StringBuilder insert(int i, char[] cArr, int i2, int i3) {
        m23515n(i, cArr, i2, i3);
        return this;
    }

    public StringBuilder(String str) {
        int length = str.length();
        this.length = length;
        char[] cArr = new char[length + 16];
        this.chars = cArr;
        str.getChars(0, length, cArr, 0);
    }

    public StringBuilder insert(int i, CharSequence charSequence) {
        m23517l(i, charSequence == null ? "null" : charSequence.toString());
        return this;
    }

    public StringBuilder insert(int i, CharSequence charSequence, int i2, int i3) {
        m23518k(i, charSequence, i2, i3);
        return this;
    }

    public StringBuilder append(long j) {
        return append(j, 0);
    }

    public StringBuilder append(long j, int i) {
        return append(j, i, '0');
    }

    public StringBuilder append(long j, int i, char c) {
        if (j == Long.MIN_VALUE) {
            m23526c("-9223372036854775808");
            return this;
        }
        if (j < 0) {
            m23528a(SignatureVisitor.SUPER);
            j = -j;
        }
        if (i > 1) {
            for (int numChars = i - numChars(j, 10); numChars > 0; numChars--) {
                append(c);
            }
        }
        if (j >= 10000) {
            if (j >= 1000000000000000000L) {
                char[] cArr = f6752a;
                double d = j;
                Double.isNaN(d);
                m23528a(cArr[(int) ((d % 1.0E19d) / 1.0E18d)]);
            }
            if (j >= 100000000000000000L) {
                m23528a(f6752a[(int) ((j % 1000000000000000000L) / 100000000000000000L)]);
            }
            if (j >= 10000000000000000L) {
                m23528a(f6752a[(int) ((j % 100000000000000000L) / 10000000000000000L)]);
            }
            if (j >= 1000000000000000L) {
                m23528a(f6752a[(int) ((j % 10000000000000000L) / 1000000000000000L)]);
            }
            if (j >= 100000000000000L) {
                m23528a(f6752a[(int) ((j % 1000000000000000L) / 100000000000000L)]);
            }
            if (j >= 10000000000000L) {
                m23528a(f6752a[(int) ((j % 100000000000000L) / 10000000000000L)]);
            }
            if (j >= 1000000000000L) {
                m23528a(f6752a[(int) ((j % 10000000000000L) / 1000000000000L)]);
            }
            if (j >= 100000000000L) {
                m23528a(f6752a[(int) ((j % 1000000000000L) / 100000000000L)]);
            }
            if (j >= 10000000000L) {
                m23528a(f6752a[(int) ((j % 100000000000L) / 10000000000L)]);
            }
            if (j >= 1000000000) {
                m23528a(f6752a[(int) ((j % 10000000000L) / 1000000000)]);
            }
            if (j >= 100000000) {
                m23528a(f6752a[(int) ((j % 1000000000) / 100000000)]);
            }
            if (j >= 10000000) {
                m23528a(f6752a[(int) ((j % 100000000) / 10000000)]);
            }
            if (j >= 1000000) {
                m23528a(f6752a[(int) ((j % 10000000) / 1000000)]);
            }
            if (j >= 100000) {
                m23528a(f6752a[(int) ((j % 1000000) / 100000)]);
            }
            m23528a(f6752a[(int) ((j % 100000) / 10000)]);
        }
        if (j >= 1000) {
            m23528a(f6752a[(int) ((j % 10000) / 1000)]);
        }
        if (j >= 100) {
            m23528a(f6752a[(int) ((j % 1000) / 100)]);
        }
        if (j >= 10) {
            m23528a(f6752a[(int) ((j % 100) / 10)]);
        }
        m23528a(f6752a[(int) (j % 10)]);
        return this;
    }

    public StringBuilder append(float f) {
        m23526c(Float.toString(f));
        return this;
    }

    public StringBuilder append(double d) {
        m23526c(Double.toString(d));
        return this;
    }

    public StringBuilder append(Object obj) {
        if (obj == null) {
            m23523f();
        } else {
            m23526c(obj.toString());
        }
        return this;
    }

    public StringBuilder append(String str) {
        m23526c(str);
        return this;
    }

    public StringBuilder append(String str, String str2) {
        if (this.length > 0) {
            m23526c(str2);
        }
        m23526c(str);
        return this;
    }

    public StringBuilder append(char[] cArr) {
        m23525d(cArr);
        return this;
    }

    public StringBuilder append(char[] cArr, int i, int i2) {
        m23524e(cArr, i, i2);
        return this;
    }

    @Override // java.lang.Appendable
    public StringBuilder append(CharSequence charSequence) {
        if (charSequence == null) {
            m23523f();
        } else if (charSequence instanceof StringBuilder) {
            StringBuilder stringBuilder = (StringBuilder) charSequence;
            m23524e(stringBuilder.chars, 0, stringBuilder.length);
        } else {
            m23526c(charSequence.toString());
        }
        return this;
    }

    public StringBuilder append(StringBuilder stringBuilder) {
        if (stringBuilder == null) {
            m23523f();
        } else {
            m23524e(stringBuilder.chars, 0, stringBuilder.length);
        }
        return this;
    }

    @Override // java.lang.Appendable
    public StringBuilder append(CharSequence charSequence, int i, int i2) {
        m23527b(charSequence, i, i2);
        return this;
    }

    public StringBuilder append(StringBuilder stringBuilder, int i, int i2) {
        if (stringBuilder == null) {
            m23523f();
        } else {
            m23524e(stringBuilder.chars, i, i2);
        }
        return this;
    }
}
