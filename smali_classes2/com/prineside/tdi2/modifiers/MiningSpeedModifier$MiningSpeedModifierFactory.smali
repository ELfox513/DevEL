.class public Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;
.super Lcom/prineside/tdi2/Modifier$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/MiningSpeedModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiningSpeedModifierFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Modifier$Factory<",
        "Lcom/prineside/tdi2/modifiers/MiningSpeedModifier;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "icon-pickaxe"

    invoke-direct {p0, v0, v1, v2}, Lcom/prineside/tdi2/Modifier$Factory;-><init>(Lcom/prineside/tdi2/enums/ModifierType;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Modifier;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;->create()Lcom/prineside/tdi2/modifiers/MiningSpeedModifier;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/modifiers/MiningSpeedModifier;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier;-><init>(Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$1;)V

    return-object v0
.end method

.method public getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;I)I
    .locals 2

    int-to-double p1, p2

    const-wide v0, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    const-wide v0, 0x3ff99999a0000000L    # 1.600000023841858

    invoke-static {v0, v1, p1, p2}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x42f00000    # 120.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Modifier$Factory;->a(I)I

    move-result p1

    return p1
.end method

.method public getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_MINING_SPEED_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "modifier_description_MINING_SPEED"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "modifier-base-mining-speed"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/MiningSpeedModifier$MiningSpeedModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
