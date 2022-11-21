package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.loaders.AsynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.TextureLoader;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.ImageResolver;
import com.badlogic.gdx.maps.MapGroupLayer;
import com.badlogic.gdx.maps.MapLayer;
import com.badlogic.gdx.maps.MapLayers;
import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.maps.tiled.BaseTmxMapLoader.Parameters;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.maps.tiled.tiles.AnimatedTiledMapTile;
import com.badlogic.gdx.maps.tiled.tiles.StaticTiledMapTile;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.SerializationException;
import com.badlogic.gdx.utils.StreamUtils;
import com.badlogic.gdx.utils.XmlReader;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
/* loaded from: classes.dex */
public abstract class BaseTmxMapLoader<P extends Parameters> extends AsynchronousAssetLoader<TiledMap, P> {

    /* renamed from: b */
    public XmlReader f5285b;

    /* renamed from: c */
    public XmlReader.Element f5286c;

    /* renamed from: d */
    public boolean f5287d;

    /* renamed from: e */
    public boolean f5288e;

    /* renamed from: f */
    public int f5289f;

    /* renamed from: g */
    public int f5290g;

    /* renamed from: h */
    public int f5291h;

    /* renamed from: i */
    public int f5292i;

    /* renamed from: j */
    public TiledMap f5293j;

    /* renamed from: v */
    public static int m23956v(byte b) {
        return b & DefaultClassResolver.NAME;
    }

