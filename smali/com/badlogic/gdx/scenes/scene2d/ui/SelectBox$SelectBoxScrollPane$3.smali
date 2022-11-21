.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

.field public final synthetic c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0x6f

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa0

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getSelected()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->hide()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->stop()V

    const/4 p1, 0x1

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->hide()V

    return p2
.end method
