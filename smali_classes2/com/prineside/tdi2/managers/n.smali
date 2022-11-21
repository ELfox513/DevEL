.class public final synthetic Lcom/prineside/tdi2/managers/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/n;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/n;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/n;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/n;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->a(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V

    return-void
.end method
