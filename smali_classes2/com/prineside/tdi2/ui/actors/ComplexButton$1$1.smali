.class Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/ComplexButton$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->a(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->a(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->b(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->p(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->p(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
