.class public Lcom/prineside/tdi2/HeadlessReplayReportGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;,
        Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;
    }
.end annotation


# static fields
.field public static a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;",
            ">;"
        }
    .end annotation
.end field

.field public static c:I

.field public static d:I

.field public static final e:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->a:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->b:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/badlogic/gdx/utils/Array;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->b:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public static synthetic b(I)I
    .locals 1

    sget v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->d:I

    add-int/2addr v0, p0

    sput v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->d:I

    return v0
.end method

.method public static synthetic c(I)I
    .locals 1

    sget v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->c:I

    add-int/2addr v0, p0

    sput v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->c:I

    return v0
.end method

.method public static synthetic d()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->e:[I

    return-object v0
.end method

.method public static e(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;-><init>(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;)V

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->m(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->n(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_RM:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->o(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCA:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->p(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->SG_WCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->a(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_B:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->b(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->c(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->CG_WC:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->d(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_EK:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->e(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_EM:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->f(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object v1, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_TG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->g(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/StatisticsType;->CG_U:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-int p0, v1

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->h(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;J)J

    sget p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->c:I

    invoke-static {v0, p0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->i(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I

    sget p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->d:I

    invoke-static {v0, p0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->j(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;I)I

    sget-object p0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->e:[I

    invoke-static {v0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->k(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;)[I

    move-result-object v1

    invoke-static {v0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->k(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;)[I

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static interval(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->e(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static start(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 2

    const-string v0, "HeadlessReplayReportGenerator"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v1, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$1;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object p0, p0, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$2;

    invoke-direct {v0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public static stop(Lcom/prineside/tdi2/GameSystemProvider;)Ljava/lang/String;
    .locals 12

    const-string v0, "HeadlessReplayReportGenerator"

    if-nez p0, :cond_0

    const-string p0, "S is null"

    invoke-static {v0, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    const/16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "frameInterval"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->RCL:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "researches"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->PRT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "sumProgressTime"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "frames"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->a:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;

    aget-object v4, v4, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    invoke-static {v4, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->l(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v3, "passedEnemies"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->b:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v6, "type"

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;

    aget-object v4, v4, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v5, v4, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v5, v4, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;->healthCoeff:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "health"

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v4, v4, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$PassedEnemy;->time:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "time"

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v3, "lastFrame"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator;->e(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;->l(Lcom/prineside/tdi2/HeadlessReplayReportGenerator$Frame;Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v3, "towers"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v7, "y"

    const-string v8, "x"

    if-ge v3, v5, :cond_5

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tower;

    aget-object v4, v4, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v5, v4, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "upgradeLevel"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "xpLevel"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v5, v4, Lcom/prineside/tdi2/Tower;->mdps:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v7, "mdps"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v5, v4, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "kills"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v5, v4, Lcom/prineside/tdi2/Tower;->damageGiven:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v7, "damage"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v5}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "moneySpent"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v7, "aimStrategy"

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "abilities"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x6

    if-ge v5, v7, :cond_4

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v3, "modifiers"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_6

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Modifier;

    aget-object v4, v4, v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v5, v4, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    const-string v3, "statistics"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/enums/StatisticsType;->values:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/systems/StatisticsSystem;->getStatistic(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-eqz v11, :cond_7

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    const-string v3, "abilitiesUsed"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    :goto_6
    iget-object v3, p0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v4, v3, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v5, v4

    if-ge v2, v5, :cond_a

    aget-object v4, v4, v2

    if-eqz v4, :cond_9

    iget-object v3, v3, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    aget v3, v3, v2

    if-lez v3, :cond_9

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
