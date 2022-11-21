.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->z0:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->P0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->cancel()V

    :cond_0
    return-void
.end method

.method public keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V

    :cond_0
    return-void
.end method

.method public scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$3;->a(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;)V

    :cond_0
    return-void
.end method
