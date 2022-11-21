.class Lcom/prineside/tdi2/utils/PerformanceSurvey$1;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/utils/PerformanceSurvey;->execute(Lcom/prineside/tdi2/utils/PerformanceSurvey$PerformanceSurveyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:[Z

.field public final synthetic c:[J

.field public final synthetic d:J


# direct methods
.method public constructor <init>([Z[Z[JJ)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->a:[Z

    iput-object p2, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->b:[Z

    iput-object p3, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->c:[J

    iput-wide p4, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->d:J

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 6

    iget-object p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->a:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v0, p1, v1

    instance-of p1, p2, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;

    iget-object p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->b:[Z

    iget-object p2, p2, Lcom/prineside/tdi2/utils/PerformanceSurvey$SomeRequest;->text:Ljava/lang/String;

    const-string v0, "OK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    aput-boolean p2, p1, v1

    iget-object p1, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->c:[J

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/prineside/tdi2/utils/PerformanceSurvey$1;->d:J

    sub-long/2addr v2, v4

    aput-wide v2, p1, v1

    :cond_0
    return-void
.end method
