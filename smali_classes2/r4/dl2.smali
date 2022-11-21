.class public final Lr4/dl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/or2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/or2<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/am2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/am2<",
            "TR;",
            "Lr4/dr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/am2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/am2<",
            "TR;",
            "Lr4/dr2<",
            "TR;TAdT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/dl2;->a:Lr4/am2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/dr2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/dr2<",
            "TR;TAdT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/dl2;->a:Lr4/am2;

    check-cast v0, Lr4/al2;

    invoke-virtual {v0}, Lr4/al2;->b()Lr4/r61;

    move-result-object v0

    iput-object v0, p1, Lr4/dr2;->a:Lr4/r61;

    return-void
.end method

.method public final b(Lr4/pr2;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/pr2<",
            "TR;TAdT;>;)",
            "Lr4/h83<",
            "Lr4/dr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    check-cast p1, Lr4/el2;

    iget-object v0, p0, Lr4/dl2;->a:Lr4/am2;

    iget-object v1, p1, Lr4/el2;->b:Lr4/bm2;

    iget-object p1, p1, Lr4/el2;->a:Lr4/zl2;

    check-cast v0, Lr4/al2;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lr4/al2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
