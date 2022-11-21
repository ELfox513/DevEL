.class public final enum Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContinueGameStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GAME_FROM_PREVIOUS_BUILD:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final enum GAME_VALUES_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final enum MAP_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final enum MAP_NOT_FOUND:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final enum OTHER_ERROR:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final enum SUCCESS:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

.field public static final values:[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const-string v1, "MAP_NOT_FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_NOT_FOUND:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const-string v1, "MAP_CHANGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const-string v1, "GAME_VALUES_CHANGED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_VALUES_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const-string v1, "GAME_FROM_PREVIOUS_BUILD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_FROM_PREVIOUS_BUILD:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const-string v1, "OTHER_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->OTHER_ERROR:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->SUCCESS:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->c()[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->values()[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->values:[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_NOT_FOUND:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->MAP_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_VALUES_CHANGED:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->GAME_FROM_PREVIOUS_BUILD:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->OTHER_ERROR:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->SUCCESS:Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/GameStateSystem$ContinueGameStatus;

    return-object v0
.end method
