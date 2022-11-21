.class public Lcom/prineside/tdi2/ui/actors/LabelButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
.source "SourceFile"


# instance fields
.field public a0:Z

.field public hoverColor:Lcom/badlogic/gdx/graphics/Color;

.field public normalColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->normalColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->hoverColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/LabelButton$1;

    invoke-direct {p1, p0, p3}, Lcom/prineside/tdi2/ui/actors/LabelButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/LabelButton;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/actors/LabelButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->a0:Z

    return p1
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/actors/LabelButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/LabelButton;->k()V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->a0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->hoverColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->normalColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->normalColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/LabelButton;->hoverColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/LabelButton;->k()V

    return-void
.end method
