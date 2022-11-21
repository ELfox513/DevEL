package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.glutils.PixmapTextureData;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.OrderedMap;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.Comparator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class PixmapPacker implements Disposable {

    /* renamed from: z */
    public static Pattern f4172z = Pattern.compile("(.+)_(\\d+)$");

    /* renamed from: a */
    public boolean f4173a;

    /* renamed from: b */
    public boolean f4174b;

    /* renamed from: d */
    public int f4175d;

    /* renamed from: k */
    public int f4176k;

    /* renamed from: p */
    public Pixmap.Format f4177p;

    /* renamed from: q */
    public int f4178q;

    /* renamed from: r */
    public boolean f4179r;

    /* renamed from: s */
    public boolean f4180s;

    /* renamed from: t */
    public boolean f4181t;

    /* renamed from: u */
    public int f4182u;

    /* renamed from: v */
    public Color f4183v;

    /* renamed from: w */
    public final Array<Page> f4184w;

    /* renamed from: x */
    public PackStrategy f4185x;

    /* renamed from: y */
    public Color f4186y;

    /* loaded from: classes.dex */
    public static class GuillotineStrategy implements PackStrategy {

        /* renamed from: a */
        public Comparator<Pixmap> f4187a;

        /* loaded from: classes.dex */
        public static final class Node {
            public boolean full;
            public Node leftChild;
            public final Rectangle rect = new Rectangle();
            public Node rightChild;
        }

        /* loaded from: classes.dex */
        public static class GuillotinePage extends Page {

            /* renamed from: f */
            public Node f4189f;

            public GuillotinePage(PixmapPacker pixmapPacker) {
                super(pixmapPacker);
                Node node = new Node();
                this.f4189f = node;
                Rectangle rectangle = node.rect;
                int i = pixmapPacker.f4178q;
                rectangle.f5523x = i;
                rectangle.f5524y = i;
                rectangle.width = pixmapPacker.f4175d - (i * 2);
                rectangle.height = pixmapPacker.f4176k - (i * 2);
            }
        }

        /* renamed from: a */
        public final Node m24192a(Node node, Rectangle rectangle) {
            Node node2;
            boolean z = node.full;
            if (!z && (node2 = node.leftChild) != null && node.rightChild != null) {
                Node m24192a = m24192a(node2, rectangle);
                if (m24192a == null) {
                    return m24192a(node.rightChild, rectangle);
                }
                return m24192a;
            } else if (z) {
                return null;
            } else {
                Rectangle rectangle2 = node.rect;
                float f = rectangle2.width;
                float f2 = rectangle.width;
                if (f == f2 && rectangle2.height == rectangle.height) {
                    return node;
                }
                if (f < f2 || rectangle2.height < rectangle.height) {
                    return null;
                }
                node.leftChild = new Node();
                Node node3 = new Node();
                node.rightChild = node3;
                Rectangle rectangle3 = node.rect;
                float f3 = rectangle3.width;
                float f4 = rectangle.width;
                int i = ((int) f3) - ((int) f4);
                float f5 = rectangle3.height;
                float f6 = rectangle.height;
                if (i > ((int) f5) - ((int) f6)) {
                    Rectangle rectangle4 = node.leftChild.rect;
                    rectangle4.f5523x = rectangle3.f5523x;
                    rectangle4.f5524y = rectangle3.f5524y;
                    rectangle4.width = f4;
                    rectangle4.height = f5;
                    Rectangle rectangle5 = node3.rect;
                    float f7 = rectangle3.f5523x;
                    float f8 = rectangle.width;
                    rectangle5.f5523x = f7 + f8;
                    rectangle5.f5524y = rectangle3.f5524y;
                    rectangle5.width = rectangle3.width - f8;
                    rectangle5.height = rectangle3.height;
                } else {
                    Rectangle rectangle6 = node.leftChild.rect;
                    rectangle6.f5523x = rectangle3.f5523x;
                    rectangle6.f5524y = rectangle3.f5524y;
                    rectangle6.width = f3;
                    rectangle6.height = f6;
                    Rectangle rectangle7 = node3.rect;
                    rectangle7.f5523x = rectangle3.f5523x;
                    float f9 = rectangle3.f5524y;
                    float f10 = rectangle.height;
                    rectangle7.f5524y = f9 + f10;
                    rectangle7.width = rectangle3.width;
                    rectangle7.height = rectangle3.height - f10;
                }
                return m24192a(node.leftChild, rectangle);
            }
        }

        @Override // com.badlogic.gdx.graphics.g2d.PixmapPacker.PackStrategy
        public Page pack(PixmapPacker pixmapPacker, String str, Rectangle rectangle) {
            GuillotinePage guillotinePage;
            Array<Page> array = pixmapPacker.f4184w;
            if (array.size == 0) {
                guillotinePage = new GuillotinePage(pixmapPacker);
                pixmapPacker.f4184w.add(guillotinePage);
            } else {
                guillotinePage = (GuillotinePage) array.peek();
            }
            float f = pixmapPacker.f4178q;
            rectangle.width += f;
            rectangle.height += f;
            Node m24192a = m24192a(guillotinePage.f4189f, rectangle);
            if (m24192a == null) {
                guillotinePage = new GuillotinePage(pixmapPacker);
                pixmapPacker.f4184w.add(guillotinePage);
                m24192a = m24192a(guillotinePage.f4189f, rectangle);
            }
            m24192a.full = true;
            Rectangle rectangle2 = m24192a.rect;
            rectangle.set(rectangle2.f5523x, rectangle2.f5524y, rectangle2.width - f, rectangle2.height - f);
            return guillotinePage;
        }

        @Override // com.badlogic.gdx.graphics.g2d.PixmapPacker.PackStrategy
        public void sort(Array<Pixmap> array) {
            if (this.f4187a == null) {
                this.f4187a = new Comparator<Pixmap>() { // from class: com.badlogic.gdx.graphics.g2d.PixmapPacker.GuillotineStrategy.1
                    @Override // java.util.Comparator
                    public int compare(Pixmap pixmap, Pixmap pixmap2) {
                        return Math.max(pixmap.getWidth(), pixmap.getHeight()) - Math.max(pixmap2.getWidth(), pixmap2.getHeight());
                    }
                };
            }
            array.sort(this.f4187a);
        }
    }

    /* loaded from: classes.dex */
    public interface PackStrategy {
        Page pack(PixmapPacker pixmapPacker, String str, Rectangle rectangle);

        void sort(Array<Pixmap> array);
    }

    /* loaded from: classes.dex */
    public static class Page {

        /* renamed from: b */
        public Pixmap f4191b;

        /* renamed from: c */
        public Texture f4192c;

        /* renamed from: e */
        public boolean f4194e;

        /* renamed from: a */
        public OrderedMap<String, PixmapPackerRectangle> f4190a = new OrderedMap<>();

        /* renamed from: d */
        public final Array<String> f4193d = new Array<>();

        public Pixmap getPixmap() {
            return this.f4191b;
        }

        public OrderedMap<String, PixmapPackerRectangle> getRects() {
            return this.f4190a;
        }

        public Texture getTexture() {
            return this.f4192c;
        }

        public boolean updateTexture(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
            Texture texture = this.f4192c;
            if (texture != null) {
                if (!this.f4194e) {
                    return false;
                }
                texture.load(texture.getTextureData());
            } else {
                Pixmap pixmap = this.f4191b;
                Texture texture2 = new Texture(new PixmapTextureData(pixmap, pixmap.getFormat(), z, false, true)) { // from class: com.badlogic.gdx.graphics.g2d.PixmapPacker.Page.1
                    @Override // com.badlogic.gdx.graphics.Texture, com.badlogic.gdx.graphics.GLTexture, com.badlogic.gdx.utils.Disposable
                    public void dispose() {
                        super.dispose();
                        Page.this.f4191b.dispose();
                    }
                };
                this.f4192c = texture2;
                texture2.setFilter(textureFilter, textureFilter2);
            }
            this.f4194e = false;
            return true;
        }

        public Page(PixmapPacker pixmapPacker) {
            Pixmap pixmap = new Pixmap(pixmapPacker.f4175d, pixmapPacker.f4176k, pixmapPacker.f4177p);
            this.f4191b = pixmap;
            pixmap.setBlending(Pixmap.Blending.None);
            this.f4191b.setColor(pixmapPacker.getTransparentColor());
            this.f4191b.fill();
        }
    }

    /* loaded from: classes.dex */
    public static class SkylineStrategy implements PackStrategy {

        /* renamed from: a */
        public Comparator<Pixmap> f4202a;

        /* loaded from: classes.dex */
        public static class SkylinePage extends Page {

            /* renamed from: f */
            public Array<Row> f4204f;

            /* loaded from: classes.dex */
            public static class Row {

                /* renamed from: a */
                public int f4205a;

                /* renamed from: b */
                public int f4206b;

                /* renamed from: c */
                public int f4207c;
            }

            public SkylinePage(PixmapPacker pixmapPacker) {
                super(pixmapPacker);
                this.f4204f = new Array<>();
            }
        }

        @Override // com.badlogic.gdx.graphics.g2d.PixmapPacker.PackStrategy
        public Page pack(PixmapPacker pixmapPacker, String str, Rectangle rectangle) {
            int i;
            int i2 = pixmapPacker.f4178q;
            int i3 = i2 * 2;
            int i4 = pixmapPacker.f4175d - i3;
            int i5 = pixmapPacker.f4176k - i3;
            int i6 = ((int) rectangle.width) + i2;
            int i7 = ((int) rectangle.height) + i2;
            int i8 = pixmapPacker.f4184w.size;
            for (int i9 = 0; i9 < i8; i9++) {
                SkylinePage skylinePage = (SkylinePage) pixmapPacker.f4184w.get(i9);
                SkylinePage.Row row = null;
                int i10 = skylinePage.f4204f.size - 1;
                for (int i11 = 0; i11 < i10; i11++) {
                    SkylinePage.Row row2 = skylinePage.f4204f.get(i11);
                    if (row2.f4205a + i6 < i4 && row2.f4206b + i7 < i5 && i7 <= (i = row2.f4207c) && (row == null || i < row.f4207c)) {
                        row = row2;
                    }
                }
                if (row == null) {
                    SkylinePage.Row peek = skylinePage.f4204f.peek();
                    int i12 = peek.f4206b;
                    if (i12 + i7 < i5) {
                        if (peek.f4205a + i6 < i4) {
                            peek.f4207c = Math.max(peek.f4207c, i7);
                            row = peek;
                        } else if (i12 + peek.f4207c + i7 < i5) {
                            row = new SkylinePage.Row();
                            row.f4206b = peek.f4206b + peek.f4207c;
                            row.f4207c = i7;
                            skylinePage.f4204f.add(row);
                        }
                    } else {
                        continue;
                    }
                }
                if (row != null) {
                    int i13 = row.f4205a;
                    rectangle.f5523x = i13;
                    rectangle.f5524y = row.f4206b;
                    row.f4205a = i13 + i6;
                    return skylinePage;
                }
            }
            SkylinePage skylinePage2 = new SkylinePage(pixmapPacker);
            pixmapPacker.f4184w.add(skylinePage2);
            SkylinePage.Row row3 = new SkylinePage.Row();
            row3.f4205a = i6 + i2;
            row3.f4206b = i2;
            row3.f4207c = i7;
            skylinePage2.f4204f.add(row3);
            float f = i2;
            rectangle.f5523x = f;
            rectangle.f5524y = f;
            return skylinePage2;
        }

        @Override // com.badlogic.gdx.graphics.g2d.PixmapPacker.PackStrategy
        public void sort(Array<Pixmap> array) {
            if (this.f4202a == null) {
                this.f4202a = new Comparator<Pixmap>() { // from class: com.badlogic.gdx.graphics.g2d.PixmapPacker.SkylineStrategy.1
                    @Override // java.util.Comparator
                    public int compare(Pixmap pixmap, Pixmap pixmap2) {
                        return pixmap.getHeight() - pixmap2.getHeight();
                    }
                };
            }
            array.sort(this.f4202a);
        }
    }

    public PixmapPacker(int i, int i2, Pixmap.Format format, int i3, boolean z) {
        this(i, i2, format, i3, z, false, false, new GuillotineStrategy());
    }

    /* renamed from: c */
    public final int[] m24193c(Pixmap pixmap) {
        int width;
        int height;
        int m24194b = m24194b(pixmap, 1, 0, true, true);
        int m24194b2 = m24194b(pixmap, m24194b, 0, false, true);
        int m24194b3 = m24194b(pixmap, 0, 1, true, false);
        int m24194b4 = m24194b(pixmap, 0, m24194b3, false, false);
        m24194b(pixmap, m24194b2 + 1, 0, true, true);
        m24194b(pixmap, 0, m24194b4 + 1, true, false);
        if (m24194b == 0 && m24194b2 == 0 && m24194b3 == 0 && m24194b4 == 0) {
            return null;
        }
        if (m24194b != 0) {
            m24194b--;
            width = (pixmap.getWidth() - 2) - (m24194b2 - 1);
        } else {
            width = pixmap.getWidth() - 2;
        }
        if (m24194b3 != 0) {
            m24194b3--;
            height = (pixmap.getHeight() - 2) - (m24194b4 - 1);
        } else {
            height = pixmap.getHeight() - 2;
        }
        return new int[]{m24194b, width, m24194b3, height};
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public synchronized void dispose() {
        Array.ArrayIterator<Page> it = this.f4184w.iterator();
        while (it.hasNext()) {
            Page next = it.next();
            if (next.f4192c == null) {
                next.f4191b.dispose();
            }
        }
        this.f4174b = true;
    }

    public synchronized TextureAtlas generateTextureAtlas(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
        TextureAtlas textureAtlas;
        textureAtlas = new TextureAtlas();
        updateTextureAtlas(textureAtlas, textureFilter, textureFilter2, z);
        return textureAtlas;
    }

    public boolean getDuplicateBorder() {
        return this.f4179r;
    }

    public boolean getPackToTexture() {
        return this.f4173a;
    }

    public int getPadding() {
        return this.f4178q;
    }

    public synchronized Page getPage(String str) {
        Array.ArrayIterator<Page> it = this.f4184w.iterator();
        while (it.hasNext()) {
            Page next = it.next();
            if (next.f4190a.get(str) != null) {
                return next;
            }
        }
        return null;
    }

    public Pixmap.Format getPageFormat() {
        return this.f4177p;
    }

    public int getPageHeight() {
        return this.f4176k;
    }

    public synchronized int getPageIndex(String str) {
        int i = 0;
        while (true) {
            Array<Page> array = this.f4184w;
            if (i < array.size) {
                if (array.get(i).f4190a.get(str) != null) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    public int getPageWidth() {
        return this.f4175d;
    }

    public Array<Page> getPages() {
        return this.f4184w;
    }

    public synchronized Rectangle getRect(String str) {
        Array.ArrayIterator<Page> it = this.f4184w.iterator();
        while (it.hasNext()) {
            PixmapPackerRectangle pixmapPackerRectangle = it.next().f4190a.get(str);
            if (pixmapPackerRectangle != null) {
                return pixmapPackerRectangle;
            }
        }
        return null;
    }

    public Color getTransparentColor() {
        return this.f4183v;
    }

    public synchronized Rectangle pack(Pixmap pixmap) {
        return pack(null, pixmap);
    }

    public void setDuplicateBorder(boolean z) {
        this.f4179r = z;
    }

    public void setPackToTexture(boolean z) {
        this.f4173a = z;
    }

    public void setPadding(int i) {
        this.f4178q = i;
    }

    public void setPageFormat(Pixmap.Format format) {
        this.f4177p = format;
    }

    public void setPageHeight(int i) {
        this.f4176k = i;
    }

    public void setPageWidth(int i) {
        this.f4175d = i;
    }

    public void setTransparentColor(Color color) {
        this.f4183v.set(color);
    }

    public void sort(Array<Pixmap> array) {
        this.f4185x.sort(array);
    }

    public synchronized void updatePageTextures(Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
        Array.ArrayIterator<Page> it = this.f4184w.iterator();
        while (it.hasNext()) {
            it.next().updateTexture(textureFilter, textureFilter2, z);
        }
    }

    public synchronized void updateTextureAtlas(TextureAtlas textureAtlas, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
        updateTextureAtlas(textureAtlas, textureFilter, textureFilter2, z, true);
    }

    public synchronized void updateTextureRegions(Array<TextureRegion> array, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z) {
        updatePageTextures(textureFilter, textureFilter2, z);
        while (true) {
            int i = array.size;
            Array<Page> array2 = this.f4184w;
            if (i < array2.size) {
                array.add(new TextureRegion(array2.get(i).f4192c));
            }
        }
    }

    public PixmapPacker(int i, int i2, Pixmap.Format format, int i3, boolean z, PackStrategy packStrategy) {
        this(i, i2, format, i3, z, false, false, packStrategy);
    }

    /* renamed from: a */
    public final int[] m24195a(Pixmap pixmap, int[] iArr) {
        int i;
        int i2;
        int width;
        int height = pixmap.getHeight() - 1;
        int width2 = pixmap.getWidth() - 1;
        int m24194b = m24194b(pixmap, 1, height, true, true);
        int m24194b2 = m24194b(pixmap, width2, 1, true, false);
        if (m24194b != 0) {
            i = m24194b(pixmap, m24194b + 1, height, false, true);
        } else {
            i = 0;
        }
        if (m24194b2 != 0) {
            i2 = m24194b(pixmap, width2, m24194b2 + 1, false, false);
        } else {
            i2 = 0;
        }
        m24194b(pixmap, i + 1, height, true, true);
        m24194b(pixmap, width2, i2 + 1, true, false);
        if (m24194b == 0 && i == 0 && m24194b2 == 0 && i2 == 0) {
            return null;
        }
        int i3 = -1;
        if (m24194b == 0 && i == 0) {
            width = -1;
            m24194b = -1;
        } else if (m24194b > 0) {
            m24194b--;
            width = (pixmap.getWidth() - 2) - (i - 1);
        } else {
            width = pixmap.getWidth() - 2;
        }
        if (m24194b2 == 0 && i2 == 0) {
            m24194b2 = -1;
        } else if (m24194b2 > 0) {
            m24194b2--;
            i3 = (pixmap.getHeight() - 2) - (i2 - 1);
        } else {
            i3 = pixmap.getHeight() - 2;
        }
        int[] iArr2 = {m24194b, width, m24194b2, i3};
        if (iArr != null && Arrays.equals(iArr2, iArr)) {
            return null;
        }
        return iArr2;
    }

    /* renamed from: b */
    public final int m24194b(Pixmap pixmap, int i, int i2, boolean z, boolean z2) {
        int i3;
        int height;
        int i4;
        Pixmap pixmap2;
        int[] iArr = new int[4];
        if (z2) {
            i3 = i;
        } else {
            i3 = i2;
        }
        if (z2) {
            height = pixmap.getWidth();
        } else {
            height = pixmap.getHeight();
        }
        if (z) {
            i4 = 255;
        } else {
            i4 = 0;
        }
        int i5 = i2;
        int i6 = i;
        for (int i7 = i3; i7 != height; i7++) {
            if (z2) {
                pixmap2 = pixmap;
                i6 = i7;
            } else {
                pixmap2 = pixmap;
                i5 = i7;
            }
            this.f4186y.set(pixmap2.getPixel(i6, i5));
            Color color = this.f4186y;
            int i8 = (int) (color.f3892r * 255.0f);
            iArr[0] = i8;
            int i9 = (int) (color.f3891g * 255.0f);
            iArr[1] = i9;
            int i10 = (int) (color.f3890b * 255.0f);
            iArr[2] = i10;
            int i11 = (int) (color.f3889a * 255.0f);
            iArr[3] = i11;
            if (i11 == i4) {
                return i7;
            }
            if (!z && (i8 != 0 || i9 != 0 || i10 != 0 || i11 != 255)) {
                PrintStream printStream = System.out;
                printStream.println(i6 + "  " + i5 + " " + iArr + " ");
            }
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x02b7, code lost:
        throw new com.badlogic.gdx.utils.GdxRuntimeException("Page size too small for pixmap.");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.badlogic.gdx.math.Rectangle pack(java.lang.String r28, com.badlogic.gdx.graphics.Pixmap r29) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.PixmapPacker.pack(java.lang.String, com.badlogic.gdx.graphics.Pixmap):com.badlogic.gdx.math.Rectangle");
    }

    public PixmapPacker(int i, int i2, Pixmap.Format format, int i3, boolean z, boolean z2, boolean z3, PackStrategy packStrategy) {
        this.f4183v = new Color(0.0f, 0.0f, 0.0f, 0.0f);
        this.f4184w = new Array<>();
        this.f4186y = new Color();
        this.f4175d = i;
        this.f4176k = i2;
        this.f4177p = format;
        this.f4178q = i3;
        this.f4179r = z;
        this.f4180s = z2;
        this.f4181t = z3;
        this.f4185x = packStrategy;
    }

    public synchronized void updateTextureAtlas(TextureAtlas textureAtlas, Texture.TextureFilter textureFilter, Texture.TextureFilter textureFilter2, boolean z, boolean z2) {
        updatePageTextures(textureFilter, textureFilter2, z);
        Array.ArrayIterator<Page> it = this.f4184w.iterator();
        while (it.hasNext()) {
            Page next = it.next();
            Array<String> array = next.f4193d;
            if (array.size > 0) {
                Array.ArrayIterator<String> it2 = array.iterator();
                while (it2.hasNext()) {
                    String next2 = it2.next();
                    PixmapPackerRectangle pixmapPackerRectangle = next.f4190a.get(next2);
                    TextureAtlas.AtlasRegion atlasRegion = new TextureAtlas.AtlasRegion(next.f4192c, (int) pixmapPackerRectangle.f5523x, (int) pixmapPackerRectangle.f5524y, (int) pixmapPackerRectangle.width, (int) pixmapPackerRectangle.height);
                    int[] iArr = pixmapPackerRectangle.f4196a;
                    if (iArr != null) {
                        atlasRegion.names = new String[]{"split", "pad"};
                        atlasRegion.values = new int[][]{iArr, pixmapPackerRectangle.f4197b};
                    }
                    int i = -1;
                    if (z2) {
                        Matcher matcher = f4172z.matcher(next2);
                        if (matcher.matches()) {
                            next2 = matcher.group(1);
                            i = Integer.parseInt(matcher.group(2));
                        }
                    }
                    atlasRegion.name = next2;
                    atlasRegion.index = i;
                    atlasRegion.offsetX = pixmapPackerRectangle.f4198d;
                    int i2 = pixmapPackerRectangle.f4201q;
                    atlasRegion.offsetY = (int) ((i2 - pixmapPackerRectangle.height) - pixmapPackerRectangle.f4199k);
                    atlasRegion.originalWidth = pixmapPackerRectangle.f4200p;
                    atlasRegion.originalHeight = i2;
                    textureAtlas.getRegions().add(atlasRegion);
                }
                next.f4193d.clear();
                textureAtlas.getTextures().add(next.f4192c);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PixmapPackerRectangle extends Rectangle {

        /* renamed from: a */
        public int[] f4196a;

        /* renamed from: b */
        public int[] f4197b;

        /* renamed from: d */
        public int f4198d;

        /* renamed from: k */
        public int f4199k;

        /* renamed from: p */
        public int f4200p;

        /* renamed from: q */
        public int f4201q;

        public PixmapPackerRectangle(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
            this.f4198d = 0;
            this.f4199k = 0;
            this.f4200p = i3;
            this.f4201q = i4;
        }

        public PixmapPackerRectangle(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(i, i2, i3, i4);
            this.f4198d = i5;
            this.f4199k = i6;
            this.f4200p = i7;
            this.f4201q = i8;
        }
    }
}
