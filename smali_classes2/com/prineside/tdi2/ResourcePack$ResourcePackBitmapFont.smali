.class public Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;
.super Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ResourcePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourcePackBitmapFont"
.end annotation


# instance fields
.field public resourcePack:Lcom/prineside/tdi2/ResourcePack;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method
