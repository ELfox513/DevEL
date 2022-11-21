.class public final enum Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameOverReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

.field public static final enum NO_ENEMIES_LEFT:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

.field public static final enum QUEST_FAILED:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

.field public static final enum ZERO_BASE_HEALTH:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const-string v1, "ZERO_BASE_HEALTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->ZERO_BASE_HEALTH:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const-string v1, "NO_ENEMIES_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->NO_ENEMIES_LEFT:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const-string v1, "QUEST_FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->QUEST_FAILED:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->c()[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->MANUAL:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->ZERO_BASE_HEALTH:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->NO_ENEMIES_LEFT:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->QUEST_FAILED:Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/GameStateSystem$GameOverReason;

    return-object v0
.end method
