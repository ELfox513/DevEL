package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.StreamUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Comparator;
/* loaded from: classes.dex */
public class TextureAtlas implements Disposable {

    /* renamed from: a */
    public final ObjectSet<Texture> f4319a;

    /* renamed from: b */
    public final Array<AtlasRegion> f4320b;

    /* loaded from: classes.dex */
    public static class AtlasRegion extends TextureRegion {
        public int degrees;
        public int index;
        public String name;
        @Null
        public String[] names;
        public float offsetX;
        public float offsetY;
        public int originalHeight;
        public int originalWidth;
        public int packedHeight;
        public int packedWidth;
        public boolean rotate;
        @Null
        public int[][] values;

        public AtlasRegion(Texture texture, int i, int i2, int i3, int i4) {
            super(texture, i, i2, i3, i4);
            this.index = -1;
            this.originalWidth = i3;
            this.originalHeight = i4;
            this.packedWidth = i3;
            this.packedHeight = i4;
        }

        public float getRotatedPackedHeight() {
            return this.rotate ? this.packedWidth : this.packedHeight;
        }

        public float getRotatedPackedWidth() {
            return this.rotate ? this.packedHeight : this.packedWidth;
        }

        public String toString() {
            return this.name;
        }

        @Null
        public int[] findValue(String str) {
            String[] strArr = this.names;
            if (strArr != null) {
                int length = strArr.length;
                for (int i = 0; i < length; i++) {
                    if (str.equals(this.names[i])) {
                        return this.values[i];
                    }
                }
                return null;
            }
            return null;
        }

        @Override // com.badlogic.gdx.graphics.g2d.TextureRegion
        public void flip(boolean z, boolean z2) {
            super.flip(z, z2);
            if (z) {
                this.offsetX = (this.originalWidth - this.offsetX) - getRotatedPackedWidth();
            }
            if (z2) {
                this.offsetY = (this.originalHeight - this.offsetY) - getRotatedPackedHeight();
            }
        }

        public AtlasRegion(AtlasRegion atlasRegion) {
            this.index = -1;
            setRegion(atlasRegion);
            this.index = atlasRegion.index;
            this.name = atlasRegion.name;
            this.offsetX = atlasRegion.offsetX;
            this.offsetY = atlasRegion.offsetY;
            this.packedWidth = atlasRegion.packedWidth;
            this.packedHeight = atlasRegion.packedHeight;
            this.originalWidth = atlasRegion.originalWidth;
            this.originalHeight = atlasRegion.originalHeight;
            this.rotate = atlasRegion.rotate;
            this.degrees = atlasRegion.degrees;
            this.names = atlasRegion.names;
            this.values = atlasRegion.values;
        }

        public AtlasRegion(TextureRegion textureRegion) {
            this.index = -1;
            setRegion(textureRegion);
            this.packedWidth = textureRegion.getRegionWidth();
            int regionHeight = textureRegion.getRegionHeight();
            this.packedHeight = regionHeight;
            this.originalWidth = this.packedWidth;
            this.originalHeight = regionHeight;
        }
    }

    /* loaded from: classes.dex */
    public static class AtlasSprite extends Sprite {

        /* renamed from: u */
        public final AtlasRegion f4321u;

        /* renamed from: v */
        public float f4322v;

        /* renamed from: w */
        public float f4323w;

        public AtlasSprite(AtlasRegion atlasRegion) {
            this.f4321u = new AtlasRegion(atlasRegion);
            this.f4322v = atlasRegion.offsetX;
            this.f4323w = atlasRegion.offsetY;
            setRegion(atlasRegion);
            setOrigin(atlasRegion.originalWidth / 2.0f, atlasRegion.originalHeight / 2.0f);
            int regionWidth = atlasRegion.getRegionWidth();
            int regionHeight = atlasRegion.getRegionHeight();
            if (atlasRegion.rotate) {
                super.rotate90(true);
                super.setBounds(atlasRegion.offsetX, atlasRegion.offsetY, regionHeight, regionWidth);
            } else {
                super.setBounds(atlasRegion.offsetX, atlasRegion.offsetY, regionWidth, regionHeight);
            }
            setColor(1.0f, 1.0f, 1.0f, 1.0f);
        }

