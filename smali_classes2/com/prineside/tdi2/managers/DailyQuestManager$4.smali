.class Lcom/prineside/tdi2/managers/DailyQuestManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayLevel(Lcom/prineside/tdi2/utils/ObjectRetriever;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:Lcom/prineside/tdi2/managers/DailyQuestManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$4;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$4;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$4;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$4;->b:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-static {v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->c(Lcom/prineside/tdi2/managers/DailyQuestManager;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
