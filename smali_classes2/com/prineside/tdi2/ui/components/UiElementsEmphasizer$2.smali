.class Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->c(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->d(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->f(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->f(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    instance-of v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->g(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->a(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->h(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->b(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->e(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->i(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->j(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer$2;->a:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->j(Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
