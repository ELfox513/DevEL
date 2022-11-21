.class Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$8;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->show(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$8;->retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V

    return-void
.end method
