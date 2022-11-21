.class public Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# instance fields
.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public P:Lcom/prineside/tdi2/ui/actors/RadialSprite;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public T:Lcom/prineside/tdi2/enums/AbilityType;

.field public U:I

.field public V:F

.field public W:Z

.field public X:Z

.field public Y:Lcom/prineside/tdi2/GameValueProvider;


# direct methods
.method public constructor <init>(ZLcom/prineside/tdi2/GameValueProvider;)V
    .locals 7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->V:F

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->W:Z

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Y:Lcom/prineside/tdi2/GameValueProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 p2, 0x42d40000    # 106.0f

    const/high16 v0, 0x42e60000    # 115.0f

    invoke-virtual {p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p2, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;

    invoke-direct {p2, p0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/prineside/tdi2/ui/actors/RadialSprite;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "ui-ability-button-edges"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/prineside/tdi2/ui/actors/RadialSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->P:Lcom/prineside/tdi2/ui/actors/RadialSprite;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 p2, 0x42c00000    # 96.0f

    const/high16 v1, 0x42d00000    # 104.0f

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x42800000    # 64.0f

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v2, "0"

    invoke-direct {p2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x42a40000    # 82.0f

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-ability-button-selection"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x42d80000    # 108.0f

    const/high16 v4, 0x42ec0000    # 118.0f

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, -0x3f400000    # -6.0f

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v4, v3

    if-ge p2, v4, :cond_0

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-ability-button-energy-mark"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v4, v3, p2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v3, v3, p2

    invoke-virtual {v3, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v3, v3, p2

    int-to-float v4, p2

    mul-float v5, v4, v2

    add-float/2addr v5, v1

    sub-float v4, v1, v4

    invoke-virtual {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v3, v3, p2

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setSelected(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->X:Z

    return p1
.end method


# virtual methods
.method public getAbility()Lcom/prineside/tdi2/enums/AbilityType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->U:I

    return v0
.end method

.method public getGameEnergy()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->V:F

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->update()V

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->U:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->update()V

    return-void
.end method

.method public setGameEnergy(F)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->V:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->update()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public update()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->W:Z

    const v4, 0x3e0f5c29    # 0.14f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-ability-button-empty-plus"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1, v1, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "ui-ability-button-empty"

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42c00000    # 96.0f

    const/high16 v4, 0x42d00000    # 104.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_7

    :cond_2
    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v5, v0}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Ability$Factory;->getDarkerColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "ui-ability-button"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Y:Lcom/prineside/tdi2/GameValueProvider;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AbilityManager;->getEnergyCostGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    iget v4, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->U:I

    const/4 v5, 0x1

    if-lez v4, :cond_a

    int-to-float v4, v0

    iget v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->V:F

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->X:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Ability$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Ability$Factory;->getDarkerColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v6, v4

    if-ge v1, v6, :cond_4

    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v4, v4, v1

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_6

    :cond_6
    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v7, 0x3f47ae14    # 0.78f

    invoke-virtual {v6, v3, v3, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v8, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Ability$Factory;->getDarkerColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    const v7, 0x3ecccccd    # 0.4f

    iput v7, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    :goto_4
    if-ge v2, v0, :cond_9

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v7, v6

    if-ge v2, v7, :cond_8

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v6, v2, 0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->V:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_7

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v2

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->S:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v2

    const v7, 0x3f0f5c29    # 0.56f

    invoke-virtual {v6, v1, v1, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->V:F

    div-float/2addr v0, v4

    sub-float/2addr v1, v0

    const v0, 0x43b3feb8    # 359.99f

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->P:Lcom/prineside/tdi2/ui/actors/RadialSprite;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/RadialSprite;->setAngle(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_6
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42d40000    # 106.0f

    const/high16 v2, 0x42e60000    # 115.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->T:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Ability$Factory;->getIconDrawable()Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->U:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_7
    return-void
.end method
