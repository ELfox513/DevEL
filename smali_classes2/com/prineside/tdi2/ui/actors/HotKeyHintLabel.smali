.class public Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# static fields
.field public static final R:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final S:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final T:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public M:[I

.field public final N:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[I>;"
        }
    .end annotation
.end field

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public Q:I

.field public debug:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->R:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->S:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->T:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 9

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->M:[I

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, [I

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->debug:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->Q:I

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v5, ""

    invoke-direct {v1, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, -0x40400000    # -1.5f

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2, v2, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {p0, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v0, 0x41000000    # 8.0f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-void
.end method

.method public constructor <init>([IFF)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>(FF)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->M:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->p()V

    return-void
.end method

.method public constructor <init>([IFFI)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->M:[I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->p()V

    return-void
.end method

.method public static generateHotKeysLabelText([I)Ljava/lang/CharSequence;
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->R:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_f

    aget v2, p0, v1

    sget-object v3, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->R:Lcom/badlogic/gdx/utils/StringBuilder;

    iget v4, v3, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v4, :cond_0

    const-string v4, "[#AAAAAA] + []"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    const/16 v4, 0x47

    if-ne v2, v4, :cond_1

    const-string v2, "[["

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x81

    if-ne v2, v4, :cond_2

    const-string v2, "Ctrl"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x3b

    if-ne v2, v4, :cond_3

    const-string v2, "Shift"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x39

    if-ne v2, v4, :cond_4

    const-string v2, "Alt"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x90

    if-ne v2, v4, :cond_5

    const-string v2, "Nm 0"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x91

    if-ne v2, v4, :cond_6

    const-string v2, "Nm 1"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v4, 0x92

    if-ne v2, v4, :cond_7

    const-string v2, "Nm 2"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_7
    const/16 v4, 0x93

    if-ne v2, v4, :cond_8

    const-string v2, "Nm 3"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_8
    const/16 v4, 0x94

    if-ne v2, v4, :cond_9

    const-string v2, "Nm 4"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_9
    const/16 v4, 0x95

    if-ne v2, v4, :cond_a

    const-string v2, "Nm 5"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_a
    const/16 v4, 0x96

    if-ne v2, v4, :cond_b

    const-string v2, "Nm 6"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_b
    const/16 v4, 0x97

    if-ne v2, v4, :cond_c

    const-string v2, "Nm 7"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_c
    const/16 v4, 0x98

    if-ne v2, v4, :cond_d

    const-string v2, "Nm 8"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_d
    const/16 v4, 0x99

    if-ne v2, v4, :cond_e

    const-string v2, "Nm 9"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_e
    invoke-static {v2}, Lcom/badlogic/gdx/Input$Keys;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    sget-object p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->R:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p0
.end method

.method public static isAvailable()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnabled()Z
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_HOT_KEY_HINTS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addVariant([I)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->Q:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->p()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->p()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->T:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    mul-float p1, p1, v0

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v2, v1, p1}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result v0

    const/high16 v2, 0x43f00000    # 480.0f

    div-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    iget-object v5, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v6, 0x3eb33333    # 0.35f

    mul-float v6, v6, v2

    const v7, 0x3db851ec    # 0.09f

    add-float/2addr v6, v7

    invoke-virtual {v5, v4, v4, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v5, 0x3f266666    # 0.65f

    mul-float v2, v2, v5

    const v5, 0x3e23d70a    # 0.16f

    add-float/2addr v2, v5

    invoke-virtual {v4, v3, v3, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-boolean v2, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->debug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int p2, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HotKeyHintLabel"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getHoldingHotKeys()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    move-object v5, v1

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v9, v6, v8

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    array-length v0, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_2
    if-ge v4, v0, :cond_5

    aget v7, v5, v4

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 v6, 0x2348

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :cond_5
    :goto_3
    iget v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->Q:I

    if-eq v0, v6, :cond_10

    iput v6, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->Q:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->M:[I

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->generateHotKeysLabelText([I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_6
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getHoldingHotKeys()Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_7

    aget v8, v5, v7

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/IntArray;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v1, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->generateHotKeysLabelText([I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v1, v1

    if-ne v1, v3, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_f

    sget-object v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->S:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->M:[I

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->generateHotKeysLabelText([I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->N:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v2, v1

    if-ne v2, v3, :cond_d

    sget-object v2, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->S:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v4, "[#888888] / []"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->generateHotKeysLabelText([I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->S:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->M:[I

    invoke-static {v1}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->generateHotKeysLabelText([I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getText()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_8
    return-void
.end method
