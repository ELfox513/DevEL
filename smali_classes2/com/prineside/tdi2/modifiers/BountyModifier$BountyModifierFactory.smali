.class public Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;
.super Lcom/prineside/tdi2/Modifier$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/BountyModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BountyModifierFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Modifier$Factory<",
        "Lcom/prineside/tdi2/modifiers/BountyModifier;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "icon-coin"

    invoke-direct {p0, v0, v1, v2}, Lcom/prineside/tdi2/Modifier$Factory;-><init>(Lcom/prineside/tdi2/enums/ModifierType;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canBePlacedNear(Lcom/prineside/tdi2/enums/ModifierType;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic create()Lcom/prineside/tdi2/Modifier;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;->create()Lcom/prineside/tdi2/modifiers/BountyModifier;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/modifiers/BountyModifier;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/modifiers/BountyModifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/modifiers/BountyModifier;-><init>(Lcom/prineside/tdi2/modifiers/BountyModifier$1;)V

    return-object v0
.end method

.method public createProcessor()Lcom/prineside/tdi2/ModifierProcessor;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;

    invoke-direct {v0}, Lcom/prineside/tdi2/modifiers/processors/BountyModifierProcessor;-><init>()V

    return-object v0
.end method

.method public getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;I)I
    .locals 6

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    const/16 v0, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    add-float/2addr v1, p1

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    const-wide v2, 0x3ff99999a0000000L    # 1.600000023841858

    int-to-float p2, p2

    const v0, 0x3f933333    # 1.15f

    mul-float p2, p2, v0

    float-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float p2, p2, p1

    mul-float p2, p2, v1

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Modifier$Factory;->a(I)I

    move-result p1

    return p1
.end method

.method public getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_BOUNTY_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "modifier_description_BOUNTY"

    invoke-virtual {v1, p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "modifier-base-bounty"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/BountyModifier$BountyModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
