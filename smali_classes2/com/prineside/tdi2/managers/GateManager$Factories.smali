.class public Lcom/prineside/tdi2/managers/GateManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/GateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

.field public BARRIER_TYPE:Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;

.field public TELEPORT:Lcom/prineside/tdi2/gates/TeleportGate$TeleportGateFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
