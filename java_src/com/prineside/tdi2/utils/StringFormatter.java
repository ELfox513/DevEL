package com.prineside.tdi2.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.ByteArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.Game;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes2.dex */
public class StringFormatter {
    public static final String DISTINGUISHABLE_STRING_CHARS = "23456789ABCDEFGHJKLMNPQRSTUVWXYZ";
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", 2);

    /* renamed from: a */
    public static final String[] f15142a;

    /* renamed from: b */
    public static final StringBuilder f15143b;

    /* renamed from: c */
    public static final byte[] f15144c;

    /* renamed from: d */
    public static final ByteArrayOutputStream f15145d;

    /* renamed from: e */
    public static byte[] f15146e;

    /* renamed from: f */
    public static final Deflater f15147f;

    /* renamed from: g */
    public static final Inflater f15148g;

    /* renamed from: h */
    public static ByteArray f15149h;

    /* renamed from: i */
    public static MessageDigest f15150i;

    /* renamed from: j */
    public static GlyphLayout f15151j;

    /* loaded from: classes2.dex */
    public enum MeasureUnits {
        tiles,
        degrees_per_second,
        tiles_per_second,
        seconds,
        percent,
        units_per_second,
        percent_per_second,
        degrees;
        
        public static final MeasureUnits[] values = values();
    }

    public static StringBuilder compactNumber(double d, int i) {
        return compactNumber(d, i, false);
    }

    public static StringBuilder digestTime(int i) {
        return digestTime(i, false);
    }

    public static void main(String[] strArr) {
        for (int i = 0; i < 4; i++) {
            System.out.println(compactNumber(0.1234567d, i));
            System.out.println(compactNumber(1.1234567d, i));
            System.out.println(compactNumber(10.1234567d, i));
            System.out.println(compactNumber(100.1234567d, i));
        }
    }

    public static String toBase64(byte[] bArr, int i, int i2) {
        return new String(Base64Coder.encode(bArr, i, i2, Base64Coder.regularMap));
    }

    static {
        String[] strArr;
        String[] strArr2;
        String[] strArr3 = new String[40];
        f15142a = strArr3;
        strArr3[0] = "";
        for (int i = 1; i <= 3; i++) {
            f15142a[i] = new String(new char[i]).replace("\u0000", "I");
        }
        f15142a[4] = "IV";
        for (int i2 = 5; i2 <= 8; i2++) {
            f15142a[i2] = "V" + strArr2[i2 - 5];
        }
        String[] strArr4 = f15142a;
        strArr4[9] = "IX";
        strArr4[10] = "X";
        for (int i3 = 11; i3 <= 39; i3++) {
            f15142a[i3] = new String(new char[i3 / 10]).replace("\u0000", "X") + strArr[i3 % 10];
        }
        f15143b = new StringBuilder();
        f15144c = new byte[1024];
        f15145d = new ByteArrayOutputStream();
        f15146e = new byte[32];
        f15147f = new Deflater(1, true);
        f15148g = new Inflater(true);
        f15149h = new ByteArray(1024);
    }

    /* renamed from: a */
    public static void m19811a(double d, int i, double d2, char c) {
        double d3 = d2 / 10.0d;
        int i2 = (int) (d / d3);
        StringBuilder stringBuilder = f15143b;
        stringBuilder.append(i2);
        if (i == 1) {
            stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
        }
        double d4 = i2;
        Double.isNaN(d4);
        double d5 = d - (d4 * d3);
        double d6 = d3 / 10.0d;
        int i3 = (int) (d5 / d6);
        stringBuilder.append(i3);
        if (i == 2) {
            stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
        }
        double d7 = i3;
        Double.isNaN(d7);
        stringBuilder.append((int) ((d5 - (d7 * d6)) / (d6 / 10.0d)));
        stringBuilder.append(c);
    }

    /* renamed from: b */
    public static MessageDigest m19810b() {
        if (f15150i == null) {
            try {
                f15150i = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException("Failed to get MD5 digest", e);
            }
        }
        return f15150i;
    }

    public static StringBuilder commaSeparatedNumber(long j) {
        f15143b.setLength(0);
        boolean z = true;
        long j2 = 1000000000000000000L;
        long j3 = j;
        while (j2 > 0) {
            if (j3 >= j2) {
                long j4 = j3 / j2;
                j3 -= j4 * j2;
                if (z) {
                    f15143b.append(j4);
                } else {
                    if (j4 < 10) {
                        f15143b.append("00");
                    } else if (j4 < 100) {
                        f15143b.append('0');
                    }
                    f15143b.append(j4);
                }
                f15143b.append(',');
                z = false;
            } else if (!z) {
                StringBuilder stringBuilder = f15143b;
                stringBuilder.append("000");
                stringBuilder.append(',');
            }
            j2 /= 1000;
            if (j2 == 1) {
                break;
            }
        }
        if (!z) {
            if (j3 < 10) {
                f15143b.append("00");
            } else if (j3 < 100) {
                f15143b.append('0');
            }
        }
        StringBuilder stringBuilder2 = f15143b;
        stringBuilder2.append(j3);
        return stringBuilder2;
    }

