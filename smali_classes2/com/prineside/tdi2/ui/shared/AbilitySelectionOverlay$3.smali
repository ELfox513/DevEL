.class Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;I)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;->p:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;->o:I

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;->p:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->b(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;)I

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;->o:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;->p:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->selectSlot(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$3;->p:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->selectSlot(I)V

    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
