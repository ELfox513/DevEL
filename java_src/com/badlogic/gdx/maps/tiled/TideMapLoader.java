package com.badlogic.gdx.maps.tiled;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.assets.loaders.SynchronousAssetLoader;
import com.badlogic.gdx.assets.loaders.resolvers.InternalFileHandleResolver;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.maps.ImageResolver;
import com.badlogic.gdx.maps.MapProperties;
import com.badlogic.gdx.maps.tiled.TiledMapTileLayer;
import com.badlogic.gdx.maps.tiled.tiles.AnimatedTiledMapTile;
import com.badlogic.gdx.maps.tiled.tiles.StaticTiledMapTile;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.XmlReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.StringTokenizer;
/* loaded from: classes.dex */
public class TideMapLoader extends SynchronousAssetLoader<TiledMap, Parameters> {

    /* renamed from: b */
    public XmlReader f5294b;

    /* renamed from: c */
    public XmlReader.Element f5295c;

    /* loaded from: classes.dex */
    public static class Parameters extends AssetLoaderParameters<TiledMap> {
    }

    public TideMapLoader() {
        super(new InternalFileHandleResolver());
        this.f5294b = new XmlReader();
    }

    /* renamed from: a */
    public static FileHandle m23955a(FileHandle fileHandle, String str) {
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

    /* renamed from: b */
    public final void m23954b(TiledMap tiledMap, XmlReader.Element element) {
        int i;
        int i2;
        int i3;
        if (element.getName().equals("Layer")) {
            String attribute = element.getAttribute("Id");
            String attribute2 = element.getAttribute("Visible");
            XmlReader.Element childByName = element.getChildByName("Dimensions");
            String attribute3 = childByName.getAttribute("LayerSize");
            String attribute4 = childByName.getAttribute("TileSize");
            String[] split = attribute3.split(" x ");
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            String[] split2 = attribute4.split(" x ");
            TiledMapTileLayer tiledMapTileLayer = new TiledMapTileLayer(parseInt, parseInt2, Integer.parseInt(split2[0]), Integer.parseInt(split2[1]));
            tiledMapTileLayer.setName(attribute);
            tiledMapTileLayer.setVisible(attribute2.equalsIgnoreCase("True"));
            Array<XmlReader.Element> childrenByName = element.getChildByName("TileArray").getChildrenByName("Row");
            TiledMapTileSets tileSets = tiledMap.getTileSets();
            TiledMapTileSet tiledMapTileSet = null;
            int i4 = childrenByName.size;
            int i5 = 0;
            int i6 = 0;
            while (i5 < i4) {
                XmlReader.Element element2 = childrenByName.get(i5);
                int i7 = (i4 - 1) - i5;
                int childCount = element2.getChildCount();
                int i8 = 0;
                int i9 = 0;
                while (i8 < childCount) {
                    XmlReader.Element child = element2.getChild(i8);
                    String name = child.getName();
                    Array<XmlReader.Element> array = childrenByName;
                    int i10 = i4;
                    XmlReader.Element element3 = element2;
                    if (name.equals("TileSheet")) {
                        tiledMapTileSet = tileSets.getTileSet(child.getAttribute("Ref"));
                        i6 = ((Integer) tiledMapTileSet.getProperties().get("firstgid", Integer.class)).intValue();
                        i2 = i5;
                        i = childCount;
                    } else {
                        i = childCount;
                        if (name.equals("Null")) {
                            i9 += child.getIntAttribute("Count");
                        } else if (name.equals("Static")) {
                            TiledMapTileLayer.Cell cell = new TiledMapTileLayer.Cell();
                            cell.setTile(tiledMapTileSet.getTile(child.getIntAttribute("Index") + i6));
                            tiledMapTileLayer.setCell(i9, i7, cell);
                            i9++;
                        } else {
                            TiledMapTileSet tiledMapTileSet2 = tiledMapTileSet;
                            if (name.equals("Animated")) {
                                int i11 = child.getInt("Interval");
                                XmlReader.Element childByName2 = child.getChildByName("Frames");
                                Array array2 = new Array();
                                int i12 = i6;
                                int childCount2 = childByName2.getChildCount();
                                i2 = i5;
                                i3 = i8;
                                TiledMapTileSet tiledMapTileSet3 = tiledMapTileSet2;
                                int i13 = 0;
                                while (i13 < childCount2) {
                                    int i14 = childCount2;
                                    XmlReader.Element child2 = childByName2.getChild(i13);
                                    XmlReader.Element element4 = childByName2;
                                    String name2 = child2.getName();
                                    if (name2.equals("TileSheet")) {
                                        tiledMapTileSet3 = tileSets.getTileSet(child2.getAttribute("Ref"));
                                        i12 = ((Integer) tiledMapTileSet3.getProperties().get("firstgid", Integer.class)).intValue();
                                    } else if (name2.equals("Static")) {
                                        array2.add((StaticTiledMapTile) tiledMapTileSet3.getTile(i12 + child2.getIntAttribute("Index")));
                                    }
                                    i13++;
                                    childCount2 = i14;
                                    childByName2 = element4;
                                }
                                TiledMapTileLayer.Cell cell2 = new TiledMapTileLayer.Cell();
                                cell2.setTile(new AnimatedTiledMapTile(i11 / 1000.0f, array2));
                                tiledMapTileLayer.setCell(i9, i7, cell2);
                                i9++;
                                tiledMapTileSet = tiledMapTileSet3;
                                i6 = i12;
                            } else {
                                i2 = i5;
                                i3 = i8;
                                tiledMapTileSet = tiledMapTileSet2;
                            }
                            i8 = i3 + 1;
                            childrenByName = array;
                            childCount = i;
                            i4 = i10;
                            element2 = element3;
                            i5 = i2;
                        }
                        i2 = i5;
                    }
                    i3 = i8;
                    i8 = i3 + 1;
                    childrenByName = array;
                    childCount = i;
                    i4 = i10;
                    element2 = element3;
                    i5 = i2;
                }
                i5++;
            }
            XmlReader.Element childByName3 = element.getChildByName("Properties");
            if (childByName3 != null) {
                m23952d(tiledMapTileLayer.getProperties(), childByName3);
            }
            tiledMap.getLayers().add(tiledMapTileLayer);
        }
    }

    /* renamed from: c */
    public final TiledMap m23953c(XmlReader.Element element, FileHandle fileHandle, ImageResolver imageResolver) {
        TiledMap tiledMap = new TiledMap();
        XmlReader.Element childByName = element.getChildByName("Properties");
        if (childByName != null) {
            m23952d(tiledMap.getProperties(), childByName);
        }
        Array.ArrayIterator<XmlReader.Element> it = element.getChildByName("TileSheets").getChildrenByName("TileSheet").iterator();
        while (it.hasNext()) {
            m23951e(tiledMap, it.next(), fileHandle, imageResolver);
        }
        Array.ArrayIterator<XmlReader.Element> it2 = element.getChildByName("Layers").getChildrenByName("Layer").iterator();
        while (it2.hasNext()) {
            m23954b(tiledMap, it2.next());
        }
        return tiledMap;
    }

    /* renamed from: e */
    public final void m23951e(TiledMap tiledMap, XmlReader.Element element, FileHandle fileHandle, ImageResolver imageResolver) {
        if (element.getName().equals("TileSheet")) {
            String attribute = element.getAttribute("Id");
            element.getChildByName("Description").getText();
            String text = element.getChildByName("ImageSource").getText();
            XmlReader.Element childByName = element.getChildByName("Alignment");
            String attribute2 = childByName.getAttribute("SheetSize");
            String attribute3 = childByName.getAttribute("TileSize");
            String attribute4 = childByName.getAttribute("Margin");
            childByName.getAttribute("Spacing");
            String[] split = attribute2.split(" x ");
            Integer.parseInt(split[0]);
            int i = 1;
            Integer.parseInt(split[1]);
            String[] split2 = attribute3.split(" x ");
            int parseInt = Integer.parseInt(split2[0]);
            int parseInt2 = Integer.parseInt(split2[1]);
            String[] split3 = attribute4.split(" x ");
            int parseInt3 = Integer.parseInt(split3[0]);
            int parseInt4 = Integer.parseInt(split3[1]);
            String[] split4 = attribute4.split(" x ");
            int parseInt5 = Integer.parseInt(split4[0]);
            int parseInt6 = Integer.parseInt(split4[1]);
            TextureRegion image = imageResolver.getImage(m23955a(fileHandle, text).path());
            TiledMapTileSets tileSets = tiledMap.getTileSets();
            Iterator<TiledMapTileSet> it = tileSets.iterator();
            while (it.hasNext()) {
                i += it.next().size();
            }
            TiledMapTileSet tiledMapTileSet = new TiledMapTileSet();
            tiledMapTileSet.setName(attribute);
            tiledMapTileSet.getProperties().put("firstgid", Integer.valueOf(i));
            int regionWidth = image.getRegionWidth() - parseInt;
            int regionHeight = image.getRegionHeight() - parseInt2;
            int i2 = parseInt4;
            while (i2 <= regionHeight) {
                int i3 = parseInt3;
                while (i3 <= regionWidth) {
                    TextureRegion textureRegion = image;
                    TextureRegion textureRegion2 = image;
                    TiledMapTileSet tiledMapTileSet2 = tiledMapTileSet;
                    StaticTiledMapTile staticTiledMapTile = new StaticTiledMapTile(new TextureRegion(textureRegion, i3, i2, parseInt, parseInt2));
                    staticTiledMapTile.setId(i);
                    tiledMapTileSet2.putTile(i, staticTiledMapTile);
                    i3 += parseInt + parseInt5;
                    regionWidth = regionWidth;
                    tiledMapTileSet = tiledMapTileSet2;
                    i++;
                    regionHeight = regionHeight;
                    image = textureRegion2;
                }
                i2 += parseInt2 + parseInt6;
                regionWidth = regionWidth;
                image = image;
            }
            TiledMapTileSet tiledMapTileSet3 = tiledMapTileSet;
            XmlReader.Element childByName2 = element.getChildByName("Properties");
            if (childByName2 != null) {
                m23952d(tiledMapTileSet3.getProperties(), childByName2);
            }
            tileSets.addTileSet(tiledMapTileSet3);
        }
    }

    /* renamed from: f */
    public final Array<FileHandle> m23950f(XmlReader.Element element, FileHandle fileHandle) {
        Array<FileHandle> array = new Array<>();
        Array.ArrayIterator<XmlReader.Element> it = element.getChildByName("TileSheets").getChildrenByName("TileSheet").iterator();
        while (it.hasNext()) {
            array.add(m23955a(fileHandle, it.next().getChildByName("ImageSource").getText()));
        }
        return array;
    }

    @Override // com.badlogic.gdx.assets.loaders.AssetLoader
    public Array<AssetDescriptor> getDependencies(String str, FileHandle fileHandle, Parameters parameters) {
        Array<AssetDescriptor> array = new Array<>();
        try {
            XmlReader.Element parse = this.f5294b.parse(fileHandle);
            this.f5295c = parse;
            Array.ArrayIterator<FileHandle> it = m23950f(parse, fileHandle).iterator();
            while (it.hasNext()) {
                array.add(new AssetDescriptor(it.next().path(), Texture.class));
            }
            return array;
        } catch (IOException e) {
            throw new GdxRuntimeException("Couldn't load tilemap '" + str + "'", e);
        }
    }

    public TiledMap load(String str) {
        try {
            FileHandle resolve = resolve(str);
            this.f5295c = this.f5294b.parse(resolve);
            ObjectMap objectMap = new ObjectMap();
            Array.ArrayIterator<FileHandle> it = m23950f(this.f5295c, resolve).iterator();
            while (it.hasNext()) {
                FileHandle next = it.next();
                objectMap.put(next.path(), new Texture(next));
            }
            TiledMap m23953c = m23953c(this.f5295c, resolve, new ImageResolver.DirectImageResolver(objectMap));
            m23953c.setOwnedResources(objectMap.values().toArray());
            return m23953c;
        } catch (IOException e) {
            throw new GdxRuntimeException("Couldn't load tilemap '" + str + "'", e);
        }
    }

    public TideMapLoader(FileHandleResolver fileHandleResolver) {
        super(fileHandleResolver);
        this.f5294b = new XmlReader();
    }

    /* renamed from: d */
    public final void m23952d(MapProperties mapProperties, XmlReader.Element element) {
        if (element.getName().equals("Properties")) {
            Array.ArrayIterator<XmlReader.Element> it = element.getChildrenByName("Property").iterator();
            while (it.hasNext()) {
                XmlReader.Element next = it.next();
                String attribute = next.getAttribute("Key", null);
                String attribute2 = next.getAttribute("Type", null);
                String text = next.getText();
                if (attribute2.equals("Int32")) {
                    mapProperties.put(attribute, Integer.valueOf(Integer.parseInt(text)));
                } else if (attribute2.equals("String")) {
                    mapProperties.put(attribute, text);
                } else if (attribute2.equals("Boolean")) {
                    mapProperties.put(attribute, Boolean.valueOf(text.equalsIgnoreCase("true")));
                } else {
                    mapProperties.put(attribute, text);
                }
            }
        }
    }

    @Override // com.badlogic.gdx.assets.loaders.SynchronousAssetLoader
    public TiledMap load(AssetManager assetManager, String str, FileHandle fileHandle, Parameters parameters) {
        try {
            return m23953c(this.f5295c, fileHandle, new ImageResolver.AssetManagerImageResolver(assetManager));
        } catch (Exception e) {
            throw new GdxRuntimeException("Couldn't load tilemap '" + str + "'", e);
        }
    }
}
