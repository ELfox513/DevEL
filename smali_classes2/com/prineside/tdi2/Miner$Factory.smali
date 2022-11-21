.class public abstract Lcom/prineside/tdi2/Miner$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Miner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Miner;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/prineside/tdi2/enums/MinerType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/MinerType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Miner$Factory;->b:Lcom/prineside/tdi2/enums/MinerType;

    iput-object p2, p0, Lcom/prineside/tdi2/Miner$Factory;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z
.end method

.method public abstract create()Lcom/prineside/tdi2/Miner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Miner$Factory;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public abstract getBaseBuildPrice(Lcom/prineside/tdi2/GameValueProvider;)I
.end method

.method public abstract getBaseMiningSpeed(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/GameValueProvider;)F
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "digs_resources_from_sources"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Miner$Factory;->b:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/MinerManager;->getTitle(Lcom/prineside/tdi2/enums/MinerType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setup()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner$Factory;->setupAssets()V

    :cond_0
    return-void
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
