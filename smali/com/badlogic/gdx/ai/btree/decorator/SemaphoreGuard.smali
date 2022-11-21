.class public Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;
.super Lcom/badlogic/gdx/ai/btree/Decorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/ai/btree/Decorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lcom/badlogic/gdx/ai/btree/annotation/TaskAttribute;
        required = true
    .end annotation
.end field

.field public transient q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/ai/btree/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/ai/btree/Decorator;-><init>(Lcom/badlogic/gdx/ai/btree/Task;)V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;)",
            "Lcom/badlogic/gdx/ai/btree/Task<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    invoke-super {p0, p1}, Lcom/badlogic/gdx/ai/btree/Decorator;->c(Lcom/badlogic/gdx/ai/btree/Task;)Lcom/badlogic/gdx/ai/btree/Task;

    move-result-object p1

    return-object p1
.end method

.method public end()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->getSemaphore(Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;->release()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    :cond_1
    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->end()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;->reset()V

    return-void
.end method

.method public resetTask()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->resetTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Decorator;->run()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/ai/btree/Task;->fail()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphoreRepository;->getSemaphore(Ljava/lang/String;)Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->q:Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;

    invoke-interface {v0}, Lcom/badlogic/gdx/ai/utils/NonBlockingSemaphore;->acquire()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/ai/btree/decorator/SemaphoreGuard;->r:Z

    invoke-super {p0}, Lcom/badlogic/gdx/ai/btree/Task;->start()V

    return-void
.end method
