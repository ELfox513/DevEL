.class Lcom/prineside/tdi2/screens/StatisticsScreen$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/StatisticsScreen;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/StatisticsScreen;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/StatisticsScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/StatisticsScreen$7;->a:Lcom/prineside/tdi2/screens/StatisticsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)I
    .locals 3

    iget-wide v0, p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    iget-wide p1, p2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;->startTimestamp:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    check-cast p2, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/screens/StatisticsScreen$7;->compare(Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)I

    move-result p1

    return p1
.end method
