.class public Lcom/prineside/tdi2/ui/actors/AimStrategySelector;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;,
        Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;
    }
.end annotation


# static fields
.field public static final U:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final M:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public final N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public O:F

.field public P:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public Q:F

.field public final R:[Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

.field public final S:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;",
            ">;"
        }
    .end annotation
.end field

.field public final T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->U:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->O:F

    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->R:[Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->S:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v2, 0x439b0000    # 310.0f

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v0, v5

    new-instance v7, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyIconAlias(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyColor(Lcom/prineside/tdi2/Tower$AimStrategy;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;-><init>(Lcom/prineside/tdi2/ui/actors/AimStrategySelector;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->R:[Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput-object v7, v8, v6

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->S:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-triangle-left"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$2;

    invoke-direct {v8, p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$2;-><init>(Lcom/prineside/tdi2/ui/actors/AimStrategySelector;)V

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object v6, v0

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    invoke-direct/range {v6 .. v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->M:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v2, 0x431b0000    # 155.0f

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v0, v4, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v5

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x41b80000    # 23.0f

    invoke-virtual {v5, v6, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-triangle-right"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    new-instance v11, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$3;

    invoke-direct {v11, p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$3;-><init>(Lcom/prineside/tdi2/ui/actors/AimStrategySelector;)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v4, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    const/high16 v3, 0x42dc0000    # 110.0f

    invoke-virtual {v2, v3, v7}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->AIM_MODE_SWITCH_PREVIOUS:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-direct {v0, v2, v3, v6}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->AIM_MODE_SWITCH_NEXT:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v2

    const v3, 0x438e8000    # 285.0f

    invoke-direct {v0, v2, v3, v6}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->t()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/AimStrategySelector;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->s()V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/AimStrategySelector;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->r()V

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->P:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->O:F

    mul-float v0, v0, p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x460ca400    # 9001.0f

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->P:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v3, v3

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/utils/PMath;->loopedDistance(FFF)F

    move-result v1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->R:[Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    array-length v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    array-length v0, v0

    int-to-float v0, v0

    rem-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->t()V

    :cond_3
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    return-void
.end method

.method public addListener(Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->P:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sget-object v2, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v3, v2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    aget-object v0, v2, v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->P:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v0, v0

    sub-int/2addr v0, v1

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    aget-object v0, v2, v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V

    return-void
.end method

.method public setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->P:Lcom/prineside/tdi2/Tower$AimStrategy;

    if-eq v0, p1, :cond_3

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->P:Lcom/prineside/tdi2/Tower$AimStrategy;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->t()V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v1, v1

    int-to-float v1, v1

    invoke-static {p2, v0, v1}, Lcom/prineside/tdi2/utils/PMath;->loopedDistance(FFF)F

    move-result p2

    invoke-static {p2}, Ljava/lang/StrictMath;->abs(F)F

    move-result p2

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p2, p2, v0

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->O:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->O:F

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge p2, p3, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;

    invoke-interface {v0, p1}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;->strategyChanged(Lcom/prineside/tdi2/Tower$AimStrategy;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->T:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_3
    return-void
.end method

.method public sizeChanged()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->R:[Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    aget-object v3, v3, v1

    int-to-float v4, v1

    iget v5, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->Q:F

    array-length v2, v2

    int-to-float v2, v2

    invoke-static {v4, v5, v2}, Lcom/prineside/tdi2/utils/PMath;->loopedDistance(FFF)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->p(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->S:Lcom/badlogic/gdx/utils/Array;

    sget-object v2, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->U:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->S:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;

    aget-object v1, v1, v0

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
