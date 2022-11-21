package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.GlyphLayout;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.GdxRuntimeException;
import net.bytebuddy.asm.Advice;
/* loaded from: classes.dex */
public class BitmapFont implements Disposable {

    /* renamed from: a */
    public final BitmapFontData f3994a;

    /* renamed from: b */
    public Array<TextureRegion> f3995b;

    /* renamed from: d */
    public final BitmapFontCache f3996d;

    /* renamed from: k */
    public boolean f3997k;

    /* renamed from: p */
    public boolean f3998p;

    /* renamed from: q */
    public boolean f3999q;

    /* loaded from: classes.dex */
    public static class BitmapFontData {
        public float ascent;
        public float blankLineScale;
        public char[] breakChars;
        public char[] capChars;
        public float capHeight;
        public float cursorX;
        public float descent;
        public float down;
        public boolean flipped;
        public FileHandle fontFile;
        public final Glyph[][] glyphs;
        public String[] imagePaths;
        public float lineHeight;
        public boolean markupEnabled;
        public Glyph missingGlyph;
        public String name;
        public float padBottom;
        public float padLeft;
        public float padRight;
        public float padTop;
        public float scaleX;
        public float scaleY;
        public float spaceXadvance;
        public char[] xChars;
        public float xHeight;

        public BitmapFontData() {
            this.capHeight = 1.0f;
            this.blankLineScale = 1.0f;
            this.scaleX = 1.0f;
            this.scaleY = 1.0f;
            this.glyphs = new Glyph[128];
            this.xHeight = 1.0f;
            this.xChars = new char[]{'x', 'e', 'a', 'o', 'n', Advice.OffsetMapping.ForOrigin.Renderer.ForJavaSignature.SYMBOL, Advice.OffsetMapping.ForOrigin.Renderer.ForReturnTypeName.SYMBOL, 'c', 'u', Advice.OffsetMapping.ForOrigin.Renderer.ForMethodName.SYMBOL, 'v', 'w', 'z'};
            this.capChars = new char[]{'M', 'N', 'B', 'D', 'C', 'E', 'F', 'K', 'A', 'G', 'H', 'I', 'J', 'L', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
        }

        public FileHandle getFontFile() {
            return this.fontFile;
        }

        public String getImagePath(int i) {
            return this.imagePaths[i];
        }

        public String[] getImagePaths() {
            return this.imagePaths;
        }

        public boolean isWhitespace(char c) {
            return c == '\t' || c == '\n' || c == '\r' || c == ' ';
        }

        public void scale(float f) {
            setScale(this.scaleX + f, this.scaleY + f);
        }

        public void setScale(float f, float f2) {
            if (f == 0.0f) {
                throw new IllegalArgumentException("scaleX cannot be 0.");
            }
            if (f2 != 0.0f) {
                float f3 = f / this.scaleX;
                float f4 = f2 / this.scaleY;
                this.lineHeight *= f4;
                this.spaceXadvance *= f3;
                this.xHeight *= f4;
                this.capHeight *= f4;
                this.ascent *= f4;
                this.descent *= f4;
                this.down *= f4;
                this.padLeft *= f3;
                this.padRight *= f3;
                this.padTop *= f4;
                this.padBottom *= f4;
                this.scaleX = f;
                this.scaleY = f2;
                return;
            }
            throw new IllegalArgumentException("scaleY cannot be 0.");
        }

        public String toString() {
            String str = this.name;
            return str != null ? str : super.toString();
        }

        public Glyph getFirstGlyph() {
            Glyph[][] glyphArr;
            for (Glyph[] glyphArr2 : this.glyphs) {
                if (glyphArr2 != null) {
                    for (Glyph glyph : glyphArr2) {
                        if (glyph != null && glyph.height != 0 && glyph.width != 0) {
                            return glyph;
                        }
                    }
                    continue;
                }
            }
            throw new GdxRuntimeException("No glyphs found.");
        }

        public Glyph getGlyph(char c) {
            Glyph[] glyphArr = this.glyphs[c / 512];
            if (glyphArr != null) {
                return glyphArr[c & 511];
            }
            return null;
        }

        public void getGlyphs(GlyphLayout.GlyphRun glyphRun, CharSequence charSequence, int i, int i2, Glyph glyph) {
            float f;
            Glyph glyph2;
            float kerning;
            int i3 = i2 - i;
            if (i3 == 0) {
                return;
            }
            boolean z = this.markupEnabled;
            float f2 = this.scaleX;
            Array<Glyph> array = glyphRun.glyphs;
            FloatArray floatArray = glyphRun.xAdvances;
            array.ensureCapacity(i3);
            glyphRun.xAdvances.ensureCapacity(i3 + 1);
            do {
                int i4 = i + 1;
                char charAt = charSequence.charAt(i);
                if (charAt == '\r' || ((glyph2 = getGlyph(charAt)) == null && (glyph2 = this.missingGlyph) == null)) {
                    i = i4;
                    continue;
                } else {
                    array.add(glyph2);
                    if (glyph == null) {
                        if (glyph2.fixedWidth) {
                            kerning = 0.0f;
                        } else {
                            kerning = ((-glyph2.xoffset) * f2) - this.padLeft;
                        }
                    } else {
                        kerning = (glyph.xadvance + glyph.getKerning(charAt)) * f2;
                    }
                    floatArray.add(kerning);
                    if (z && charAt == '[' && i4 < i2 && charSequence.charAt(i4) == '[') {
                        i4++;
                    }
                    i = i4;
                    glyph = glyph2;
                    continue;
                }
            } while (i < i2);
            if (glyph != null) {
                if (glyph.fixedWidth) {
                    f = glyph.xadvance * f2;
                } else {
                    f = ((glyph.width + glyph.xoffset) * f2) - this.padRight;
                }
                floatArray.add(f);
            }
        }

        public int getWrapIndex(Array<Glyph> array, int i) {
            int i2 = i - 1;
            Glyph[] glyphArr = array.items;
            char c = (char) glyphArr[i2].f4000id;
            if (isWhitespace(c)) {
                return i2;
            }
            if (isBreakChar(c)) {
                i2--;
            }
            while (i2 > 0) {
                char c2 = (char) glyphArr[i2].f4000id;
                if (!isWhitespace(c2) && !isBreakChar(c2)) {
                    i2--;
                } else {
                    return i2 + 1;
                }
            }
            return 0;
        }

        public boolean hasGlyph(char c) {
            if (this.missingGlyph != null || getGlyph(c) != null) {
                return true;
            }
            return false;
        }

        public boolean isBreakChar(char c) {
            char[] cArr = this.breakChars;
            if (cArr == null) {
                return false;
            }
            for (char c2 : cArr) {
                if (c == c2) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:115:0x02be A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:118:0x02d2 A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:120:0x02da A[Catch: Exception -> 0x0439, all -> 0x045d, TRY_LEAVE, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:132:0x0327 A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:137:0x033e A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:203:0x0339 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:215:0x032a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00d6 A[Catch: all -> 0x043b, Exception -> 0x0440, TryCatch #7 {Exception -> 0x0440, all -> 0x043b, blocks: (B:5:0x001c, B:7:0x0022, B:9:0x0043, B:11:0x0075, B:13:0x0080, B:15:0x008a, B:17:0x00a3, B:19:0x00b3, B:21:0x00b7, B:23:0x00bf, B:26:0x00cf, B:28:0x00d6, B:30:0x00dc, B:32:0x00ec, B:33:0x00f0, B:36:0x00f7, B:37:0x010d, B:40:0x0110, B:41:0x0126, B:42:0x0127, B:44:0x0137, B:45:0x0157, B:46:0x015e, B:47:0x015f, B:48:0x0166, B:49:0x0167, B:50:0x016a, B:54:0x0178, B:57:0x0181, B:59:0x0187, B:60:0x018e, B:66:0x019f, B:68:0x01a5, B:70:0x0207, B:72:0x020d, B:74:0x021c, B:75:0x0220, B:76:0x0227, B:78:0x022b, B:63:0x0195), top: B:195:0x001c }] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x020d A[Catch: all -> 0x043b, Exception -> 0x0440, TryCatch #7 {Exception -> 0x0440, all -> 0x043b, blocks: (B:5:0x001c, B:7:0x0022, B:9:0x0043, B:11:0x0075, B:13:0x0080, B:15:0x008a, B:17:0x00a3, B:19:0x00b3, B:21:0x00b7, B:23:0x00bf, B:26:0x00cf, B:28:0x00d6, B:30:0x00dc, B:32:0x00ec, B:33:0x00f0, B:36:0x00f7, B:37:0x010d, B:40:0x0110, B:41:0x0126, B:42:0x0127, B:44:0x0137, B:45:0x0157, B:46:0x015e, B:47:0x015f, B:48:0x0166, B:49:0x0167, B:50:0x016a, B:54:0x0178, B:57:0x0181, B:59:0x0187, B:60:0x018e, B:66:0x019f, B:68:0x01a5, B:70:0x0207, B:72:0x020d, B:74:0x021c, B:75:0x0220, B:76:0x0227, B:78:0x022b, B:63:0x0195), top: B:195:0x001c }] */
        /* JADX WARN: Removed duplicated region for block: B:78:0x022b A[Catch: all -> 0x043b, Exception -> 0x0440, TRY_LEAVE, TryCatch #7 {Exception -> 0x0440, all -> 0x043b, blocks: (B:5:0x001c, B:7:0x0022, B:9:0x0043, B:11:0x0075, B:13:0x0080, B:15:0x008a, B:17:0x00a3, B:19:0x00b3, B:21:0x00b7, B:23:0x00bf, B:26:0x00cf, B:28:0x00d6, B:30:0x00dc, B:32:0x00ec, B:33:0x00f0, B:36:0x00f7, B:37:0x010d, B:40:0x0110, B:41:0x0126, B:42:0x0127, B:44:0x0137, B:45:0x0157, B:46:0x015e, B:47:0x015f, B:48:0x0166, B:49:0x0167, B:50:0x016a, B:54:0x0178, B:57:0x0181, B:59:0x0187, B:60:0x018e, B:66:0x019f, B:68:0x01a5, B:70:0x0207, B:72:0x020d, B:74:0x021c, B:75:0x0220, B:76:0x0227, B:78:0x022b, B:63:0x0195), top: B:195:0x001c }] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x023e  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x024d A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:89:0x025b A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x026e A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x027c A[Catch: Exception -> 0x0439, all -> 0x045d, TryCatch #2 {Exception -> 0x0439, blocks: (B:134:0x032f, B:137:0x033e, B:139:0x0358, B:142:0x0360, B:144:0x03a8, B:146:0x03c1, B:148:0x03d4, B:149:0x03d7, B:151:0x03dd, B:152:0x03e7, B:154:0x03eb, B:156:0x03ef, B:145:0x03b3, B:141:0x035d, B:80:0x0233, B:82:0x0240, B:84:0x024d, B:87:0x0256, B:89:0x025b, B:90:0x025f, B:92:0x026e, B:95:0x0277, B:97:0x027c, B:99:0x0282, B:114:0x02b7, B:102:0x028b, B:104:0x0293, B:106:0x0299, B:108:0x029f, B:111:0x02a4, B:113:0x02b0, B:116:0x02c3, B:118:0x02d2, B:120:0x02da, B:115:0x02be, B:124:0x02ee, B:130:0x0315, B:132:0x0327, B:157:0x03fd, B:158:0x0406, B:159:0x0407, B:160:0x0410, B:161:0x0411, B:162:0x041a, B:163:0x041b, B:164:0x0424, B:165:0x0425, B:166:0x042e, B:167:0x042f, B:168:0x0438), top: B:190:0x0020 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void load(com.badlogic.gdx.files.FileHandle r23, boolean r24) {
            /*
                Method dump skipped, instructions count: 1133
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.BitmapFont.BitmapFontData.load(com.badlogic.gdx.files.FileHandle, boolean):void");
        }

        public void setGlyph(int i, Glyph glyph) {
            Glyph[][] glyphArr = this.glyphs;
            int i2 = i / 512;
            Glyph[] glyphArr2 = glyphArr[i2];
            if (glyphArr2 == null) {
                glyphArr2 = new Glyph[512];
                glyphArr[i2] = glyphArr2;
            }
            glyphArr2[i & 511] = glyph;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00aa  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00b5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void setGlyphRegion(com.badlogic.gdx.graphics.g2d.BitmapFont.Glyph r18, com.badlogic.gdx.graphics.g2d.TextureRegion r19) {
            /*
                Method dump skipped, instructions count: 192
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.BitmapFont.BitmapFontData.setGlyphRegion(com.badlogic.gdx.graphics.g2d.BitmapFont$Glyph, com.badlogic.gdx.graphics.g2d.TextureRegion):void");
        }

        public void setLineHeight(float f) {
            float f2 = f * this.scaleY;
            this.lineHeight = f2;
            if (!this.flipped) {
                f2 = -f2;
            }
            this.down = f2;
        }

        public BitmapFontData(FileHandle fileHandle, boolean z) {
            this.capHeight = 1.0f;
            this.blankLineScale = 1.0f;
            this.scaleX = 1.0f;
            this.scaleY = 1.0f;
            this.glyphs = new Glyph[128];
            this.xHeight = 1.0f;
            this.xChars = new char[]{'x', 'e', 'a', 'o', 'n', Advice.OffsetMapping.ForOrigin.Renderer.ForJavaSignature.SYMBOL, Advice.OffsetMapping.ForOrigin.Renderer.ForReturnTypeName.SYMBOL, 'c', 'u', Advice.OffsetMapping.ForOrigin.Renderer.ForMethodName.SYMBOL, 'v', 'w', 'z'};
            this.capChars = new char[]{'M', 'N', 'B', 'D', 'C', 'E', 'F', 'K', 'A', 'G', 'H', 'I', 'J', 'L', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
            this.fontFile = fileHandle;
            this.flipped = z;
            load(fileHandle, z);
        }

        public void setScale(float f) {
            setScale(f, f);
        }
    }

    /* loaded from: classes.dex */
    public static class Glyph {
        public boolean fixedWidth;
        public int height;

        /* renamed from: id */
        public int f4000id;
        public byte[][] kerning;
        public int page = 0;
        public int srcX;
        public int srcY;

        /* renamed from: u */
        public float f4001u;

        /* renamed from: u2 */
        public float f4002u2;

        /* renamed from: v */
        public float f4003v;

        /* renamed from: v2 */
        public float f4004v2;
        public int width;
        public int xadvance;
        public int xoffset;
        public int yoffset;

        public String toString() {
            return Character.toString((char) this.f4000id);
        }

        public int getKerning(char c) {
            byte[] bArr;
            byte[][] bArr2 = this.kerning;
            if (bArr2 != null && (bArr = bArr2[c >>> '\t']) != null) {
                return bArr[c & 511];
            }
            return 0;
        }

        public void setKerning(int i, int i2) {
            if (this.kerning == null) {
                this.kerning = new byte[128];
            }
            byte[][] bArr = this.kerning;
            int i3 = i >>> 9;
            byte[] bArr2 = bArr[i3];
            if (bArr2 == null) {
                bArr2 = new byte[512];
                bArr[i3] = bArr2;
            }
            bArr2[i & 511] = (byte) i2;
        }
    }

    public BitmapFont() {
        this(Gdx.files.classpath("com/badlogic/gdx/utils/lsans-15.fnt"), Gdx.files.classpath("com/badlogic/gdx/utils/lsans-15.png"), false, true);
    }

    public GlyphLayout draw(Batch batch, CharSequence charSequence, float f, float f2) {
        this.f3996d.clear();
        GlyphLayout addText = this.f3996d.addText(charSequence, f, f2);
        this.f3996d.draw(batch);
        return addText;
    }

    public float getAscent() {
        return this.f3994a.ascent;
    }

    public BitmapFontCache getCache() {
        return this.f3996d;
    }

    public float getCapHeight() {
        return this.f3994a.capHeight;
    }

    public Color getColor() {
        return this.f3996d.getColor();
    }

    public BitmapFontData getData() {
        return this.f3994a;
    }

    public float getDescent() {
        return this.f3994a.descent;
    }

    public float getLineHeight() {
        return this.f3994a.lineHeight;
    }

    public TextureRegion getRegion() {
        return this.f3995b.first();
    }

    public Array<TextureRegion> getRegions() {
        return this.f3995b;
    }

    public float getScaleX() {
        return this.f3994a.scaleX;
    }

    public float getScaleY() {
        return this.f3994a.scaleY;
    }

    public float getSpaceXadvance() {
        return this.f3994a.spaceXadvance;
    }

    public float getXHeight() {
        return this.f3994a.xHeight;
    }

    public boolean isFlipped() {
        return this.f3997k;
    }

    public BitmapFontCache newFontCache() {
        return new BitmapFontCache(this, this.f3998p);
    }

    public boolean ownsTexture() {
        return this.f3999q;
    }

    public void setColor(Color color) {
        this.f3996d.getColor().set(color);
    }

    public void setOwnsTexture(boolean z) {
        this.f3999q = z;
    }

    public String toString() {
        String str = this.f3994a.name;
        return str != null ? str : super.toString();
    }

    public boolean usesIntegerPositions() {
        return this.f3998p;
    }

    public BitmapFont(boolean z) {
        this(Gdx.files.classpath("com/badlogic/gdx/utils/lsans-15.fnt"), Gdx.files.classpath("com/badlogic/gdx/utils/lsans-15.png"), z, true);
    }

    /* renamed from: a */
    public void mo24233a(BitmapFontData bitmapFontData) {
        Glyph[][] glyphArr;
        for (Glyph[] glyphArr2 : bitmapFontData.glyphs) {
            if (glyphArr2 != null) {
                for (Glyph glyph : glyphArr2) {
                    if (glyph != null) {
                        bitmapFontData.setGlyphRegion(glyph, this.f3995b.get(glyph.page));
                    }
                }
            }
        }
        Glyph glyph2 = bitmapFontData.missingGlyph;
        if (glyph2 != null) {
            bitmapFontData.setGlyphRegion(glyph2, this.f3995b.get(glyph2.page));
        }
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f3999q) {
            int i = 0;
            while (true) {
                Array<TextureRegion> array = this.f3995b;
                if (i < array.size) {
                    array.get(i).getTexture().dispose();
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public TextureRegion getRegion(int i) {
        return this.f3995b.get(i);
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f3996d.getColor().set(f, f2, f3, f4);
    }

    public void setFixedWidthGlyphs(CharSequence charSequence) {
        int i;
        BitmapFontData bitmapFontData = this.f3994a;
        int length = charSequence.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            Glyph glyph = bitmapFontData.getGlyph(charSequence.charAt(i3));
            if (glyph != null && (i = glyph.xadvance) > i2) {
                i2 = i;
            }
        }
        int length2 = charSequence.length();
        for (int i4 = 0; i4 < length2; i4++) {
            Glyph glyph2 = bitmapFontData.getGlyph(charSequence.charAt(i4));
            if (glyph2 != null) {
                glyph2.xoffset += (i2 - glyph2.xadvance) / 2;
                glyph2.xadvance = i2;
                glyph2.kerning = null;
                glyph2.fixedWidth = true;
            }
        }
    }

    public void setUseIntegerPositions(boolean z) {
        this.f3998p = z;
        this.f3996d.setUseIntegerPositions(z);
    }

    public BitmapFont(FileHandle fileHandle, TextureRegion textureRegion) {
        this(fileHandle, textureRegion, false);
    }

    public BitmapFont(FileHandle fileHandle, TextureRegion textureRegion, boolean z) {
        this(new BitmapFontData(fileHandle, z), textureRegion, true);
    }

    public GlyphLayout draw(Batch batch, CharSequence charSequence, float f, float f2, float f3, int i, boolean z) {
        this.f3996d.clear();
        GlyphLayout addText = this.f3996d.addText(charSequence, f, f2, f3, i, z);
        this.f3996d.draw(batch);
        return addText;
    }

    public BitmapFont(FileHandle fileHandle) {
        this(fileHandle, false);
    }

    public BitmapFont(FileHandle fileHandle, boolean z) {
        this(new BitmapFontData(fileHandle, z), (TextureRegion) null, true);
    }

    public BitmapFont(FileHandle fileHandle, FileHandle fileHandle2, boolean z) {
        this(fileHandle, fileHandle2, z, true);
    }

    public GlyphLayout draw(Batch batch, CharSequence charSequence, float f, float f2, int i, int i2, float f3, int i3, boolean z) {
        this.f3996d.clear();
        GlyphLayout addText = this.f3996d.addText(charSequence, f, f2, i, i2, f3, i3, z);
        this.f3996d.draw(batch);
        return addText;
    }

    public BitmapFont(FileHandle fileHandle, FileHandle fileHandle2, boolean z, boolean z2) {
        this(new BitmapFontData(fileHandle, z), new TextureRegion(new Texture(fileHandle2, false)), z2);
        this.f3999q = true;
    }

    public BitmapFont(BitmapFontData bitmapFontData, TextureRegion textureRegion, boolean z) {
        this(bitmapFontData, textureRegion != null ? Array.with(textureRegion) : null, z);
    }

    public GlyphLayout draw(Batch batch, CharSequence charSequence, float f, float f2, int i, int i2, float f3, int i3, boolean z, String str) {
        this.f3996d.clear();
        GlyphLayout addText = this.f3996d.addText(charSequence, f, f2, i, i2, f3, i3, z, str);
        this.f3996d.draw(batch);
        return addText;
    }

    public BitmapFont(BitmapFontData bitmapFontData, Array<TextureRegion> array, boolean z) {
        FileHandle fileHandle;
        this.f3997k = bitmapFontData.flipped;
        this.f3994a = bitmapFontData;
        this.f3998p = z;
        if (array != null && array.size != 0) {
            this.f3995b = array;
            this.f3999q = false;
        } else {
            String[] strArr = bitmapFontData.imagePaths;
            if (strArr != null) {
                int length = strArr.length;
                this.f3995b = new Array<>(length);
                for (int i = 0; i < length; i++) {
                    FileHandle fileHandle2 = bitmapFontData.fontFile;
                    if (fileHandle2 == null) {
                        fileHandle = Gdx.files.internal(bitmapFontData.imagePaths[i]);
                    } else {
                        fileHandle = Gdx.files.getFileHandle(bitmapFontData.imagePaths[i], fileHandle2.type());
                    }
                    this.f3995b.add(new TextureRegion(new Texture(fileHandle, false)));
                }
                this.f3999q = true;
            } else {
                throw new IllegalArgumentException("If no regions are specified, the font data must have an images path.");
            }
        }
        this.f3996d = newFontCache();
        mo24233a(bitmapFontData);
    }

    public void draw(Batch batch, GlyphLayout glyphLayout, float f, float f2) {
        this.f3996d.clear();
        this.f3996d.addText(glyphLayout, f, f2);
        this.f3996d.draw(batch);
    }
}
