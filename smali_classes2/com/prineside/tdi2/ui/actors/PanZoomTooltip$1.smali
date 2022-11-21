.class Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$1;->b:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->hide()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    const/4 p1, 0x1

    return p1
.end method
