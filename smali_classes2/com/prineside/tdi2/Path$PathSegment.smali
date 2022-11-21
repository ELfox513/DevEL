.class public Lcom/prineside/tdi2/Path$PathSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathSegment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Path$PathSegment$Direction;
    }
.end annotation


# instance fields
.field public direction:Lcom/prineside/tdi2/Path$PathSegment$Direction;

.field public distanceFromStart:F

.field public length:F

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/Path;->d()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method
