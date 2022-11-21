.class public Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/TowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TowerStatConfig"
.end annotation


# instance fields
.field public gameValueMultipliers:[Lcom/prineside/tdi2/enums/GameValueType;

.field public maxValue:F

.field public minValue:F

.field public pwrFactor:F

.field public rounding:I

.field public unique:Z

.field public values:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->rounding:I

    return-void
.end method
