.class public Lcom/prineside/tdi2/managers/MinerManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/MinerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public INFIAR:Lcom/prineside/tdi2/miners/InfiarMiner$InfiarMinerFactory;

.field public MATRIX:Lcom/prineside/tdi2/miners/MatrixMiner$MatrixMinerFactory;

.field public SCALAR:Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;

.field public TENSOR:Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;

.field public VECTOR:Lcom/prineside/tdi2/miners/VectorMiner$VectorMinerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
