.class Lcom/prineside/tdi2/managers/DailyQuestManager$7$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager$7;->cancelled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/DailyQuestManager$7;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager$7;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7$4;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$7$4;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$7;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->c:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$7;->d:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    invoke-interface {v1, v0}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
