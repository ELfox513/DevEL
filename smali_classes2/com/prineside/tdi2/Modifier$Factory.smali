.class public abstract Lcom/prineside/tdi2/Modifier$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Modifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final color:Lcom/badlogic/gdx/graphics/Color;

.field public final iconName:Ljava/lang/String;

.field public final modifierType:Lcom/prineside/tdi2/enums/ModifierType;

.field public wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/ModifierType;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->values:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p2, p0, Lcom/prineside/tdi2/Modifier$Factory;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object p3, p0, Lcom/prineside/tdi2/Modifier$Factory;->iconName:Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string p2, "icon-dollar"

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-left"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-right"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-top"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-bottom"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-top-left"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-top-right"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-bottom-left"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "modifier-wires-bottom-right"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    aput-object p3, p1, p2

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    return p1

    :cond_0
    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    return p1

    :cond_1
    int-to-float p1, p1

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x32

    return p1
.end method

.method public canBePlacedNear(Lcom/prineside/tdi2/enums/ModifierType;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract create()Lcom/prineside/tdi2/Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "modifier-icon-wires"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v2, p0, Lcom/prineside/tdi2/Modifier$Factory;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier$Factory;->getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v1, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Modifier$Factory;->iconName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float v2, v2, p1

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v3, 0x0

    const v4, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v3, v3, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v3, 0x3e9eb852    # 0.31f

    mul-float v3, v3, p1

    const v4, 0x3eb33333    # 0.35f

    mul-float p1, p1, v4

    invoke-virtual {v1, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Modifier$Factory;->iconName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object v0
.end method

.method public createProcessor()Lcom/prineside/tdi2/ModifierProcessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.end method

.method public abstract getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;I)I
.end method

.method public getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;
    .locals 1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier$Factory;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ModifierManager;->getDescriptionAlias(Lcom/prineside/tdi2/enums/ModifierType;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Modifier$Factory;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ModifierManager;->getTitleAlias(Lcom/prineside/tdi2/enums/ModifierType;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Modifier$Factory;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ModifierManager;->getCountGameValue(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setup()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier$Factory;->setupAssets()V

    :cond_0
    return-void
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
