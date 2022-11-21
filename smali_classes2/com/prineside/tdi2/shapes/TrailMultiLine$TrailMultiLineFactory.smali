.class public Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;
.super Lcom/prineside/tdi2/Shape$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/shapes/TrailMultiLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrailMultiLineFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Shape$Factory<",
        "Lcom/prineside/tdi2/shapes/TrailMultiLine;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/prineside/tdi2/Shape;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/TrailMultiLine$TrailMultiLineFactory;->b()Lcom/prineside/tdi2/shapes/TrailMultiLine;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/prineside/tdi2/shapes/TrailMultiLine;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/shapes/TrailMultiLine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/shapes/TrailMultiLine;-><init>(Lcom/prineside/tdi2/shapes/TrailMultiLine$1;)V

    return-object v0
.end method

.method public setup()V
    .locals 0

    return-void
.end method
