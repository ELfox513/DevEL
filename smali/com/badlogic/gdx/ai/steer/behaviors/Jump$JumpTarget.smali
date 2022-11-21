.class Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;
.super Lcom/badlogic/gdx/ai/steer/SteerableAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JumpTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/SteerableAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/steer/SteerableAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;->a:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1}, Lcom/badlogic/gdx/ai/utils/Location;->getPosition()Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/math/Vector;->setZero()Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;->b:Lcom/badlogic/gdx/math/Vector;

    return-void
.end method


# virtual methods
.method public getLinearVelocity()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;->b:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpTarget;->a:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method