        public AtlasRegion getAtlasRegion() {
            return this.f4321u;
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public float getHeight() {
            return (super.getHeight() / this.f4321u.getRotatedPackedHeight()) * this.f4321u.originalHeight;
        }

        public float getHeightRatio() {
            return super.getHeight() / this.f4321u.getRotatedPackedHeight();
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public float getOriginX() {
            return super.getOriginX() + this.f4321u.offsetX;
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public float getOriginY() {
            return super.getOriginY() + this.f4321u.offsetY;
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public float getWidth() {
            return (super.getWidth() / this.f4321u.getRotatedPackedWidth()) * this.f4321u.originalWidth;
        }

        public float getWidthRatio() {
            return super.getWidth() / this.f4321u.getRotatedPackedWidth();
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public float getX() {
            return super.getX() - this.f4321u.offsetX;
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public float getY() {
            return super.getY() - this.f4321u.offsetY;
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setOrigin(float f, float f2) {
            AtlasRegion atlasRegion = this.f4321u;
            super.setOrigin(f - atlasRegion.offsetX, f2 - atlasRegion.offsetY);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setOriginCenter() {
            AtlasRegion atlasRegion = this.f4321u;
            super.setOrigin((this.f4270l / 2.0f) - atlasRegion.offsetX, (this.f4271m / 2.0f) - atlasRegion.offsetY);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setPosition(float f, float f2) {
            AtlasRegion atlasRegion = this.f4321u;
            super.setPosition(f + atlasRegion.offsetX, f2 + atlasRegion.offsetY);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setSize(float f, float f2) {
            setBounds(getX(), getY(), f, f2);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setX(float f) {
            super.setX(f + this.f4321u.offsetX);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setY(float f) {
            super.setY(f + this.f4321u.offsetY);
        }

        public String toString() {
            return this.f4321u.toString();
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite, com.badlogic.gdx.graphics.g2d.TextureRegion
        public void flip(boolean z, boolean z2) {
            if (this.f4321u.rotate) {
                super.flip(z2, z);
            } else {
                super.flip(z, z2);
            }
            float originX = getOriginX();
            float originY = getOriginY();
            AtlasRegion atlasRegion = this.f4321u;
            float f = atlasRegion.offsetX;
            float f2 = atlasRegion.offsetY;
            float widthRatio = getWidthRatio();
            float heightRatio = getHeightRatio();
            AtlasRegion atlasRegion2 = this.f4321u;
            atlasRegion2.offsetX = this.f4322v;
            atlasRegion2.offsetY = this.f4323w;
            atlasRegion2.flip(z, z2);
            AtlasRegion atlasRegion3 = this.f4321u;
            float f3 = atlasRegion3.offsetX;
            this.f4322v = f3;
            float f4 = atlasRegion3.offsetY;
            this.f4323w = f4;
            float f5 = f3 * widthRatio;
            atlasRegion3.offsetX = f5;
            float f6 = f4 * heightRatio;
            atlasRegion3.offsetY = f6;
            translate(f5 - f, f6 - f2);
            setOrigin(originX, originY);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void setBounds(float f, float f2, float f3, float f4) {
            int i;
            int i2;
            AtlasRegion atlasRegion = this.f4321u;
            float f5 = f3 / atlasRegion.originalWidth;
            float f6 = f4 / atlasRegion.originalHeight;
            float f7 = this.f4322v * f5;
            atlasRegion.offsetX = f7;
            float f8 = this.f4323w * f6;
            atlasRegion.offsetY = f8;
            boolean z = atlasRegion.rotate;
            if (z) {
                i = atlasRegion.packedHeight;
            } else {
                i = atlasRegion.packedWidth;
            }
            if (z) {
                i2 = atlasRegion.packedWidth;
            } else {
                i2 = atlasRegion.packedHeight;
            }
            super.setBounds(f + f7, f2 + f8, i * f5, i2 * f6);
        }

        @Override // com.badlogic.gdx.graphics.g2d.Sprite
        public void rotate90(boolean z) {
            super.rotate90(z);
            float originX = getOriginX();
            float originY = getOriginY();
            AtlasRegion atlasRegion = this.f4321u;
            float f = atlasRegion.offsetX;
            float f2 = atlasRegion.offsetY;
            float widthRatio = getWidthRatio();
            float heightRatio = getHeightRatio();
            if (z) {
                AtlasRegion atlasRegion2 = this.f4321u;
                atlasRegion2.offsetX = f2;
                atlasRegion2.offsetY = ((atlasRegion2.originalHeight * heightRatio) - f) - (atlasRegion2.packedWidth * widthRatio);
            } else {
                AtlasRegion atlasRegion3 = this.f4321u;
                atlasRegion3.offsetX = ((atlasRegion3.originalWidth * widthRatio) - f2) - (atlasRegion3.packedHeight * heightRatio);
                atlasRegion3.offsetY = f;
            }
            AtlasRegion atlasRegion4 = this.f4321u;
            translate(atlasRegion4.offsetX - f, atlasRegion4.offsetY - f2);
            setOrigin(originX, originY);
        }

        public AtlasSprite(AtlasSprite atlasSprite) {
            this.f4321u = atlasSprite.f4321u;
            this.f4322v = atlasSprite.f4322v;
            this.f4323w = atlasSprite.f4323w;
            set(atlasSprite);
        }
    }

    /* loaded from: classes.dex */
    public static class TextureAtlasData {

        /* renamed from: a */
        public final Array<Page> f4324a = new Array<>();

        /* renamed from: b */
        public final Array<Region> f4325b = new Array<>();

        /* loaded from: classes.dex */
        public interface Field<T> {
            void parse(T t);
        }

        /* loaded from: classes.dex */
        public static class Region {
            public int degrees;
            public boolean flip;
            public int height;
            public int index = -1;
            public int left;
            public String name;
            @Null
            public String[] names;
            public float offsetX;
            public float offsetY;
            public int originalHeight;
            public int originalWidth;
            public Page page;
            public boolean rotate;
            public int top;
            @Null
            public int[][] values;
            public int width;

            @Null
            public int[] findValue(String str) {
                String[] strArr = this.names;
                if (strArr != null) {
                    int length = strArr.length;
                    for (int i = 0; i < length; i++) {
                        if (str.equals(this.names[i])) {
                            return this.values[i];
                        }
                    }
                    return null;
                }
                return null;
            }
        }

        public TextureAtlasData() {
        }

        /* renamed from: a */
        public static int m24182a(String[] strArr, @Null String str) {
            int indexOf;
            if (str == null) {
                return 0;
            }
            String trim = str.trim();
            if (trim.length() == 0 || (indexOf = trim.indexOf(58)) == -1) {
                return 0;
            }
            strArr[0] = trim.substring(0, indexOf).trim();
            int i = 1;
            int i2 = indexOf + 1;
            while (true) {
                int indexOf2 = trim.indexOf(44, i2);
                if (indexOf2 == -1) {
                    strArr[i] = trim.substring(i2).trim();
                    return i;
                }
                strArr[i] = trim.substring(i2, indexOf2).trim();
                i2 = indexOf2 + 1;
                if (i == 4) {
                    return 4;
                }
                i++;
            }
        }

        public Array<Page> getPages() {
            return this.f4324a;
        }

        public Array<Region> getRegions() {
            return this.f4325b;
        }

        /* loaded from: classes.dex */
        public static class Page {
            public Pixmap.Format format = Pixmap.Format.RGBA8888;
            public float height;
            public Texture.TextureFilter magFilter;
            public Texture.TextureFilter minFilter;
            public boolean pma;
            @Null
            public Texture texture;
            @Null
            public FileHandle textureFile;
            public Texture.TextureWrap uWrap;
            public boolean useMipMaps;
            public Texture.TextureWrap vWrap;
            public float width;

            public Page() {
                Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
                this.minFilter = textureFilter;
                this.magFilter = textureFilter;
                Texture.TextureWrap textureWrap = Texture.TextureWrap.ClampToEdge;
                this.uWrap = textureWrap;
                this.vWrap = textureWrap;
            }
        }

        public void load(FileHandle fileHandle, FileHandle fileHandle2, boolean z) {
            final String[] strArr = new String[5];
            ObjectMap objectMap = new ObjectMap(15, 0.99f);
            objectMap.put("size", new Field<Page>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.1
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Page page) {
                    page.width = Integer.parseInt(strArr[1]);
                    page.height = Integer.parseInt(strArr[2]);
                }
            });
            objectMap.put("format", new Field<Page>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.2
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Page page) {
                    page.format = Pixmap.Format.valueOf(strArr[1]);
                }
            });
            objectMap.put("filter", new Field<Page>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.3
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Page page) {
                    page.minFilter = Texture.TextureFilter.valueOf(strArr[1]);
                    page.magFilter = Texture.TextureFilter.valueOf(strArr[2]);
                    page.useMipMaps = page.minFilter.isMipMap();
                }
            });
            objectMap.put("repeat", new Field<Page>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.4
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Page page) {
                    if (strArr[1].indexOf(120) != -1) {
                        page.uWrap = Texture.TextureWrap.Repeat;
                    }
                    if (strArr[1].indexOf(121) != -1) {
                        page.vWrap = Texture.TextureWrap.Repeat;
                    }
                }
            });
            objectMap.put("pma", new Field<Page>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.5
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Page page) {
                    page.pma = strArr[1].equals("true");
                }
            });
            boolean z2 = true;
            final boolean[] zArr = {false};
            ObjectMap objectMap2 = new ObjectMap(127, 0.99f);
            objectMap2.put("xy", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.6
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    region.left = Integer.parseInt(strArr[1]);
                    region.top = Integer.parseInt(strArr[2]);
                }
            });
            objectMap2.put("size", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.7
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    region.width = Integer.parseInt(strArr[1]);
                    region.height = Integer.parseInt(strArr[2]);
                }
            });
            objectMap2.put("bounds", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.8
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    region.left = Integer.parseInt(strArr[1]);
                    region.top = Integer.parseInt(strArr[2]);
                    region.width = Integer.parseInt(strArr[3]);
                    region.height = Integer.parseInt(strArr[4]);
                }
            });
            objectMap2.put("offset", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.9
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    region.offsetX = Integer.parseInt(strArr[1]);
                    region.offsetY = Integer.parseInt(strArr[2]);
                }
            });
            objectMap2.put("orig", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.10
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    region.originalWidth = Integer.parseInt(strArr[1]);
                    region.originalHeight = Integer.parseInt(strArr[2]);
                }
            });
            objectMap2.put("offsets", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.11
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    region.offsetX = Integer.parseInt(strArr[1]);
                    region.offsetY = Integer.parseInt(strArr[2]);
                    region.originalWidth = Integer.parseInt(strArr[3]);
                    region.originalHeight = Integer.parseInt(strArr[4]);
                }
            });
            objectMap2.put("rotate", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.12
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    String str = strArr[1];
                    if (str.equals("true")) {
                        region.degrees = 90;
                    } else if (!str.equals("false")) {
                        region.degrees = Integer.parseInt(str);
                    }
                    region.rotate = region.degrees == 90;
                }
            });
            objectMap2.put("index", new Field<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.13
                @Override // com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Field
                public void parse(Region region) {
                    int parseInt = Integer.parseInt(strArr[1]);
                    region.index = parseInt;
                    if (parseInt != -1) {
                        zArr[0] = true;
                    }
                }
            });
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileHandle.read()), 1024);
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    while (readLine != null && readLine.trim().length() == 0) {
                        readLine = bufferedReader.readLine();
                    }
                    while (readLine != null && readLine.trim().length() != 0 && m24182a(strArr, readLine) != 0) {
                        readLine = bufferedReader.readLine();
                    }
                    Page page = null;
                    Array array = null;
                    Array array2 = null;
                    while (readLine != null) {
                        if (readLine.trim().length() == 0) {
                            readLine = bufferedReader.readLine();
                            page = null;
                        } else if (page == null) {
                            page = new Page();
                            page.textureFile = fileHandle2.child(readLine);
                            while (true) {
                                readLine = bufferedReader.readLine();
                                if (m24182a(strArr, readLine) == 0) {
                                    break;
                                }
                                Field field = (Field) objectMap.get(strArr[0]);
                                if (field != null) {
                                    field.parse(page);
                                }
                            }
                            this.f4324a.add(page);
                        } else {
                            Region region = new Region();
                            region.page = page;
                            region.name = readLine.trim();
                            if (z) {
                                region.flip = z2;
                            }
                            while (true) {
                                readLine = bufferedReader.readLine();
                                int m24182a = m24182a(strArr, readLine);
                                if (m24182a == 0) {
                                    break;
                                }
                                Field field2 = (Field) objectMap2.get(strArr[0]);
                                if (field2 != null) {
                                    field2.parse(region);
                                } else {
                                    if (array == null) {
                                        array = new Array(8);
                                        array2 = new Array(8);
                                    }
                                    array.add(strArr[0]);
                                    int[] iArr = new int[m24182a];
                                    int i = 0;
                                    while (i < m24182a) {
                                        int i2 = i + 1;
                                        try {
                                            iArr[i] = Integer.parseInt(strArr[i2]);
                                        } catch (NumberFormatException unused) {
                                        }
                                        i = i2;
                                    }
                                    array2.add(iArr);
                                }
                                z2 = true;
                            }
                            if (region.originalWidth == 0 && region.originalHeight == 0) {
                                region.originalWidth = region.width;
                                region.originalHeight = region.height;
                            }
                            if (array != null && array.size > 0) {
                                region.names = (String[]) array.toArray(String.class);
                                region.values = (int[][]) array2.toArray(int[].class);
                                array.clear();
                                array2.clear();
                            }
                            this.f4325b.add(region);
                        }
                    }
                    StreamUtils.closeQuietly(bufferedReader);
                    if (zArr[0]) {
                        this.f4325b.sort(new Comparator<Region>() { // from class: com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.14
                            @Override // java.util.Comparator
                            public int compare(Region region2, Region region3) {
                                int i3 = region2.index;
                                if (i3 == -1) {
                                    i3 = Integer.MAX_VALUE;
                                }
                                int i4 = region3.index;
                                return i3 - (i4 != -1 ? i4 : Integer.MAX_VALUE);
                            }
                        });
                    }
                } catch (Exception e) {
                    throw new GdxRuntimeException("Error reading texture atlas file: " + fileHandle, e);
                }
            } catch (Throwable th) {
                StreamUtils.closeQuietly(bufferedReader);
                throw th;
            }
        }

        public TextureAtlasData(FileHandle fileHandle, FileHandle fileHandle2, boolean z) {
            load(fileHandle, fileHandle2, z);
        }
    }

    public TextureAtlas() {
        this.f4319a = new ObjectSet<>(4);
        this.f4320b = new Array<>();
    }

    public AtlasRegion addRegion(String str, Texture texture, int i, int i2, int i3, int i4) {
        this.f4319a.add(texture);
        AtlasRegion atlasRegion = new AtlasRegion(texture, i, i2, i3, i4);
        atlasRegion.name = str;
        this.f4320b.add(atlasRegion);
        return atlasRegion;
    }

    @Null
    public Sprite createSprite(String str) {
        int i = this.f4320b.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f4320b.get(i2).name.equals(str)) {
                return m24183a(this.f4320b.get(i2));
            }
        }
        return null;
    }

    public Array<Sprite> createSprites() {
        Array<Sprite> array = new Array<>(true, this.f4320b.size, Sprite.class);
        int i = this.f4320b.size;
        for (int i2 = 0; i2 < i; i2++) {
            array.add(m24183a(this.f4320b.get(i2)));
        }
        return array;
    }

    @Null
    public AtlasRegion findRegion(String str) {
        int i = this.f4320b.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f4320b.get(i2).name.equals(str)) {
                return this.f4320b.get(i2);
            }
        }
        return null;
    }

    public Array<AtlasRegion> getRegions() {
        return this.f4320b;
    }

    public ObjectSet<Texture> getTextures() {
        return this.f4319a;
    }

    /* renamed from: a */
    public final Sprite m24183a(AtlasRegion atlasRegion) {
        if (atlasRegion.packedWidth == atlasRegion.originalWidth && atlasRegion.packedHeight == atlasRegion.originalHeight) {
            if (atlasRegion.rotate) {
                Sprite sprite = new Sprite(atlasRegion);
                sprite.setBounds(0.0f, 0.0f, atlasRegion.getRegionHeight(), atlasRegion.getRegionWidth());
                sprite.rotate90(true);
                return sprite;
            }
            return new Sprite(atlasRegion);
        }
        return new AtlasSprite(atlasRegion);
    }

    @Null
    public NinePatch createPatch(String str) {
        int i = this.f4320b.size;
        for (int i2 = 0; i2 < i; i2++) {
            AtlasRegion atlasRegion = this.f4320b.get(i2);
            if (atlasRegion.name.equals(str)) {
                int[] findValue = atlasRegion.findValue("split");
                if (findValue != null) {
                    NinePatch ninePatch = new NinePatch(atlasRegion, findValue[0], findValue[1], findValue[2], findValue[3]);
                    int[] findValue2 = atlasRegion.findValue("pad");
                    if (findValue2 != null) {
                        ninePatch.setPadding(findValue2[0], findValue2[1], findValue2[2], findValue2[3]);
                    }
                    return ninePatch;
                }
                throw new IllegalArgumentException("Region does not have ninepatch splits: " + str);
            }
        }
        return null;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        ObjectSet.ObjectSetIterator<Texture> it = this.f4319a.iterator();
        while (it.hasNext()) {
            it.next().dispose();
        }
        this.f4319a.clear(0);
    }

    public Array<AtlasRegion> findRegions(String str) {
        Array<AtlasRegion> array = new Array<>(AtlasRegion.class);
        int i = this.f4320b.size;
        for (int i2 = 0; i2 < i; i2++) {
            AtlasRegion atlasRegion = this.f4320b.get(i2);
            if (atlasRegion.name.equals(str)) {
                array.add(new AtlasRegion(atlasRegion));
            }
        }
        return array;
    }

    public void load(TextureAtlasData textureAtlasData) {
        int i;
        int i2;
        this.f4319a.ensureCapacity(textureAtlasData.f4324a.size);
        Array.ArrayIterator<TextureAtlasData.Page> it = textureAtlasData.f4324a.iterator();
        while (it.hasNext()) {
            TextureAtlasData.Page next = it.next();
            if (next.texture == null) {
                next.texture = new Texture(next.textureFile, next.format, next.useMipMaps);
            }
            next.texture.setFilter(next.minFilter, next.magFilter);
            next.texture.setWrap(next.uWrap, next.vWrap);
            this.f4319a.add(next.texture);
        }
        this.f4320b.ensureCapacity(textureAtlasData.f4325b.size);
        Array.ArrayIterator<TextureAtlasData.Region> it2 = textureAtlasData.f4325b.iterator();
        while (it2.hasNext()) {
            TextureAtlasData.Region next2 = it2.next();
            Texture texture = next2.page.texture;
            int i3 = next2.left;
            int i4 = next2.top;
            boolean z = next2.rotate;
            if (z) {
                i = next2.height;
            } else {
                i = next2.width;
            }
            if (z) {
                i2 = next2.width;
            } else {
                i2 = next2.height;
            }
            AtlasRegion atlasRegion = new AtlasRegion(texture, i3, i4, i, i2);
            atlasRegion.index = next2.index;
            atlasRegion.name = next2.name;
            atlasRegion.offsetX = next2.offsetX;
            atlasRegion.offsetY = next2.offsetY;
            atlasRegion.originalHeight = next2.originalHeight;
            atlasRegion.originalWidth = next2.originalWidth;
            atlasRegion.rotate = next2.rotate;
            atlasRegion.degrees = next2.degrees;
            atlasRegion.names = next2.names;
            atlasRegion.values = next2.values;
            if (next2.flip) {
                atlasRegion.flip(false, true);
            }
            this.f4320b.add(atlasRegion);
        }
    }

    @Null
    public Sprite createSprite(String str, int i) {
        int i2 = this.f4320b.size;
        for (int i3 = 0; i3 < i2; i3++) {
            AtlasRegion atlasRegion = this.f4320b.get(i3);
            if (atlasRegion.index == i && atlasRegion.name.equals(str)) {
                return m24183a(this.f4320b.get(i3));
            }
        }
        return null;
    }

    @Null
    public AtlasRegion findRegion(String str, int i) {
        int i2 = this.f4320b.size;
        for (int i3 = 0; i3 < i2; i3++) {
            AtlasRegion atlasRegion = this.f4320b.get(i3);
            if (atlasRegion.name.equals(str) && atlasRegion.index == i) {
                return atlasRegion;
            }
        }
        return null;
    }

    public TextureAtlas(String str) {
        this(Gdx.files.internal(str));
    }

    public Array<Sprite> createSprites(String str) {
        Array<Sprite> array = new Array<>(Sprite.class);
        int i = this.f4320b.size;
        for (int i2 = 0; i2 < i; i2++) {
            AtlasRegion atlasRegion = this.f4320b.get(i2);
            if (atlasRegion.name.equals(str)) {
                array.add(m24183a(atlasRegion));
            }
        }
        return array;
    }

    public TextureAtlas(FileHandle fileHandle) {
        this(fileHandle, fileHandle.parent());
    }

    public AtlasRegion addRegion(String str, TextureRegion textureRegion) {
        this.f4319a.add(textureRegion.f4354a);
        AtlasRegion atlasRegion = new AtlasRegion(textureRegion);
        atlasRegion.name = str;
        this.f4320b.add(atlasRegion);
        return atlasRegion;
    }

    public TextureAtlas(FileHandle fileHandle, boolean z) {
        this(fileHandle, fileHandle.parent(), z);
    }

    public TextureAtlas(FileHandle fileHandle, FileHandle fileHandle2) {
        this(fileHandle, fileHandle2, false);
    }

    public TextureAtlas(FileHandle fileHandle, FileHandle fileHandle2, boolean z) {
        this(new TextureAtlasData(fileHandle, fileHandle2, z));
    }

    public TextureAtlas(TextureAtlasData textureAtlasData) {
        this.f4319a = new ObjectSet<>(4);
        this.f4320b = new Array<>();
        load(textureAtlasData);
    }
}
