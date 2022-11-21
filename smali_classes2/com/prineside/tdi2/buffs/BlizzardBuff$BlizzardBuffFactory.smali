.class public Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;
.super Lcom/prineside/tdi2/Buff$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/buffs/BlizzardBuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlizzardBuffFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Buff$Factory<",
        "Lcom/prineside/tdi2/buffs/BlizzardBuff;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Buff$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/prineside/tdi2/Buff;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;->b()Lcom/prineside/tdi2/buffs/BlizzardBuff;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/prineside/tdi2/buffs/BlizzardBuff;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/buffs/BlizzardBuff;

    invoke-direct {v0}, Lcom/prineside/tdi2/buffs/BlizzardBuff;-><init>()V

    return-object v0
.end method

.method public createProcessor()Lcom/prineside/tdi2/BuffProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/prineside/tdi2/BuffProcessor<",
            "Lcom/prineside/tdi2/buffs/BlizzardBuff;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    invoke-direct {v0}, Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;-><init>()V

    return-object v0
.end method

.method public getHealthBarIcon()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "buff-health-bar-icon-blizzard"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
