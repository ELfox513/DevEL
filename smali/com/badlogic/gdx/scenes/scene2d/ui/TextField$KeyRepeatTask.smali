.class Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyRepeatTask"
.end annotation


# instance fields
.field public q:I

.field public final synthetic r:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->T:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->q:I

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    return-void
.end method
