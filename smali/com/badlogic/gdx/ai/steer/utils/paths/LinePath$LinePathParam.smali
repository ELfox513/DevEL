.class public Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinePathParam"
.end annotation


# instance fields
.field public a:I

.field public b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;->b:F

    return v0
.end method

.method public getSegmentIndex()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;->a:I

    return v0
.end method

.method public setDistance(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$LinePathParam;->b:F

    return-void
.end method
