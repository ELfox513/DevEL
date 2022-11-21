.class Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->g:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toFront()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->a:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->c:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->b(Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager$2;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;->d:Z

    if-nez v1, :cond_2

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->subsequentTime:F

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->b:F

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->c:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method
