package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
/* loaded from: classes.dex */
public class PixmapPackerIO {

    /* renamed from: com.badlogic.gdx.graphics.g2d.PixmapPackerIO$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C12011 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4208a;

        static {
            int[] iArr = new int[ImageFormat.values().length];
            f4208a = iArr;
            try {
                iArr[ImageFormat.CIM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4208a[ImageFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public void save(FileHandle fileHandle, PixmapPacker pixmapPacker) {
        save(fileHandle, pixmapPacker, new SaveParameters());
    }

    /* loaded from: classes.dex */
    public enum ImageFormat {
        CIM(".cim"),
        PNG(".png");
        

        /* renamed from: a */
        public final String f4210a;

        public String getExtension() {
            return this.f4210a;
        }

        ImageFormat(String str) {
            this.f4210a = str;
        }
    }

    /* loaded from: classes.dex */
    public static class SaveParameters {
        public ImageFormat format = ImageFormat.PNG;
        public Texture.TextureFilter magFilter;
        public Texture.TextureFilter minFilter;
        public boolean useIndexes;

        public SaveParameters() {
            Texture.TextureFilter textureFilter = Texture.TextureFilter.Nearest;
            this.minFilter = textureFilter;
            this.magFilter = textureFilter;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0199  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void save(com.badlogic.gdx.files.FileHandle r20, com.badlogic.gdx.graphics.g2d.PixmapPacker r21, com.badlogic.gdx.graphics.g2d.PixmapPackerIO.SaveParameters r22) {
        /*
            Method dump skipped, instructions count: 648
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.graphics.g2d.PixmapPackerIO.save(com.badlogic.gdx.files.FileHandle, com.badlogic.gdx.graphics.g2d.PixmapPacker, com.badlogic.gdx.graphics.g2d.PixmapPackerIO$SaveParameters):void");
    }
}
