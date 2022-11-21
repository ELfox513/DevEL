.class public Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;
.super Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/units/DisorientedUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisorientedUnitFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory<",
        "Lcom/prineside/tdi2/units/DisorientedUnit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/units/DisorientedUnit$DisorientedUnitFactory;->create()Lcom/prineside/tdi2/units/DisorientedUnit;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/units/DisorientedUnit;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/units/DisorientedUnit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/units/DisorientedUnit;-><init>(Lcom/prineside/tdi2/units/DisorientedUnit$1;)V

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public setupAssets()V
    .locals 0

    return-void
.end method
