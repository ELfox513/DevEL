.class public Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;
.super Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ResourcePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasTextureRegion"
.end annotation


# instance fields
.field public final h:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->h:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->h:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object p0
.end method


# virtual methods
.method public getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->h:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method
