.class public abstract Lr4/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/o8;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/ho;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lr4/vc;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr4/j5;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final c(Lr4/ho;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lr4/j5;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr4/j5;->c:I

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lr4/vc;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lr4/j5;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ho;

    iget-boolean v2, p0, Lr4/j5;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lr4/ho;->y(Lr4/o8;Lr4/vc;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(Lr4/vc;)V
    .locals 3

    iput-object p1, p0, Lr4/j5;->d:Lr4/vc;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lr4/j5;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/ho;

    iget-boolean v2, p0, Lr4/j5;->a:Z

    invoke-interface {v1, p0, p1, v2}, Lr4/ho;->s(Lr4/o8;Lr4/vc;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(I)V
    .locals 4

    iget-object v0, p0, Lr4/j5;->d:Lr4/vc;

    sget v1, Lr4/lc;->a:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lr4/j5;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ho;

    iget-boolean v3, p0, Lr4/j5;->a:Z

    invoke-interface {v2, p0, v0, v3, p1}, Lr4/ho;->f(Lr4/o8;Lr4/vc;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lr4/j5;->d:Lr4/vc;

    sget v1, Lr4/lc;->a:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lr4/j5;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lr4/j5;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/ho;

    iget-boolean v3, p0, Lr4/j5;->a:Z

    invoke-interface {v2, p0, v0, v3}, Lr4/ho;->a(Lr4/o8;Lr4/vc;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/j5;->d:Lr4/vc;

    return-void
.end method
