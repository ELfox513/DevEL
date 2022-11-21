.class public final enum Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;
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
    name = "GameMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public static final enum USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

.field public static values:[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-string v1, "BASIC_LEVELS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const-string v1, "USER_MAPS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->c()[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->values()[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->values:[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    return-object v0
.end method
