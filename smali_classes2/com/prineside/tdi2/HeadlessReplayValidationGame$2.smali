.class Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/HeadlessReplayValidationGame;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

.field public final synthetic c:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/prineside/tdi2/HeadlessReplayValidationGame;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;ILcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->e:Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    iput p2, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->a:I

    iput-object p3, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iput-object p4, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->c:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iput-object p5, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->retrieved(Ljava/lang/String;)V

    return-void
.end method

.method public retrieved(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iget v1, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->removeLoadedDailyQuestMapIfMd5HashDiffers(ILjava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->levelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iget v0, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->a:I

    new-instance v1, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2$1;-><init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->loadAndStoreDailyQuestFromServer(ILcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayValidationGame$2;->d:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
