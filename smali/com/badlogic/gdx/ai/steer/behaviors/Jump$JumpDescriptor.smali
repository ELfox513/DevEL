.class public Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/steer/behaviors/Jump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JumpDescriptor"
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
.field public delta:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public landingPosition:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public takeoffPosition:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->takeoffPosition:Lcom/badlogic/gdx/math/Vector;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->landingPosition:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p2}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->delta:Lcom/badlogic/gdx/math/Vector;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->set(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->takeoffPosition:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->landingPosition:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/behaviors/Jump$JumpDescriptor;->delta:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    return-void
.end method