    public static ByteArray compactBytes(byte[] bArr, int i, int i2) {
        if (f15146e.length < bArr.length) {
            f15146e = new byte[MathUtils.nextPowerOfTwo(bArr.length)];
        }
        Deflater deflater = f15147f;
        deflater.setInput(bArr, i, i2);
        deflater.finish();
        int deflate = deflater.deflate(f15146e);
        deflater.reset();
        f15149h.clear();
        f15149h.addAll(f15146e, 0, deflate);
        return f15149h;
    }

    public static StringBuilder compactNumber(double d, int i, boolean z) {
        StringBuilder stringBuilder = f15143b;
        stringBuilder.setLength(0);
        if (z) {
            int i2 = (int) d;
            double d2 = i2;
            Double.isNaN(d2);
            if (Math.abs(d - d2) <= 9.999999747378752E-6d) {
                stringBuilder.append(i2);
                return stringBuilder;
            }
        }
        boolean z2 = d < 0.0d;
        if (z2) {
            d = -d;
        }
        double d3 = d;
        if (d3 < 10.0d && i != 0) {
            double round = StrictMath.round(d3 * 10000.0d);
            Double.isNaN(round);
            stringBuilder.append(round / 10000.0d);
            int i3 = i + 2;
            if (stringBuilder.length > i3) {
                stringBuilder.setLength(i3);
            }
        } else if (d3 < 100.0d && i != 0) {
            double round2 = StrictMath.round(d3 * 1000.0d);
            Double.isNaN(round2);
            stringBuilder.append(round2 / 1000.0d);
            int i4 = i + 3;
            if (stringBuilder.length > i4) {
                stringBuilder.setLength(i4);
            }
        } else if (d3 < 1000.0d) {
            stringBuilder.append(StrictMath.round(d3));
        } else if (d3 < 10000.0d) {
            m19811a(d3, 1, 10000.0d, 'K');
        } else if (d3 < 100000.0d) {
            m19811a(d3, 2, 100000.0d, 'K');
        } else if (d3 < 1000000.0d) {
            m19811a(d3, 0, 1000000.0d, 'K');
        } else if (d3 < 1.0E7d) {
            m19811a(d3, 1, 1.0E7d, 'M');
        } else if (d3 < 1.0E8d) {
            m19811a(d3, 2, 1.0E8d, 'M');
        } else if (d3 < 1.0E9d) {
            m19811a(d3, 0, 1.0E9d, 'M');
        } else if (d3 < 1.0E10d) {
            m19811a(d3, 1, 1.0E10d, 'B');
        } else if (d3 < 1.0E11d) {
            m19811a(d3, 2, 1.0E11d, 'B');
        } else if (d3 < 1.0E12d) {
            m19811a(d3, 0, 1.0E12d, 'B');
        } else if (d3 < 1.0E13d) {
            m19811a(d3, 1, 1.0E13d, 'T');
        } else if (d3 < 1.0E14d) {
            m19811a(d3, 2, 1.0E14d, 'T');
        } else if (d3 < 1.0E15d) {
            m19811a(d3, 0, 1.0E15d, 'T');
        } else {
            int i5 = 0;
            while (d3 >= 1000.0d) {
                d3 /= 10.0d;
                i5++;
            }
            f15143b.append((int) d3).append('e').append(i5);
        }
        if (z2) {
            f15143b.insert(0, SignatureVisitor.SUPER);
        }
        return f15143b;
    }

