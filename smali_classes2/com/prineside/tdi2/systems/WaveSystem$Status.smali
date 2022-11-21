.class public final enum Lcom/prineside/tdi2/systems/WaveSystem$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/WaveSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/systems/WaveSystem$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ENDED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

.field public static final enum NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

.field public static final enum SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

.field public static final enum SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

.field public static final synthetic a:[Lcom/prineside/tdi2/systems/WaveSystem$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const-string v1, "SPAWNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const-string v1, "SPAWNED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    new-instance v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const-string v1, "ENDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/systems/WaveSystem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->ENDED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-static {}, Lcom/prineside/tdi2/systems/WaveSystem$Status;->c()[Lcom/prineside/tdi2/systems/WaveSystem$Status;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->a:[Lcom/prineside/tdi2/systems/WaveSystem$Status;

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

.method public static synthetic c()[Lcom/prineside/tdi2/systems/WaveSystem$Status;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNING:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->ENDED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/systems/WaveSystem$Status;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/systems/WaveSystem$Status;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/systems/WaveSystem$Status;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/WaveSystem$Status;->a:[Lcom/prineside/tdi2/systems/WaveSystem$Status;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/systems/WaveSystem$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/systems/WaveSystem$Status;

    return-object v0
.end method
