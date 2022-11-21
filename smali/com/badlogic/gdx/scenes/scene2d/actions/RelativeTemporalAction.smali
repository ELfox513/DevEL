.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SourceFile"


# instance fields
.field public u:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;->u:F

    return-void
.end method

.method public c(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;->u:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;->d(F)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;->u:F

    return-void
.end method

.method public abstract d(F)V
.end method
