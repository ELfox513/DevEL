.class public Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BehaviorAndWeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/SteeringBehavior;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
            "TT;>;F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    iput p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->b:F

    return-void
.end method


# virtual methods
.method public getBehavior()Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    return-object v0
.end method

.method public getWeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->b:F

    return v0
.end method

.method public setBehavior(Lcom/badlogic/gdx/ai/steer/SteeringBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->a:Lcom/badlogic/gdx/ai/steer/SteeringBehavior;

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/BlendedSteering$BehaviorAndWeight;->b:F

    return-void
.end method
