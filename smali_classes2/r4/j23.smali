.class public final Lr4/j23;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/k23;


# direct methods
.method public constructor <init>(Lr4/k23;)V
    .locals 0

    iput-object p1, p0, Lr4/j23;->a:Lr4/k23;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lr4/j23;->a:Lr4/k23;

    invoke-interface {v0}, Lr4/o43;->j()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lr4/j23;->a:Lr4/k23;

    invoke-virtual {v0, p1}, Lr4/k23;->f(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    iget-object v0, p0, Lr4/j23;->a:Lr4/k23;

    invoke-virtual {v0}, Lr4/k23;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/j23;->a:Lr4/k23;

    invoke-interface {v0}, Lr4/o43;->g()I

    move-result v0

    return v0
.end method
