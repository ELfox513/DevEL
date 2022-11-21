.class public Lcom/prineside/tdi2/managers/UnitManager$Factories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/UnitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factories"
.end annotation


# instance fields
.field public BALL_LIGHTNING:Lcom/prineside/tdi2/units/BallLightningUnit$BallLightningUnitFactory;

.field public DISORIENTED:Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;

.field public MICROGUN:Lcom/prineside/tdi2/units/MicrogunUnit$MicrogunUnitFactory;

.field public MINE:Lcom/prineside/tdi2/units/MineUnit$MineUnitFactory;

.field public SNOWBALL:Lcom/prineside/tdi2/units/SnowballUnit$SnowballUnitFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
