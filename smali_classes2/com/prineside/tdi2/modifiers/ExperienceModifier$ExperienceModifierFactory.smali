.class public Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;
.super Lcom/prineside/tdi2/Modifier$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/ExperienceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExperienceModifierFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Modifier$Factory<",
        "Lcom/prineside/tdi2/modifiers/ExperienceModifier;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public e:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const-string v2, "icon-experience-generation-lite"

    invoke-direct {p0, v0, v1, v2}, Lcom/prineside/tdi2/Modifier$Factory;-><init>(Lcom/prineside/tdi2/enums/ModifierType;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->e:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->e:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Modifier;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->create()Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/modifiers/ExperienceModifier;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/modifiers/ExperienceModifier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/modifiers/ExperienceModifier;-><init>(Lcom/prineside/tdi2/modifiers/ExperienceModifier$1;)V

    return-object v0
.end method

.method public getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;I)I
    .locals 2

    int-to-double p1, p2

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1, p1, p2}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Modifier$Factory;->a(I)I

    move-result p1

    return p1
.end method

.method public getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->MODIFIER_EXPERIENCE_VALUE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "modifier_description_EXPERIENCE"

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setupAssets()V
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "modifier-base-experience"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->c:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "xp-orb"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/modifiers/ExperienceModifier$ExperienceModifierFactory;->e:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource-orb-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
