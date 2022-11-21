.class Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->start(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;-><init>(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;)V

    iget-object p3, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iput-object p3, p2, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getHealth()F

    move-result p3

    iget p1, p1, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    div-float/2addr p3, p1

    iput p3, p2, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;->healthCoeff:F

    iget-object p1, p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object p3, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getCurrentGameStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p2, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;->time:F

    invoke-static {}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->a()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
