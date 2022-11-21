.class public Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
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

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->a:Lcom/badlogic/gdx/math/Vector;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->c:F

    return-void
.end method


# virtual methods
.method public getBegin()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->a:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getCumulativeLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->d:F

    return v0
.end method

.method public getEnd()Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->b:Lcom/badlogic/gdx/math/Vector;

    return-object v0
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/steer/utils/paths/LinePath$Segment;->c:F

    return v0
.end method