    public static StringBuilder digestTime(int i, boolean z) {
        StringBuilder stringBuilder = f15143b;
        stringBuilder.setLength(0);
        int i2 = (i / 60) / 60;
        int i3 = (i - ((i2 * 60) * 60)) / 60;
        int i4 = i % 60;
        if (z || i2 != 0) {
            if (i2 < 10) {
                stringBuilder.append('0');
            }
            stringBuilder.append(i2).append(':');
        }
        if (i3 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(i3).append(':');
        if (i4 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(i4);
        return stringBuilder;
    }

    public static String distinguishableString(int i) {
        boolean z;
        char[] cArr = new char[33];
        if (i < 0) {
            z = true;
        } else {
            z = false;
        }
        int i2 = 32;
        if (!z) {
            i = -i;
        }
        while (i <= -32) {
            cArr[i2] = DISTINGUISHABLE_STRING_CHARS.charAt(-(i % 32));
            i /= 32;
            i2--;
        }
        cArr[i2] = DISTINGUISHABLE_STRING_CHARS.charAt(-i);
        if (z) {
            i2--;
            cArr[i2] = SignatureVisitor.SUPER;
        }
        return new String(cArr, i2, 33 - i2);
    }

    public static CharSequence fitToWidth(CharSequence charSequence, float f, BitmapFont bitmapFont, CharSequence charSequence2) {
        if (f15151j == null) {
            f15151j = new GlyphLayout(bitmapFont, "");
        }
        GlyphLayout glyphLayout = f15151j;
        glyphLayout.setText(bitmapFont, charSequence);
        if (glyphLayout.width <= f) {
            return charSequence;
        }
        StringBuilder stringBuilder = f15143b;
        stringBuilder.setLength(0);
        stringBuilder.append(charSequence2);
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            StringBuilder stringBuilder2 = f15143b;
            stringBuilder2.append(charSequence.charAt(i2));
            glyphLayout.setText(bitmapFont, stringBuilder2);
            if (glyphLayout.width >= f) {
                break;
            }
            i++;
        }
        StringBuilder stringBuilder3 = f15143b;
        stringBuilder3.setLength(0);
        stringBuilder3.append(charSequence, 0, i).append(charSequence2);
        return stringBuilder3;
    }

    public static byte[] fromCompactBase64(String str) {
        Inflater inflater;
        byte[] bArr;
        int inflate;
        try {
            f15145d.reset();
            byte[] decode = Base64Coder.decode(str);
            Inflater inflater2 = f15148g;
            inflater2.reset();
            inflater2.setInput(decode, 0, decode.length);
            while (true) {
                inflater = f15148g;
                if (inflater.finished() || (inflate = inflater.inflate((bArr = f15144c))) == 0) {
                    break;
                }
                f15145d.write(bArr, 0, inflate);
            }
            inflater.reset();
            return f15145d.toByteArray();
        } catch (DataFormatException e) {
            throw new IllegalArgumentException("Failed to read compact base64", e);
        }
    }

    public static ByteArrayOutputStream fromCompactBytes(byte[] bArr, int i, int i2) {
        Inflater inflater;
        byte[] bArr2;
        int inflate;
        try {
            f15145d.reset();
            f15148g.setInput(bArr, i, i2);
            while (true) {
                inflater = f15148g;
                if (inflater.finished() || (inflate = inflater.inflate((bArr2 = f15144c))) == 0) {
                    break;
                }
                f15145d.write(bArr2, 0, inflate);
            }
            inflater.reset();
            return f15145d;
        } catch (DataFormatException e) {
            throw new IllegalArgumentException("Failed to read compact base64", e);
        }
    }

    public static String romanNumber(int i) {
        if (i >= 0) {
            String[] strArr = f15142a;
            if (i < strArr.length) {
                return strArr[i];
            }
            return "";
        }
        return "";
    }

    public static String stringFromCompactBase64(String str) {
        Inflater inflater;
        byte[] bArr;
        int inflate;
        try {
            f15145d.reset();
            byte[] decode = Base64Coder.decode(str);
            f15148g.setInput(decode, 0, decode.length);
            while (true) {
                inflater = f15148g;
                if (inflater.finished() || (inflate = inflater.inflate((bArr = f15144c))) == 0) {
                    break;
                }
                f15145d.write(bArr, 0, inflate);
            }
            inflater.reset();
            return f15145d.toString();
        } catch (DataFormatException e) {
            throw new IllegalArgumentException("Failed to read compact base64", e);
        }
    }

    public static String timePassed(int i, boolean z, boolean z2) {
        String str;
        if (i <= 0) {
            return "-";
        }
        int i2 = ((i / 60) / 60) / 24;
        if (z2) {
            i -= ((i2 * 60) * 60) * 24;
        }
        int i3 = (i / 60) / 60;
        int i4 = (i % 3600) / 60;
        int i5 = i % 60;
        if (!z2 || i2 == 0) {
            str = "";
        } else {
            str = "" + i2 + "" + Game.f8589i.localeManager.i18n.get("TIME_CHAR_DAY") + " ";
        }
        if (i3 != 0) {
            str = str + i3 + "" + Game.f8589i.localeManager.i18n.get("TIME_CHAR_HOUR") + " ";
        }
        if ((i3 > 0 || i4 != 0) && (i4 != 0 || z)) {
            str = str + i4 + "" + Game.f8589i.localeManager.i18n.get("TIME_CHAR_MINUTE") + " ";
        }
        if (i5 != 0 || z) {
            str = str + i5 + "" + Game.f8589i.localeManager.i18n.get("TIME_CHAR_SECOND");
        }
        return str.trim();
    }

    public static String toCompactBase64(byte[] bArr, int i, int i2) {
        if (f15146e.length < bArr.length) {
            f15146e = new byte[MathUtils.nextPowerOfTwo(bArr.length)];
        }
        Deflater deflater = f15147f;
        deflater.setInput(bArr, i, i2);
        deflater.finish();
        int deflate = deflater.deflate(f15146e);
        deflater.reset();
        return new String(Base64Coder.encode(f15146e, 0, deflate, Base64Coder.regularMap));
    }

    public static StringBuilder toLowerCase(CharSequence charSequence) {
        f15143b.setLength(0);
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            f15143b.append(Character.toLowerCase(charSequence.charAt(i)));
        }
        return f15143b;
    }