    /* renamed from: b */
    public abstract void mo23949b(FileHandle fileHandle, ImageResolver imageResolver, TiledMapTileSet tiledMapTileSet, XmlReader.Element element, Array<XmlReader.Element> array, String str, int i, int i2, int i3, int i4, int i5, String str2, int i6, int i7, String str3, int i8, int i9, FileHandle fileHandle2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public /* bridge */ /* synthetic */ Array getDependencies(String str, FileHandle fileHandle, AssetLoaderParameters assetLoaderParameters) {
        return getDependencies(str, fileHandle, (FileHandle) ((Parameters) assetLoaderParameters));
    }

    /* renamed from: h */
    public abstract Array<AssetDescriptor> mo23948h(FileHandle fileHandle, TextureLoader.TextureParameter textureParameter);

    /* renamed from: n */
    public void m23964n(TiledMap tiledMap, MapLayer mapLayer, XmlReader.Element element) {
        m23963o(tiledMap, mapLayer.getObjects(), element, this.f5292i);
    }

    /* renamed from: p */
    public void m23962p(TiledMap tiledMap, TiledMapTile tiledMapTile, XmlReader.Element element) {
        m23963o(tiledMap, tiledMapTile.getObjects(), element, tiledMapTile.getTextureRegion().getRegionHeight());
    }

    /* loaded from: classes.dex */
    public static class Parameters extends AssetLoaderParameters<TiledMap> {
        public boolean convertObjectToTileSpace;
        public boolean flipY;
        public boolean generateMipMaps = false;
        public Texture.TextureFilter textureMagFilter;
        public Texture.TextureFilter textureMinFilter;

        public Parameters() {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
            this.textureMinFilter = textureFilter;
            this.textureMagFilter = textureFilter;
            this.convertObjectToTileSpace = false;
            this.flipY = true;
        }
    }

    public static int[] getTileIds(XmlReader.Element element, int i, int i2) {
        InputStream bufferedInputStream;
        XmlReader.Element childByName = element.getChildByName("data");
        String attribute = childByName.getAttribute("encoding", null);
        if (attribute != null) {
            int[] iArr = new int[i * i2];
            if (attribute.equals("csv")) {
                String[] split = childByName.getText().split(",");
                for (int i3 = 0; i3 < split.length; i3++) {
                    iArr[i3] = (int) Long.parseLong(split[i3].trim());
                }
            } else {
                try {
                    if (attribute.equals("base64")) {
                        try {
                            String attribute2 = childByName.getAttribute("compression", null);
                            byte[] decode = Base64Coder.decode(childByName.getText());
                            if (attribute2 == null) {
                                bufferedInputStream = new ByteArrayInputStream(decode);
                            } else if (attribute2.equals("gzip")) {
                                bufferedInputStream = new BufferedInputStream(new GZIPInputStream(new ByteArrayInputStream(decode), decode.length));
                            } else if (attribute2.equals("zlib")) {
                                bufferedInputStream = new BufferedInputStream(new InflaterInputStream(new ByteArrayInputStream(decode)));
                            } else {
                                throw new GdxRuntimeException("Unrecognised compression (" + attribute2 + ") for TMX Layer Data");
                            }
                            InputStream inputStream = bufferedInputStream;
                            byte[] bArr = new byte[4];
                            for (int i4 = 0; i4 < i2; i4++) {
                                for (int i5 = 0; i5 < i; i5++) {
                                    int read = inputStream.read(bArr);
                                    while (read < 4) {
                                        int read2 = inputStream.read(bArr, read, 4 - read);
                                        if (read2 == -1) {
                                            break;
                                        }
                                        read += read2;
                                    }
                                    if (read == 4) {
                                        iArr[(i4 * i) + i5] = m23956v(bArr[0]) | (m23956v(bArr[1]) << 8) | (m23956v(bArr[2]) << 16) | (m23956v(bArr[3]) << 24);
                                    } else {
                                        throw new GdxRuntimeException("Error Reading TMX Layer Data: Premature end of tile data");
                                    }
                                }
                            }
                            StreamUtils.closeQuietly(inputStream);
                        } catch (IOException e) {
                            throw new GdxRuntimeException("Error Reading TMX Layer Data - IOException: " + e.getMessage());
                        }
                    } else {
                        throw new GdxRuntimeException("Unrecognised encoding (" + attribute + ") for TMX Layer Data");
                    }
                } catch (Throwable th) {
                    StreamUtils.closeQuietly(null);
                    throw th;
                }
            }
            return iArr;
        }
        throw new GdxRuntimeException("Unsupported encoding (XML) for TMX Layer Data");
    }

    /* renamed from: i */
    public static FileHandle m23969i(FileHandle fileHandle, String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "\\/");
        FileHandle parent = fileHandle.parent();
        while (stringTokenizer.hasMoreElements()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals("..")) {
                parent = parent.parent();
            } else {
                parent = parent.child(nextToken);
            }
        }
        return parent;
    }

    /* renamed from: a */
    public void m23975a(TiledMapTileSet tiledMapTileSet, TextureRegion textureRegion, int i, float f, float f2) {
        StaticTiledMapTile staticTiledMapTile = new StaticTiledMapTile(textureRegion);
        staticTiledMapTile.setId(i);
        staticTiledMapTile.setOffsetX(f);
        if (this.f5288e) {
            f2 = -f2;
        }
        staticTiledMapTile.setOffsetY(f2);
        tiledMapTileSet.putTile(i, staticTiledMapTile);
    }

    /* renamed from: c */
    public void m23974c(TiledMapTile tiledMapTile, XmlReader.Element element) {
        XmlReader.Element childByName = element.getChildByName("objectgroup");
        if (childByName != null) {
            Array.ArrayIterator<XmlReader.Element> it = childByName.getChildrenByName("object").iterator();
            while (it.hasNext()) {
                m23962p(this.f5293j, tiledMapTile, it.next());
            }
        }
    }

    /* renamed from: d */
    public void m23973d(TiledMapTile tiledMapTile, XmlReader.Element element) {
        String attribute = element.getAttribute("terrain", null);
        if (attribute != null) {
            tiledMapTile.getProperties().put("terrain", attribute);
        }
        String attribute2 = element.getAttribute("probability", null);
        if (attribute2 != null) {
            tiledMapTile.getProperties().put("probability", attribute2);
        }
        String attribute3 = element.getAttribute("type", null);
        if (attribute3 != null) {
            tiledMapTile.getProperties().put("type", attribute3);
        }
        XmlReader.Element childByName = element.getChildByName("properties");
        if (childByName != null) {
            m23960r(tiledMapTile.getProperties(), childByName);
        }
    }

    /* renamed from: e */
    public Object m23972e(String str, String str2, String str3) {
        if (str3 == null) {
            return str2;
        }
        if (str3.equals("int")) {
            return Integer.valueOf(str2);
        }
        if (str3.equals("float")) {
            return Float.valueOf(str2);
        }
        if (str3.equals("bool")) {
            return Boolean.valueOf(str2);
        }
        if (str3.equals("color")) {
            String substring = str2.substring(3);
            String substring2 = str2.substring(1, 3);
            return Color.valueOf(substring + substring2);
        }
        throw new GdxRuntimeException("Wrong type given for property " + str + ", given : " + str3 + ", supported : string, bool, int, float, color");
    }

    /* renamed from: f */
    public AnimatedTiledMapTile m23971f(TiledMapTileSet tiledMapTileSet, TiledMapTile tiledMapTile, XmlReader.Element element, int i) {
        XmlReader.Element childByName = element.getChildByName("animation");
        if (childByName != null) {
            Array array = new Array();
            IntArray intArray = new IntArray();
            Array.ArrayIterator<XmlReader.Element> it = childByName.getChildrenByName("frame").iterator();
            while (it.hasNext()) {
                XmlReader.Element next = it.next();
                array.add((StaticTiledMapTile) tiledMapTileSet.getTile(next.getIntAttribute("tileid") + i));
                intArray.add(next.getIntAttribute("duration"));
            }
            AnimatedTiledMapTile animatedTiledMapTile = new AnimatedTiledMapTile(intArray, array);
            animatedTiledMapTile.setId(tiledMapTile.getId());
            return animatedTiledMapTile;
        }
        return null;
    }

    /* renamed from: g */
    public TiledMapTileLayer.Cell m23970g(boolean z, boolean z2, boolean z3) {
        TiledMapTileLayer.Cell cell = new TiledMapTileLayer.Cell();
        if (z3) {
            if (z && z2) {
                cell.setFlipHorizontally(true);
                cell.setRotation(3);
            } else if (z) {
                cell.setRotation(3);
            } else if (z2) {
                cell.setRotation(1);
            } else {
                cell.setFlipVertically(true);
                cell.setRotation(3);
            }
        } else {
            cell.setFlipHorizontally(z);
            cell.setFlipVertically(z2);
        }
        return cell;
    }

    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, P p) {
        this.f5286c = this.f5285b.parse(fileHandle);
        TextureLoader.TextureParameter textureParameter = new TextureLoader.TextureParameter();
        if (p != null) {
            textureParameter.genMipMaps = p.generateMipMaps;
            textureParameter.minFilter = p.textureMinFilter;
            textureParameter.magFilter = p.textureMagFilter;
        }
        return mo23948h(fileHandle, textureParameter);
    }

    /* renamed from: j */
    public void m23968j(MapLayer mapLayer, XmlReader.Element element) {
        String attribute = element.getAttribute("name", null);
        float parseFloat = Float.parseFloat(element.getAttribute("opacity", "1.0"));
        boolean z = true;
        if (element.getIntAttribute("visible", 1) != 1) {
            z = false;
        }
        float floatAttribute = element.getFloatAttribute("offsetx", 0.0f);
        float floatAttribute2 = element.getFloatAttribute("offsety", 0.0f);
        mapLayer.setName(attribute);
        mapLayer.setOpacity(parseFloat);
        mapLayer.setVisible(z);
        mapLayer.setOffsetX(floatAttribute);
        mapLayer.setOffsetY(floatAttribute2);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0270  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m23963o(com.badlogic.gdx.maps.tiled.TiledMap r23, com.badlogic.gdx.maps.MapObjects r24, com.badlogic.gdx.utils.XmlReader.Element r25, float r26) {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.maps.tiled.BaseTmxMapLoader.m23963o(com.badlogic.gdx.maps.tiled.TiledMap, com.badlogic.gdx.maps.MapObjects, com.badlogic.gdx.utils.XmlReader$Element, float):void");
    }

    /* renamed from: r */
    public void m23960r(MapProperties mapProperties, XmlReader.Element element) {
        if (element != null && element.getName().equals("properties")) {
            Array.ArrayIterator<XmlReader.Element> it = element.getChildrenByName("property").iterator();
            while (it.hasNext()) {
                XmlReader.Element next = it.next();
                String attribute = next.getAttribute("name", null);
                String attribute2 = next.getAttribute("value", null);
                String attribute3 = next.getAttribute("type", null);
                if (attribute2 == null) {
                    attribute2 = next.getText();
                }
                mapProperties.put(attribute, m23972e(attribute, attribute2, attribute3));
            }
        }
    }

    /* renamed from: s */
    public void m23959s(TiledMap tiledMap, MapLayers mapLayers, XmlReader.Element element) {
        boolean z;
        boolean z2;
        int i;
        if (element.getName().equals("layer")) {
            int intAttribute = element.getIntAttribute("width", 0);
            int intAttribute2 = element.getIntAttribute("height", 0);
            TiledMapTileLayer tiledMapTileLayer = new TiledMapTileLayer(intAttribute, intAttribute2, ((Integer) tiledMap.getProperties().get("tilewidth", Integer.class)).intValue(), ((Integer) tiledMap.getProperties().get("tileheight", Integer.class)).intValue());
            m23968j(tiledMapTileLayer, element);
            int[] tileIds = getTileIds(element, intAttribute, intAttribute2);
            TiledMapTileSets tileSets = tiledMap.getTileSets();
            for (int i2 = 0; i2 < intAttribute2; i2++) {
                for (int i3 = 0; i3 < intAttribute; i3++) {
                    int i4 = tileIds[(i2 * intAttribute) + i3];
                    boolean z3 = true;
                    if ((Integer.MIN_VALUE & i4) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if ((1073741824 & i4) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if ((536870912 & i4) == 0) {
                        z3 = false;
                    }
                    TiledMapTile tile = tileSets.getTile(i4 & 536870911);
                    if (tile != null) {
                        TiledMapTileLayer.Cell m23970g = m23970g(z, z2, z3);
                        m23970g.setTile(tile);
                        if (this.f5288e) {
                            i = (intAttribute2 - 1) - i2;
                        } else {
                            i = i2;
                        }
                        tiledMapTileLayer.setCell(i3, i, m23970g);
                    }
                }
            }
            XmlReader.Element childByName = element.getChildByName("properties");
            if (childByName != null) {
                m23960r(tiledMapTileLayer.getProperties(), childByName);
            }
            mapLayers.add(tiledMapTileLayer);
        }
    }

    /* renamed from: t */
    public void m23958t(XmlReader.Element element, FileHandle fileHandle, ImageResolver imageResolver) {
        XmlReader.Element element2;
        String str;
        FileHandle fileHandle2;
        int i;
        int i2;
        int i3;
        int i4;
        FileHandle fileHandle3;
        int i5;
        int i6;
        if (element.getName().equals("tileset")) {
            int intAttribute = element.getIntAttribute("firstgid", 1);
            String str2 = "";
            String attribute = element.getAttribute("source", null);
            if (attribute != null) {
                FileHandle m23969i = m23969i(fileHandle, attribute);
                try {
                    XmlReader.Element parse = this.f5285b.parse(m23969i);
                    XmlReader.Element childByName = parse.getChildByName("image");
                    if (childByName != null) {
                        str2 = childByName.getAttribute("source");
                        i5 = childByName.getIntAttribute("width", 0);
                        i6 = childByName.getIntAttribute("height", 0);
                        fileHandle3 = m23969i(m23969i, str2);
                    } else {
                        fileHandle3 = null;
                        i5 = 0;
                        i6 = 0;
                    }
                    fileHandle2 = fileHandle3;
                    str = str2;
                    i = i5;
                    i2 = i6;
                    element2 = parse;
                } catch (SerializationException unused) {
                    throw new GdxRuntimeException("Error parsing external tileset.");
                }
            } else {
                XmlReader.Element childByName2 = element.getChildByName("image");
                if (childByName2 != null) {
                    String attribute2 = childByName2.getAttribute("source");
                    str = attribute2;
                    i = childByName2.getIntAttribute("width", 0);
                    i2 = childByName2.getIntAttribute("height", 0);
                    fileHandle2 = m23969i(fileHandle, attribute2);
                    element2 = element;
                } else {
                    element2 = element;
                    str = "";
                    fileHandle2 = null;
                    i = 0;
                    i2 = 0;
                }
            }
            String str3 = element2.get("name", null);
            int intAttribute2 = element2.getIntAttribute("tilewidth", 0);
            int intAttribute3 = element2.getIntAttribute("tileheight", 0);
            int intAttribute4 = element2.getIntAttribute("spacing", 0);
            int intAttribute5 = element2.getIntAttribute("margin", 0);
            XmlReader.Element childByName3 = element2.getChildByName("tileoffset");
            if (childByName3 != null) {
                int intAttribute6 = childByName3.getIntAttribute("x", 0);
                i4 = childByName3.getIntAttribute("y", 0);
                i3 = intAttribute6;
            } else {
                i3 = 0;
                i4 = 0;
            }
            TiledMapTileSet tiledMapTileSet = new TiledMapTileSet();
            tiledMapTileSet.setName(str3);
            MapProperties properties = tiledMapTileSet.getProperties();
            XmlReader.Element childByName4 = element2.getChildByName("properties");
            if (childByName4 != null) {
                m23960r(properties, childByName4);
            }
            properties.put("firstgid", Integer.valueOf(intAttribute));
            Array<XmlReader.Element> childrenByName = element2.getChildrenByName("tile");
            TiledMapTileSet tiledMapTileSet2 = tiledMapTileSet;
            int i7 = intAttribute;
            mo23949b(fileHandle, imageResolver, tiledMapTileSet, element2, childrenByName, str3, intAttribute, intAttribute2, intAttribute3, intAttribute4, intAttribute5, attribute, i3, i4, str, i, i2, fileHandle2);
            Array array = new Array();
            Array.ArrayIterator<XmlReader.Element> it = childrenByName.iterator();
            while (it.hasNext()) {
                XmlReader.Element next = it.next();
                int i8 = i7;
                TiledMapTileSet tiledMapTileSet3 = tiledMapTileSet2;
                TiledMapTile tile = tiledMapTileSet3.getTile(i8 + next.getIntAttribute("id", 0));
                if (tile != null) {
                    AnimatedTiledMapTile m23971f = m23971f(tiledMapTileSet3, tile, next, i8);
                    if (m23971f != null) {
                        array.add(m23971f);
                        tile = m23971f;
                    }
                    m23973d(tile, next);
                    m23974c(tile, next);
                }
                tiledMapTileSet2 = tiledMapTileSet3;
                i7 = i8;
            }
            TiledMapTileSet tiledMapTileSet4 = tiledMapTileSet2;
            Array.ArrayIterator it2 = array.iterator();
            while (it2.hasNext()) {
                AnimatedTiledMapTile animatedTiledMapTile = (AnimatedTiledMapTile) it2.next();
                tiledMapTileSet4.putTile(animatedTiledMapTile.getId(), animatedTiledMapTile);
            }
            this.f5293j.getTileSets().addTileSet(tiledMapTileSet4);
        }
    }

    /* renamed from: u */
    public TiledMap m23957u(FileHandle fileHandle, P p, ImageResolver imageResolver) {
        this.f5293j = new TiledMap();
        if (p != null) {
            this.f5287d = p.convertObjectToTileSpace;
            this.f5288e = p.flipY;
        } else {
            this.f5287d = false;
            this.f5288e = true;
        }
        String attribute = this.f5286c.getAttribute("orientation", null);
        int intAttribute = this.f5286c.getIntAttribute("width", 0);
        int intAttribute2 = this.f5286c.getIntAttribute("height", 0);
        int intAttribute3 = this.f5286c.getIntAttribute("tilewidth", 0);
        int intAttribute4 = this.f5286c.getIntAttribute("tileheight", 0);
        int intAttribute5 = this.f5286c.getIntAttribute("hexsidelength", 0);
        String attribute2 = this.f5286c.getAttribute("staggeraxis", null);
        String attribute3 = this.f5286c.getAttribute("staggerindex", null);
        String attribute4 = this.f5286c.getAttribute("backgroundcolor", null);
        MapProperties properties = this.f5293j.getProperties();
        if (attribute != null) {
            properties.put("orientation", attribute);
        }
        properties.put("width", Integer.valueOf(intAttribute));
        properties.put("height", Integer.valueOf(intAttribute2));
        properties.put("tilewidth", Integer.valueOf(intAttribute3));
        properties.put("tileheight", Integer.valueOf(intAttribute4));
        properties.put("hexsidelength", Integer.valueOf(intAttribute5));
        if (attribute2 != null) {
            properties.put("staggeraxis", attribute2);
        }
        if (attribute3 != null) {
            properties.put("staggerindex", attribute3);
        }
        if (attribute4 != null) {
            properties.put("backgroundcolor", attribute4);
        }
        this.f5289f = intAttribute3;
        this.f5290g = intAttribute4;
        this.f5291h = intAttribute * intAttribute3;
        this.f5292i = intAttribute2 * intAttribute4;
        if (attribute != null && "staggered".equals(attribute) && intAttribute2 > 1) {
            this.f5291h += intAttribute3 / 2;
            this.f5292i = (this.f5292i / 2) + (intAttribute4 / 2);
        }
        XmlReader.Element childByName = this.f5286c.getChildByName("properties");
        if (childByName != null) {
            m23960r(this.f5293j.getProperties(), childByName);
        }
        Array.ArrayIterator<XmlReader.Element> it = this.f5286c.getChildrenByName("tileset").iterator();
        while (it.hasNext()) {
            XmlReader.Element next = it.next();
            m23958t(next, fileHandle, imageResolver);
            this.f5286c.removeChild(next);
        }
        int childCount = this.f5286c.getChildCount();
        for (int i = 0; i < childCount; i++) {
            XmlReader.Element child = this.f5286c.getChild(i);
            TiledMap tiledMap = this.f5293j;
            m23966l(tiledMap, tiledMap.getLayers(), child, fileHandle, imageResolver);
        }
        return this.f5293j;
    }

    public BaseTmxMapLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f5285b = new XmlReader();
        this.f5288e = true;
    }

    /* renamed from: k */
    public void m23967k(TiledMap tiledMap, MapLayers mapLayers, XmlReader.Element element, FileHandle fileHandle, ImageResolver imageResolver) {
        float parseFloat;
        float parseFloat2;
        if (element.getName().equals("imagelayer")) {
            if (element.hasAttribute("offsetx")) {
                parseFloat = Float.parseFloat(element.getAttribute("offsetx", "0"));
            } else {
                parseFloat = Float.parseFloat(element.getAttribute("x", "0"));
            }
            if (element.hasAttribute("offsety")) {
                parseFloat2 = Float.parseFloat(element.getAttribute("offsety", "0"));
            } else {
                parseFloat2 = Float.parseFloat(element.getAttribute("y", "0"));
            }
            if (this.f5288e) {
                parseFloat2 = this.f5292i - parseFloat2;
            }
            TextureRegion textureRegion = null;
            XmlReader.Element childByName = element.getChildByName("image");
            if (childByName != null) {
                textureRegion = imageResolver.getImage(m23969i(fileHandle, childByName.getAttribute("source")).path());
                parseFloat2 -= textureRegion.getRegionHeight();
            }
            TiledMapImageLayer tiledMapImageLayer = new TiledMapImageLayer(textureRegion, parseFloat, parseFloat2);
            m23968j(tiledMapImageLayer, element);
            XmlReader.Element childByName2 = element.getChildByName("properties");
            if (childByName2 != null) {
                m23960r(tiledMapImageLayer.getProperties(), childByName2);
            }
            mapLayers.add(tiledMapImageLayer);
        }
    }

    /* renamed from: l */
    public void m23966l(TiledMap tiledMap, MapLayers mapLayers, XmlReader.Element element, FileHandle fileHandle, ImageResolver imageResolver) {
        String name = element.getName();
        if (name.equals("group")) {
            m23965m(tiledMap, mapLayers, element, fileHandle, imageResolver);
        } else if (name.equals("layer")) {
            m23959s(tiledMap, mapLayers, element);
        } else if (name.equals("objectgroup")) {
            m23961q(tiledMap, mapLayers, element);
        } else if (name.equals("imagelayer")) {
            m23967k(tiledMap, mapLayers, element, fileHandle, imageResolver);
        }
    }

    /* renamed from: m */
    public void m23965m(TiledMap tiledMap, MapLayers mapLayers, XmlReader.Element element, FileHandle fileHandle, ImageResolver imageResolver) {
        if (element.getName().equals("group")) {
            MapGroupLayer mapGroupLayer = new MapGroupLayer();
            m23968j(mapGroupLayer, element);
            XmlReader.Element childByName = element.getChildByName("properties");
            if (childByName != null) {
                m23960r(mapGroupLayer.getProperties(), childByName);
            }
            int childCount = element.getChildCount();
            for (int i = 0; i < childCount; i++) {
                m23966l(tiledMap, mapGroupLayer.getLayers(), element.getChild(i), fileHandle, imageResolver);
            }
            Iterator<MapLayer> it = mapGroupLayer.getLayers().iterator();
            while (it.hasNext()) {
                it.next().setParent(mapGroupLayer);
            }
            mapLayers.add(mapGroupLayer);
        }
    }

    /* renamed from: q */
    public void m23961q(TiledMap tiledMap, MapLayers mapLayers, XmlReader.Element element) {
        if (element.getName().equals("objectgroup")) {
            MapLayer mapLayer = new MapLayer();
            m23968j(mapLayer, element);
            XmlReader.Element childByName = element.getChildByName("properties");
            if (childByName != null) {
                m23960r(mapLayer.getProperties(), childByName);
            }
            Array.ArrayIterator<XmlReader.Element> it = element.getChildrenByName("object").iterator();
            while (it.hasNext()) {
                m23964n(tiledMap, mapLayer, it.next());
            }
            mapLayers.add(mapLayer);
        }
    }
}
