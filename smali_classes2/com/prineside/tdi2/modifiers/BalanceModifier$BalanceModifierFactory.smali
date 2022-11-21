.class public Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;
.super Lcom/prineside/tdi2/Modifier$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/BalanceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BalanceModifierFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Modifier$Factory<",
        "Lcom/prineside/tdi2/modifiers/BalanceModifier;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public orbTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "icon-experience-balance"

    invoke-direct {p0, v0, v1, v2}, Lcom/prineside/tdi2/Modifier$Factory;-><init>(Lcom/prineside/tdi2/enums/ModifierType;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Modifier;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;->create()Lcom/prineside/tdi2/modifiers/BalanceModifier;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/modifiers/BalanceModifier;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/modifiers/BalanceModifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/modifiers/BalanceModifier;-><init>(Lcom/prineside/tdi2/modifiers/BalanceModifier$1;)V

    return-object v0
.end method

.method public getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;I)I
    .locals 2

    int-to-double p1, p2

    const-wide v0, 0x3ff6666660000000L    # 1.399999976158142

    invoke-static {v0, v1, p1, p2}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x41c80000    # 25.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Modifier$Factory;->a(I)I

    move-result p1

    return p1
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "modifier-base-balance"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "xp-orb"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$BalanceModifierFactory;->orbTexture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
