.class public Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/DailyQuestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyLootDayConfig"
.end annotation


# instance fields
.field public count:I

.field public item:Lcom/prineside/tdi2/Item;

.field public monthlyBonus:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;-><init>()V

    const-string v1, "item"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/Item;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Item;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->item:Lcom/prineside/tdi2/Item;

    const-string v1, "count"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->count:I

    const-string v1, "monthlyBonus"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    int-to-double v1, p0

    iput-wide v1, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->monthlyBonus:D

    return-object v0
.end method


# virtual methods
.method public getCount(I)I
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->count:I

    iget-wide v1, p0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyLootDayConfig;->monthlyBonus:D

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    add-double/2addr v1, v3

    double-to-int p1, v1

    add-int/2addr v0, p1

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->isDoubleGainEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method
