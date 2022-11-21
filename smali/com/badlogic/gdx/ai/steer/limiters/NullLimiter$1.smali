.class final Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter$1;
.super Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/steer/limiters/NullLimiter;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxAngularAcceleration()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public getMaxAngularSpeed()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public getMaxLinearAcceleration()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public getMaxLinearSpeed()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method
