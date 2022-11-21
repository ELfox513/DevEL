.class public final Lr4/fs3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/is3<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/is3<",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(IILr4/es3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/rr3;->a(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/fs3;->a:Ljava/util/List;

    invoke-static {p2}, Lr4/rr3;->a(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lr4/fs3;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lr4/is3;)Lr4/fs3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "+TT;>;)",
            "Lr4/fs3<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fs3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Lr4/is3;)Lr4/fs3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "+",
            "Ljava/util/Collection<",
            "+TT;>;>;)",
            "Lr4/fs3<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fs3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final c()Lr4/gs3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/gs3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/gs3;

    iget-object v1, p0, Lr4/fs3;->a:Ljava/util/List;

    iget-object v2, p0, Lr4/fs3;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr4/gs3;-><init>(Ljava/util/List;Ljava/util/List;Lr4/es3;)V

    return-object v0
.end method