    public static StringBuilder toRGB(Color color) {
        String hexString = Integer.toHexString((((int) (color.f3892r * 255.0f)) << 16) + (((int) (color.f3891g * 255.0f)) << 8) + ((int) (color.f3890b * 255.0f)));
        StringBuilder stringBuilder = f15143b;
        stringBuilder.setLength(0);
        stringBuilder.append(hexString);
        for (int length = hexString.length(); length < 6; length++) {
            f15143b.insert(0, '0');
        }
        return f15143b;
    }

    public static StringBuilder toUpperCase(CharSequence charSequence) {
        f15143b.setLength(0);
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            f15143b.append(Character.toUpperCase(charSequence.charAt(i)));
        }
        return f15143b;
    }

    public static byte[] fromBase64(String str) {
        try {
            return Base64Coder.decode(str);
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to read base64", e);
        }
    }

    public static String md5Hash(String str) {
        MessageDigest m19810b = m19810b();
        m19810b.reset();
        m19810b.update(str.getBytes());
        StringBuilder sb = new StringBuilder(new BigInteger(1, m19810b.digest()).toString(16));
        while (sb.length() < 32) {
            sb.insert(0, "0");
        }
        return sb.toString();
    }

    public static String stringToCompactBase64(String str) {
        byte[] bytes = str.getBytes();
        if (f15146e.length < bytes.length) {
            f15146e = new byte[MathUtils.nextPowerOfTwo(bytes.length)];
        }
        Deflater deflater = f15147f;
        deflater.setInput(bytes, 0, bytes.length);
        deflater.finish();
        int deflate = deflater.deflate(f15146e);
        deflater.reset();
        return new String(Base64Coder.encode(f15146e, 0, deflate, Base64Coder.regularMap));
    }

    public static StringBuilder compactNumber(double d, boolean z) {
        StringBuilder stringBuilder = f15143b;
        stringBuilder.setLength(0);
        boolean z2 = d < 0.0d;
        if (z2) {
            d = -d;
        }
        double d2 = d;
        if (d2 < 1.0d && z) {
            double round = StrictMath.round(d2 * 1000.0d);
            Double.isNaN(round);
            stringBuilder.append(round / 1000.0d);
            if (stringBuilder.length > 5) {
                stringBuilder.setLength(5);
            }
        } else if (d2 < 100.0d && z) {
            double round2 = StrictMath.round(d2 * 1000.0d);
            Double.isNaN(round2);
            stringBuilder.append(round2 / 1000.0d);
            if (stringBuilder.length > 4) {
                stringBuilder.setLength(4);
            }
        } else if (d2 < 1000.0d) {
            stringBuilder.append(StrictMath.round(d2));
        } else if (d2 < 10000.0d) {
            m19811a(d2, 1, 10000.0d, 'K');
        } else if (d2 < 100000.0d) {
            m19811a(d2, 2, 100000.0d, 'K');
        } else if (d2 < 1000000.0d) {
            m19811a(d2, 0, 1000000.0d, 'K');
        } else if (d2 < 1.0E7d) {
            m19811a(d2, 1, 1.0E7d, 'M');
        } else if (d2 < 1.0E8d) {
            m19811a(d2, 2, 1.0E8d, 'M');
        } else if (d2 < 1.0E9d) {
            m19811a(d2, 0, 1.0E9d, 'M');
        } else if (d2 < 1.0E10d) {
            m19811a(d2, 1, 1.0E10d, 'B');
        } else if (d2 < 1.0E11d) {
            m19811a(d2, 2, 1.0E11d, 'B');
        } else if (d2 < 1.0E12d) {
            m19811a(d2, 0, 1.0E12d, 'B');
        } else if (d2 < 1.0E13d) {
            m19811a(d2, 1, 1.0E13d, 'T');
        } else if (d2 < 1.0E14d) {
            m19811a(d2, 2, 1.0E14d, 'T');
        } else if (d2 < 1.0E15d) {
            m19811a(d2, 0, 1.0E15d, 'T');
        } else {
            int i = 0;
            while (d2 >= 1000.0d) {
                d2 /= 10.0d;
                i++;
            }
            f15143b.append((int) d2).append('e').append(i);
        }
        if (z2) {
            f15143b.insert(0, SignatureVisitor.SUPER);
        }
        return f15143b;
    }
}
