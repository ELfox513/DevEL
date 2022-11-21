.class Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setup(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;->o:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;->o:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->z(Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;->o:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-object p2, p1, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->onToggle:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->z(Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;->o:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;->o:Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    return-void
.end method
