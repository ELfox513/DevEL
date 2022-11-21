.class public Lcom/prineside/tdi2/systems/StateSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;,
        Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;
    }
.end annotation


# instance fields
.field public a:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public b:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;",
            ">;"
        }
    .end annotation
.end field

.field public duplicateActionsTo:Lcom/prineside/tdi2/systems/StateSystem;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public inUpdateStage:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;",
            ">;"
        }
    .end annotation
.end field

.field public replayFrameCount:J
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public replayMode:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public updateNumber:I

.field public updateRequired:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->a:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->inUpdateStage:Z

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSkipMediaUpdate()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->b:I

    iget v1, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkGameplayUpdateAllowed()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->inUpdateStage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Game updates are not allowed now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->duplicateActionsTo:Lcom/prineside/tdi2/systems/StateSystem;

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    return-object v0
.end method

.method public getFastForwardUpdateNumber()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->b:I

    return v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "State"

    return-object v0
.end method

.method public isFastForwarding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->a:Z

    return v0
.end method

.method public pushAction(Lcom/prineside/tdi2/Action;)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;I)V

    return-void
.end method

.method public pushAction(Lcom/prineside/tdi2/Action;I)V
    .locals 2

    sget-boolean v0, Lcom/prineside/tdi2/GameSystemProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->replayMode:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    new-instance v1, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    invoke-direct {v1}, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->add(Lcom/prineside/tdi2/Action;)V

    new-instance v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;-><init>()V

    iput-object p1, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->action:Lcom/prineside/tdi2/Action;

    iput p2, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionUpdatePair;->update:I

    iget-object v1, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateRequired:Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->duplicateActionsTo:Lcom/prineside/tdi2/systems/StateSystem;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;I)V

    :cond_3
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    const-class v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntMap;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public requireUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateRequired:Z

    return-void
.end method

.method public startFastForwarding(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->a:Z

    iput p1, p0, Lcom/prineside/tdi2/systems/StateSystem;->b:I

    return-void
.end method

.method public stopFastForwarding()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopped fast forwarding on frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/systems/StateSystem;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->a:Z

    :cond_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->updateNumber:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->d:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/StateSystem;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
