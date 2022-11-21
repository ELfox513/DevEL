.class public Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplayValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;
    }
.end annotation


# instance fields
.field public S:Lcom/prineside/tdi2/GameSystemProvider;

.field public cheatingReason:Ljava/lang/String;

.field public enemiesKilled:I

.field public realScore:J

.field public realWaves:I

.field public replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

.field public resourcesMined:I

.field public result:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

.field public timeSpent:F

.field public updates:I

.field public updatesPerSecond:I

.field public xp:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->result:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    iput p2, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->timeSpent:F

    iput p3, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->updatesPerSecond:I

    iput p4, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->updates:I

    iput-object p8, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->replayRecord:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iput p5, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->realWaves:I

    iput-wide p6, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->realScore:J

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;-><init>(Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;FIIIJLcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    iput-object p9, p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;->cheatingReason:Ljava/lang/String;

    return-void
.end method
