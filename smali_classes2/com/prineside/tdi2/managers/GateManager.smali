.class public Lcom/prineside/tdi2/managers/GateManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/GateManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/GateManager$Factories;,
        Lcom/prineside/tdi2/managers/GateManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/GateManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Gate$Factory;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/managers/GateManager$Factories;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/GateManager$Factories;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    sget-object v1, Lcom/prineside/tdi2/enums/GateType;->values:[Lcom/prineside/tdi2/enums/GateType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/Gate$Factory;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/GateManager;->a:[Lcom/prineside/tdi2/Gate$Factory;

    sget-object v3, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_TYPE:Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/GateType;->BARRIER_HEALTH:Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    aput-object v4, v2, v3

    sget-object v3, Lcom/prineside/tdi2/enums/GateType;->TELEPORT:Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    new-instance v4, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;

    aput-object v4, v2, v3

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/GateManager;->a:[Lcom/prineside/tdi2/Gate$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all gate factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public createGateFromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/GateType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GateType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/prineside/tdi2/Gate$Factory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JsonValue must be an object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRandomGate(Lcom/prineside/tdi2/enums/GateType;FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/GateManager;->getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/prineside/tdi2/Gate$Factory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Gate;

    move-result-object p1

    return-object p1
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/GateType;)Lcom/prineside/tdi2/Gate$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/GateType;",
            ")",
            "Lcom/prineside/tdi2/Gate$Factory<",
            "+",
            "Lcom/prineside/tdi2/Gate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GateManager;->a:[Lcom/prineside/tdi2/Gate$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/GateManager;->a:[Lcom/prineside/tdi2/Gate$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/prineside/tdi2/Gate$Factory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
