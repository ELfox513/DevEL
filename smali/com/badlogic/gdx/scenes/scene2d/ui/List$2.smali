.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    const/4 p1, -0x1

    if-nez p4, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    :cond_0
    if-ne p4, p1, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    :cond_1
    return-void
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p2

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p4, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p4, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_4

    return p1

    :cond_4
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p4, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object p3, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->choose(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iput p2, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    :cond_5
    :goto_0
    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p2

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    const/4 p2, -0x1

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    :cond_1
    :goto_0
    return-void
.end method
