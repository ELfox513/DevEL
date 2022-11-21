.class public final enum Lcom/prineside/tdi2/IssuedItems$IssueReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/IssuedItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IssueReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/IssuedItems$IssueReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACHIEVEMENT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum CASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum DAILY_LOOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum DAILY_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum DAILY_QUEST_LEADER_BOARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum FAILURE_COMPENSATION:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum FOR_INVITED_PLAYER:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum GAME_OVER_BASIC_LEVEL:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum GAME_OVER_DAILY_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum GAME_OVER_USER_MAP:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum LUCKY_SHOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum MAP_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum PURCHASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum QUESTS_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum RANDOM_BARRIER_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum RANDOM_TELEPORT_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum RANDOM_TILE_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum REGULAR_REWARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum REWARD_VIDEO:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum SECRET_CODE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum SIGNED_UP_BY_INVITE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final enum WAVE_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

.field public static final synthetic a:[Lcom/prineside/tdi2/IssuedItems$IssueReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "REGULAR_REWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REGULAR_REWARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "GAME_OVER_BASIC_LEVEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_BASIC_LEVEL:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "GAME_OVER_USER_MAP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_USER_MAP:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "GAME_OVER_DAILY_QUEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_DAILY_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "QUEST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "WAVE_QUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->WAVE_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "DAILY_QUEST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "REWARD_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REWARD_VIDEO:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "SECRET_CODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->SECRET_CODE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "PURCHASE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->PURCHASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "RANDOM_TILE_PACK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_TILE_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "RANDOM_BARRIER_PACK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_BARRIER_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "RANDOM_TELEPORT_PACK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_TELEPORT_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "CASE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->CASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "DAILY_QUEST_LEADER_BOARD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_QUEST_LEADER_BOARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "MAP_PRESTIGE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->MAP_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "QUESTS_PRESTIGE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->QUESTS_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "DAILY_LOOT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_LOOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "SIGNED_UP_BY_INVITE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->SIGNED_UP_BY_INVITE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "FOR_INVITED_PLAYER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->FOR_INVITED_PLAYER:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "FAILURE_COMPENSATION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->FAILURE_COMPENSATION:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "LUCKY_SHOT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->LUCKY_SHOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    new-instance v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const-string v1, "ACHIEVEMENT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/IssuedItems$IssueReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->ACHIEVEMENT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/IssuedItems$IssueReason;->c()[Lcom/prineside/tdi2/IssuedItems$IssueReason;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->a:[Lcom/prineside/tdi2/IssuedItems$IssueReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c()[Lcom/prineside/tdi2/IssuedItems$IssueReason;
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/prineside/tdi2/IssuedItems$IssueReason;

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REGULAR_REWARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_BASIC_LEVEL:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_USER_MAP:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->GAME_OVER_DAILY_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->WAVE_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_QUEST:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->REWARD_VIDEO:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->SECRET_CODE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->PURCHASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_TILE_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_BARRIER_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->RANDOM_TELEPORT_PACK:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->CASE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_QUEST_LEADER_BOARD:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->MAP_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->QUESTS_PRESTIGE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->DAILY_LOOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->SIGNED_UP_BY_INVITE:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->FOR_INVITED_PLAYER:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->FAILURE_COMPENSATION:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->LUCKY_SHOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/IssuedItems$IssueReason;->ACHIEVEMENT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/IssuedItems$IssueReason;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/IssuedItems$IssueReason;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/IssuedItems$IssueReason;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/IssuedItems$IssueReason;->a:[Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/IssuedItems$IssueReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/IssuedItems$IssueReason;

    return-object v0
.end method
