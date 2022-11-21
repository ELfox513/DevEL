.class public final enum Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

.field public static final enum INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

.field public static final enum MODIFIED_GAME:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

.field public static final enum VALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const-string v1, "INVALID_RECORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const-string v1, "MODIFIED_GAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->MODIFIED_GAME:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const-string v1, "VALID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->VALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    new-instance v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const-string v1, "INVALID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    invoke-static {}, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->c()[Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID_RECORD:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->MODIFIED_GAME:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->VALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->INVALID:Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->a:[Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult$Result;

    return-object v0
.end method
