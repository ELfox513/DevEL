.class public Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;
.super Lcom/prineside/tdi2/Ability$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/abilities/BallLightningAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BallLightningAbilityFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Ability$Factory<",
        "Lcom/prineside/tdi2/abilities/BallLightningAbility;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Ability$Factory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Ability;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->create()Lcom/prineside/tdi2/abilities/BallLightningAbility;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/abilities/BallLightningAbility;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/abilities/BallLightningAbility;-><init>(Lcom/prineside/tdi2/abilities/BallLightningAbility$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDarkerColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P800:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BALL_LIGHTNING_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BALL_LIGHTNING_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v1}, Lcom/prineside/tdi2/GameValueProvider;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BALL_LIGHTNING_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v2}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide v2

    long-to-int p1, v2

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v3, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "ability_description_BALL_LIGHTNING"

    invoke-virtual {v2, v0, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    const-string p1, "ability_coins_for_killed_enemies"

    invoke-virtual {v1, p1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-ball-lightning"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriceInGreenPapers(I)I
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b()[I

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b()[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/StrictMath;->min(II)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getPriceInResources(Lcom/prineside/tdi2/enums/ResourceType;I)I
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/abilities/BallLightningAbility;->c()[[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {}, Lcom/prineside/tdi2/abilities/BallLightningAbility;->c()[[I

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/StrictMath;->min(II)I

    move-result p2

    aget p1, p1, p2

    return p1
.end method

.method public requiresMapPointing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "ball-lightning-orb"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "particle-default"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "chain-lightning"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->e:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
