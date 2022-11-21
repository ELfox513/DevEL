.class public final synthetic Lcom/prineside/tdi2/managers/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;

.field public final synthetic b:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

.field public final synthetic c:I

.field public final synthetic d:Lcom/prineside/tdi2/utils/ObjectRetriever;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;ILcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/l;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/l;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    iput p3, p0, Lcom/prineside/tdi2/managers/l;->c:I

    iput-object p4, p0, Lcom/prineside/tdi2/managers/l;->d:Lcom/prineside/tdi2/utils/ObjectRetriever;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/l;->a:Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/l;->b:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    iget v2, p0, Lcom/prineside/tdi2/managers/l;->c:I

    iget-object v3, p0, Lcom/prineside/tdi2/managers/l;->d:Lcom/prineside/tdi2/utils/ObjectRetriever;

    check-cast p1, Lcom/prineside/tdi2/BasicLevel;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;->a(Lcom/prineside/tdi2/managers/DailyQuestManager$3$1;Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;ILcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/BasicLevel;)V

    return-void
.end method
