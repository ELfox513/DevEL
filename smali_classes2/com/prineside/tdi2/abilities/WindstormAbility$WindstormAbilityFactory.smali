.class public Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;
.super Lcom/prineside/tdi2/Ability$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/abilities/WindstormAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindstormAbilityFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Ability$Factory<",
        "Lcom/prineside/tdi2/abilities/WindstormAbility;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Ability$Factory;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Ability;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;->create()Lcom/prineside/tdi2/abilities/WindstormAbility;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/abilities/WindstormAbility;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/abilities/WindstormAbility;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/abilities/WindstormAbility;-><init>(Lcom/prineside/tdi2/abilities/WindstormAbility$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDarkerColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_WINDSTORM_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_WINDSTORM_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v1}, Lcom/prineside/tdi2/GameValueProvider;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "ability_description_WINDSTORM"

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v2, v4, [Ljava/lang/Object;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float p1, p1, v5

    float-to-double v5, p1

    invoke-static {v5, v6, v4}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "ability_delays_next_wave"

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

    const-string v1, "icon-windstorm"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriceInGreenPapers(I)I
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/abilities/WindstormAbility;->b()[I

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/abilities/WindstormAbility;->b()[I

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

    invoke-static {}, Lcom/prineside/tdi2/abilities/WindstormAbility;->c()[[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {}, Lcom/prineside/tdi2/abilities/WindstormAbility;->c()[[I

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

    const/4 v0, 0x0

    return v0
.end method

.method public setupAssets()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles/windstorm.prt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "particle-default"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-void
.end method
