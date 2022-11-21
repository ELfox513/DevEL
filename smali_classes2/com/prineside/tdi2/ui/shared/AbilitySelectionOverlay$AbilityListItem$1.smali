.class Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

.field public final synthetic p:Lcom/prineside/tdi2/enums/AbilityType;

.field public final synthetic q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->o:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->p:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->V:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->p:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->setSelectedSlotAbilityType(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->p(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->q(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->p(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem$1;->q:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;->q(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$AbilityListItem;)V

    return-void
.end method
