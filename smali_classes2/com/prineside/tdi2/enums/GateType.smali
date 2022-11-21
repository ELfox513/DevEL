.class public final enum Lcom/prineside/tdi2/enums/GateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/prineside/tdi2/enums/GateType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BARRIER_HEALTH:Lcom/prineside/tdi2/enums/GateType;

.field public static final enum BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

.field public static final enum TELEPORT:Lcom/prineside/tdi2/enums/GateType;

.field public static final synthetic a:[Lcom/prineside/tdi2/enums/GateType;

.field public static final values:[Lcom/prineside/tdi2/enums/GateType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/enums/GateType;

    const-string v1, "BARRIER_HEALTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GateType;->BARRIER_HEALTH:Lcom/prineside/tdi2/enums/GateType;

    new-instance v0, Lcom/prineside/tdi2/enums/GateType;

    const-string v1, "BARRIER_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    new-instance v0, Lcom/prineside/tdi2/enums/GateType;

    const-string v1, "TELEPORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/enums/GateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    invoke-static {}, Lcom/prineside/tdi2/enums/GateType;->c()[Lcom/prineside/tdi2/enums/GateType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/GateType;->a:[Lcom/prineside/tdi2/enums/GateType;

    invoke-static {}, Lcom/prineside/tdi2/enums/GateType;->values()[Lcom/prineside/tdi2/enums/GateType;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

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

.method public static synthetic c()[Lcom/prineside/tdi2/enums/GateType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/prineside/tdi2/enums/GateType;

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->BARRIER_HEALTH:Lcom/prineside/tdi2/enums/GateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GateType;
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/GateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/prineside/tdi2/enums/GateType;

    return-object p0
.end method

.method public static values()[Lcom/prineside/tdi2/enums/GateType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->a:[Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {v0}, [Lcom/prineside/tdi2/enums/GateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/enums/GateType;

    return-object v0
.end method
