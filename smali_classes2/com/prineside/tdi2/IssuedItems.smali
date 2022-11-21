.class public Lcom/prineside/tdi2/IssuedItems;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/IssuedItems$IssueReason;
    }
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public achievementType:Lcom/prineside/tdi2/enums/AchievementType;

.field public addedToIssuedItemsArray:Z

.field public basicLevelGameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public caseType:Lcom/prineside/tdi2/enums/CaseType;

.field public dailyLootDate:Ljava/lang/String;

.field public dailyQuestDate:Ljava/lang/String;

.field public dqBoardPlace:I

.field public dqBoardRankPercentage:I

.field public dqBoardTotalPlaces:I

.field public dqDate:Ljava/lang/String;

.field public failureCompensationDescription:Ljava/lang/String;

.field public gameOverBasicLevel:Ljava/lang/String;

.field public invitedPlayerId:Ljava/lang/String;

.field public invitedPlayerNickname:Ljava/lang/String;

.field public issueTimestamp:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public items:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public mapPrestigeConfig:Lcom/prineside/tdi2/MapPrestigeConfig;

.field public massUnpackCount:I

.field public questBasicLevel:Ljava/lang/String;

.field public questId:Ljava/lang/String;

.field public randomBarrierPackQuality:F

.field public randomTilePackQuality:F

.field public reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public secretCode:Ljava/lang/String;

.field public secretCodeDescription:Ljava/lang/String;

.field public shown:Z
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public userMapHash:I

.field public userMapId:Ljava/lang/String;

.field public waveQuestBasicLevel:Ljava/lang/String;

