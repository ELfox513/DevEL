.class public Lcom/prineside/tdi2/HeadlessReplayValidationGame;
.super Lcom/prineside/tdi2/Game;
.source "SourceFile"


# instance fields
.field public currentReplay:Ljava/lang/String;

.field public instanceName:Ljava/lang/String;

.field public l:Lcom/badlogic/gdx/files/FileHandle;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ActionResolver;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/Game;-><init>(Lcom/prineside/tdi2/ActionResolver;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->instanceName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->k(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->m(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/HeadlessReplayValidationGame;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->i()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->j(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;)V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->l(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic i()V
    .locals 2

    const-string v0, "noReplay"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->writeServerStatus(Ljava/lang/String;)V

    const-string v0, "HeadlessReplayValidationGame"

    const-string v1, "..."

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->h()V

    return-void
.end method

.method private synthetic j(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;)V
    .locals 5

    const-string v0, "finishedValidation"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->writeServerStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of game validation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->modeDifficultyMultiplier:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->result:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->updates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updates), time elapsed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->timeSpent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "s. ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->updatesPerSecond:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " u/s), real waves: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->realWaves:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->realScore:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlessReplayValidationGame"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Config;->SITE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/?m=api&a=submitReplayValidation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&apiv=1&g=com.prineside.tdi2&v=184"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->result:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",u:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->updates:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->timeSpent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",ups:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->updatesPerSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",rw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->realWaves:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",rs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->realScore:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->instanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",sw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->defeatedWaves:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->score:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->result:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->MODIFIED_GAME:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",chr:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->cheatingReason:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v2, "log"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->result:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->VALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    if-ne p1, v2, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    const-string v2, "valid"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->xp:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "xp"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->enemiesKilled:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "enemiesKilled"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->resourcesMined:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "resourcesMined"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p1, "gameMode"

    iget-object v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "difficultyMode"

    iget-object v3, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "modeDifficultyMultiplier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v4, v4, Lcom/prineside/tdi2/systems/GameStateSystem;->modeDifficultyMultiplier:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v2, "basicLevelName"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    :goto_1
    iget-object p1, p2, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-static {p1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->stop(Lcom/prineside/tdi2/GameSystemProvider;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "report"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Lcom/prineside/tdi2/HeadlessReplayValidationGame$1;

    invoke-direct {v1, p0, p2}, Lcom/prineside/tdi2/HeadlessReplayValidationGame$1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;)V

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ScreenManager;->setNoScreen()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->h()V

    return-void
.end method

.method private synthetic k(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 1

    const-string v0, "startingValidation"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->writeServerStatus(Ljava/lang/String;)V

    new-instance v0, Lcom/prineside/tdi2/u1;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/u1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    invoke-static {p1, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->headlessValidateGame(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method private synthetic l(Ljava/lang/String;)V
    .locals 8

    const-string v0, "HeadlessReplayValidationGame"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->fromCompactString(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, ""

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/prineside/tdi2/t1;

    invoke-direct {v7, p0, v6}, Lcom/prineside/tdi2/t1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    iget-object p1, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne p1, v0, :cond_0

    iget-object p1, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    const-string v0, "DQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v6, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    new-instance v1, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;ILcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyQuestHashFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v1, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v2, "POST"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Config;->SITE_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/?m=api&a=submitReplayValidation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&apiv=1&g=com.prineside.tdi2&v=184"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->currentReplay:Ljava/lang/String;

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",u:0,ts:0,ups:0,rw:0,rs:0,i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->instanceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",failed to parse json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "log"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "valid"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse record json for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->currentReplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->h()V

    return-void
.end method

.method private synthetic m(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/s1;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/s1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Lcom/prineside/tdi2/r1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/r1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public checkServerHalted()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "halt.txt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HeadlessReplayValidationGame"

    const-string v1, "halt.txt found, exiting"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "halted"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->writeServerStatus(Ljava/lang/String;)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->exit()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public create()V
    .locals 4

    invoke-super {p0}, Lcom/prineside/tdi2/Game;->create()V

    invoke-static {}, Lcom/prineside/tdi2/Logger;->initHeadless()V

    const-string v0, "HeadlessReplayValidationGame"

    const-string v1, "started loading..."

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v1}, Lcom/prineside/tdi2/utils/GameSyncLoader;->iterate()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/Game;->gameSyncLoader:Lcom/prineside/tdi2/utils/GameSyncLoader;

    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/GameSyncLoader;->getProgress()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "fully loaded!"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loaded"

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->writeServerStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->h()V

    return-void
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->checkServerHalted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/prineside/tdi2/q1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/q1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->n(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public final n(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    new-instance v2, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v3, "POST"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Config;->SITE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/?m=api&a=getReplayForValidation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&apiv=1&g=com.prineside.tdi2&v=184"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "endless.txt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&e=1"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v4, Lcom/prineside/tdi2/HeadlessReplayValidationGame$3;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame$3;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;JLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v3, v2, v4}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public writeServerStatus(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->instanceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v1

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    iget-object v3, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->l:Lcom/badlogic/gdx/files/FileHandle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "UTF-8"

    invoke-virtual {v3, p1, v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
