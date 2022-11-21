.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p3, p4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget-object v0, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->b(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->wrapWidth:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->wrapWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "style cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
