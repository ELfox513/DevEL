.class public Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/utils/QuadDrawableStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuadActorConfig"
.end annotation


# instance fields
.field public actor:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/QuadActor;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->actor:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iput p2, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->x:F

    iput p3, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->y:F

    iput p4, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->width:F

    iput p5, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->height:F

    return-void
.end method
