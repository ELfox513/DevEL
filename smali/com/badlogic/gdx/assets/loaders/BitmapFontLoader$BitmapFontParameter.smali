.class public Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
        "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
        ">;"
    }
.end annotation


# instance fields
.field public atlasName:Ljava/lang/String;

.field public bitmapFontData:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

.field public flip:Z

.field public genMipMaps:Z

.field public magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->flip:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->genMipMaps:Z

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->bitmapFontData:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/BitmapFontLoader$BitmapFontParameter;->atlasName:Ljava/lang/String;

    return-void
.end method