.field public waveQuestId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iput p2, p0, Lcom/prineside/tdi2/IssuedItems;->issueTimestamp:I

    iput-object p1, p0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/IssuedItems;
    .locals 4

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/IssuedItems$IssueReason;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/IssuedItems$IssueReason;

    move-result-object v1

    const-string v2, "it"

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    const-string v1, "s"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    const-string v1, "muc"

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    const-string v1, "i"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v3, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v2}, Lcom/prineside/tdi2/ItemStack;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/ItemStack;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/IssuedItems$1;->a:[I

    iget-object v2, v0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "q"

    const-string v3, "bl"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const/4 v1, 0x0

    const-string v2, "fcd"

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->failureCompensationDescription:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "at"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/enums/AchievementType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/AchievementType;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->achievementType:Lcom/prineside/tdi2/enums/AchievementType;

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "ipipi"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerId:Ljava/lang/String;

    const-string v1, "ipipn"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerNickname:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "dqlbp"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/IssuedItems;->dqBoardPlace:I

    const-string v1, "dqlbrp"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/IssuedItems;->dqBoardRankPercentage:I

    const-string v1, "dqlbtp"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/IssuedItems;->dqBoardTotalPlaces:I

    const-string v1, "dqlbd"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->dqDate:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "ct"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/enums/CaseType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/CaseType;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "dld"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "mpc"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/MapPrestigeConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/MapPrestigeConfig;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->mapPrestigeConfig:Lcom/prineside/tdi2/MapPrestigeConfig;

    goto/16 :goto_1

    :pswitch_8
    const-string v1, "rbpq"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/IssuedItems;->randomBarrierPackQuality:F

    goto :goto_1

    :pswitch_9
    const-string v1, "rtpq"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/IssuedItems;->randomTilePackQuality:F

    goto :goto_1

    :pswitch_a
    const-string v1, "umh"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/IssuedItems;->userMapHash:I

    const-string v1, "umi"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->userMapId:Ljava/lang/String;

    goto :goto_1

    :pswitch_b
    const-string v1, "c"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->secretCode:Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->secretCodeDescription:Ljava/lang/String;

    goto :goto_1

    :pswitch_c
    const-string v1, "dqd"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->dailyQuestDate:Ljava/lang/String;

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->gameOverBasicLevel:Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "blgm"

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->basicLevelGameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->waveQuestBasicLevel:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->waveQuestId:Ljava/lang/String;

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/IssuedItems;->questId:Ljava/lang/String;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public compactItems()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/ItemStack;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v4

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v5

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    iget-object v3, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getReasonDescription()Ljava/lang/CharSequence;
    .locals 10

    sget-object v0, Lcom/prineside/tdi2/IssuedItems;->a:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/prineside/tdi2/IssuedItems$1;->a:[I

    iget-object v3, p0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x42c80000    # 100.0f

    const-string v5, "issued_items_reason_description_DAILY_QUEST"

    const/4 v6, 0x2

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->failureCompensationDescription:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    iget-object v3, p0, Lcom/prineside/tdi2/IssuedItems;->achievementType:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AchievementManager;->getName(Lcom/prineside/tdi2/enums/AchievementType;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "achievement_complete"

    invoke-virtual {v3, v1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerNickname:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_FOR_INVITED_PLAYER"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_SIGNED_UP_BY_INVITE"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_5
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/prineside/tdi2/IssuedItems;->dqDate:Ljava/lang/String;

    aput-object v5, v4, v1

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardPlace:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardTotalPlaces:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardRankPercentage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "issued_items_reason_description_DAILY_QUEST_LEADER_BOARD"

    invoke-virtual {v2, v1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_6
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/prineside/tdi2/Item$D;->F_CASE:Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;

    iget-object v5, p0, Lcom/prineside/tdi2/IssuedItems;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v4, v5, v1, v7}, Lcom/prineside/tdi2/items/CaseItem$CaseItemFactory;->create(Lcom/prineside/tdi2/enums/CaseType;ZZ)Lcom/prineside/tdi2/items/CaseItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/items/CaseItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_CASE"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_RANDOM_TELEPORT_PACK"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_QUESTS_PRESTIGE"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_9
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_LUCKY_SHOT"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_DAILY_LOOT"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_MAP_PRESTIGE"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/prineside/tdi2/IssuedItems;->randomBarrierPackQuality:F

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_RANDOM_BARRIER_PACK"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/prineside/tdi2/IssuedItems;->randomTilePackQuality:F

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/StrictMath;->round(F)I

    move-result v4

    invoke-static {v4}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_RANDOM_TILE_PACK"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_PURCHASE"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_GAME_OVER_USER_MAP"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_SECRET_CODE"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/IssuedItems;->secretCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/IssuedItems;->secretCodeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_REWARD_VIDEO"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_12
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/IssuedItems;->dailyQuestDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_14
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->gameOverBasicLevel:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_GAME_OVER_BASIC_LEVEL"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_0

    :pswitch_15
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v3, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestBasicLevel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/BasicLevel;->getWaveQuest(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v5, v6, [Ljava/lang/Object;

    iget v3, v3, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    iget-object v1, v2, Lcom/prineside/tdi2/BasicLevel;->name:Ljava/lang/String;

    aput-object v1, v5, v7

    const-string v1, "issued_items_reason_description_WAVE_QUEST"

    invoke-virtual {v4, v1, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "issued_items_reason_description_WAVE_QUEST_lite"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :pswitch_16
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->questId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/BasicLevel;->getQuest(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevelQuestConfig;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v7}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getTitle(ZZ)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->getRequiredValue(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v2, v8, v9}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->formatValueForUi(D)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v7

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    aput-object v1, v3, v6

    const-string v1, "issued_items_reason_description_QUEST"

    invoke-virtual {v4, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "issued_items_reason_description_QUEST_lite"

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    if-le v1, v7, :cond_3

    const-string v1, " x"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 4

    const-class v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/IssuedItems;->issueTimestamp:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    const-class v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->basicLevelGameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->gameOverBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->userMapId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/IssuedItems;->userMapHash:I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->dailyQuestDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->questId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->secretCode:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->secretCodeDescription:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/IssuedItems;->randomTilePackQuality:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/IssuedItems;->randomBarrierPackQuality:F

    const-class v1, Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/CaseType;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardPlace:I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v3

    iput v3, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardTotalPlaces:I

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardRankPercentage:I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerNickname:Ljava/lang/String;

    const-class v1, Lcom/prineside/tdi2/MapPrestigeConfig;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/MapPrestigeConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->mapPrestigeConfig:Lcom/prineside/tdi2/MapPrestigeConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    const-class v1, Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/AchievementType;

    iput-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->achievementType:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/prineside/tdi2/IssuedItems;->failureCompensationDescription:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/IssuedItems;->addedToIssuedItemsArray:Z

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->issueTimestamp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "it"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "muc"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/IssuedItems$1;->a:[I

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "q"

    const-string v2, "bl"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->failureCompensationDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "fcd"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->achievementType:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "at"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerId:Ljava/lang/String;

    const-string v1, "ipipi"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerNickname:Ljava/lang/String;

    const-string v1, "ipipn"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dqlbp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardRankPercentage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dqlbrp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardTotalPlaces:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dqlbtp"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->dqDate:Ljava/lang/String;

    const-string v1, "dqlbd"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ct"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    const-string v1, "dld"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "mpc"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->mapPrestigeConfig:Lcom/prineside/tdi2/MapPrestigeConfig;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/MapPrestigeConfig;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    goto :goto_0

    :pswitch_8
    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->randomBarrierPackQuality:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "rbpq"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->randomTilePackQuality:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "rtpq"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->userMapId:Ljava/lang/String;

    const-string v1, "umi"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/IssuedItems;->userMapHash:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "umh"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->secretCode:Ljava/lang/String;

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->secretCodeDescription:Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->dailyQuestDate:Ljava/lang/String;

    const-string v1, "dqd"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->gameOverBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->basicLevelGameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-string v1, "blgm"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/IssuedItems;->questId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const-string v0, "i"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ItemStack;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ItemStack;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 4

    const-class v0, Ljava/lang/String;

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->issueTimestamp:I

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/IssuedItems;->shown:Z

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->reason:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->basicLevelGameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-class v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {p1, p2, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->gameOverBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->userMapId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->userMapHash:I

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->dailyQuestDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->questBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->questId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestBasicLevel:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->waveQuestId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->secretCode:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->secretCodeDescription:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->randomTilePackQuality:F

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->randomBarrierPackQuality:F

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->caseType:Lcom/prineside/tdi2/enums/CaseType;

    const-class v2, Lcom/prineside/tdi2/enums/CaseType;

    invoke-virtual {p1, p2, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardPlace:I

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardTotalPlaces:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqBoardRankPercentage:I

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->dqDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->invitedPlayerNickname:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->mapPrestigeConfig:Lcom/prineside/tdi2/MapPrestigeConfig;

    const-class v2, Lcom/prineside/tdi2/MapPrestigeConfig;

    invoke-virtual {p1, p2, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->dailyLootDate:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->achievementType:Lcom/prineside/tdi2/enums/AchievementType;

    const-class v2, Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/IssuedItems;->failureCompensationDescription:Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/IssuedItems;->addedToIssuedItemsArray:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/IssuedItems;->massUnpackCount:I

    invoke-virtual {p2, p1, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
