.class Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/BuildMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuildButton"
.end annotation


# instance fields
.field public M:Z

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:I

.field public T:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

.field public U:Lcom/prineside/tdi2/enums/TowerType;

.field public V:Lcom/prineside/tdi2/enums/MinerType;

.field public W:Lcom/prineside/tdi2/enums/ModifierType;

.field public final X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final Y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public final Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final e0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public final f0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public final synthetic g0:Lcom/prineside/tdi2/ui/components/BuildMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->g0:Lcom/prineside/tdi2/ui/components/BuildMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->R:I

    iput v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->S:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "build-selection"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->e0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "build-selection-count"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->f0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/high16 v1, 0x42fe0000    # 127.0f

    invoke-virtual {p0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->a()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v2, 0x43000000    # 128.0f

    invoke-virtual {p2, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "build-selection-count-overlay"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x430d0000    # 141.0f

    invoke-virtual {p2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "build-selection-hover"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/high16 v0, -0x3fc00000    # -3.0f

    const/high16 v1, -0x3ed00000    # -11.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v1, ""

    invoke-direct {p2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v0, 0x42f00000    # 120.0f

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {p2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p2, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;

    invoke-direct {p2, p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton$1;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->update()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->S:I

    return p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Q:Z

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->update()V

    return-void
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->P:Z

    return p1
.end method


# virtual methods
.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->S:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->update()V

    return-void
.end method

.method public setPrice(I)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->R:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->R:I

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->O:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->update()V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->N:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->update()V

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->M:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->update()V

    return-void
.end method

.method public final update()V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->S:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->e0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->f0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->S:I

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->S:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->N:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->M:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->c()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->P:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->d()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->e()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->f()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->N:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->M:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->g()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/BuildMenu;->h()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->N:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->M:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const v4, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_4
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->O:Z

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, -0x3fc00000    # -3.0f

    const/high16 v2, -0x3ed00000    # -11.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->a0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->P:Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->Z:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, -0x3f000000    # -8.0f

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_5
    return-void
.end method
