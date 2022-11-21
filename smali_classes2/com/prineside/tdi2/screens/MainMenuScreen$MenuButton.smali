.class Lcom/prineside/tdi2/screens/MainMenuScreen$MenuButton;
.super Lcom/prineside/tdi2/ui/actors/ComplexButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/screens/MainMenuScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuButton"
.end annotation


# static fields
.field public static final SIZE:F = 134.0f


# direct methods
.method public constructor <init>(ZLcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x15

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0, p4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    :goto_0
    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v0}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    new-instance v2, Lcom/prineside/tdi2/utils/QuadDrawable;

    invoke-direct {v2, v1}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v7, 0x43000000    # 128.0f

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f0f5c29    # 0.56f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v4, 0x3f47ae14    # 0.78f

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x2c2c2ccc

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x42800000    # 64.0f

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x43060000    # 134.0f

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v0, 0x42ec0000    # 118.0f

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    const-string v2, "."

    invoke-static {p3, v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->fitToWidth(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40800000    # 4.0f
        0x40800000    # 4.0f
        0x42f80000    # 124.0f
        0x42f80000    # 124.0f
        0x43000000    # 128.0f
        0x43000000    # 128.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x0
        0x0
        0x43000000    # 128.0f
        0x43000000    # 128.0f
        0x42f80000    # 124.0f
        0x42f80000    # 124.0f
        0x40800000    # 4.0f
    .end array-data
.end method
