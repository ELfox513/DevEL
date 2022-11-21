.class public Lcom/prineside/tdi2/ui/components/SellButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# instance fields
.field public M:Lcom/badlogic/gdx/graphics/Color;

.field public N:Lcom/badlogic/gdx/graphics/Color;

.field public O:Lcom/badlogic/gdx/graphics/Color;

.field public final P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public R:I

.field public S:Z

.field public T:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->M:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->N:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->O:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x43400000    # 192.0f

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-sell-button"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/SellButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "icon-dollar"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "0"

    invoke-direct {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x42b80000    # 92.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SELL_BUILDING:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v1

    const/high16 v2, 0x42c00000    # 96.0f

    const/high16 v3, -0x3e280000    # -27.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/ui/components/SellButton$1;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/ui/components/SellButton$1;-><init>(Lcom/prineside/tdi2/ui/components/SellButton;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/SellButton;->t()V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/SellButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->T:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/SellButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/SellButton;->t()V

    return-void
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/SellButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->S:Z

    return p1
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/components/SellButton;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->R:I

    return p0
.end method


# virtual methods
.method public setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->M:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->N:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->O:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/SellButton;->t()V

    return-void
.end method

.method public setPrice(I)V
    .locals 3

    iput p1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->R:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->N:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->S:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->O:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SellButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/SellButton;->M:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method
