.class public final Lr4/pj1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lr4/pj1;


# instance fields
.field public final a:Lr4/n30;

.field public final b:Lr4/k30;

.field public final c:Lr4/a40;

.field public final d:Lr4/x30;

.field public final e:Lr4/c80;

.field public final f:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Ljava/lang/String;",
            "Lr4/t30;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Ljava/lang/String;",
            "Lr4/q30;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/nj1;

    invoke-direct {v0}, Lr4/nj1;-><init>()V

    new-instance v1, Lr4/pj1;

    invoke-direct {v1, v0}, Lr4/pj1;-><init>(Lr4/nj1;)V

    sput-object v1, Lr4/pj1;->h:Lr4/pj1;

    return-void
.end method

.method public constructor <init>(Lr4/nj1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lr4/nj1;->a:Lr4/n30;

    iput-object v0, p0, Lr4/pj1;->a:Lr4/n30;

    iget-object v0, p1, Lr4/nj1;->b:Lr4/k30;

    iput-object v0, p0, Lr4/pj1;->b:Lr4/k30;

    iget-object v0, p1, Lr4/nj1;->c:Lr4/a40;

    iput-object v0, p0, Lr4/pj1;->c:Lr4/a40;

    new-instance v0, Lp/g;

    iget-object v1, p1, Lr4/nj1;->f:Lp/g;

    invoke-direct {v0, v1}, Lp/g;-><init>(Lp/g;)V

    iput-object v0, p0, Lr4/pj1;->f:Lp/g;

    new-instance v0, Lp/g;

    iget-object v1, p1, Lr4/nj1;->g:Lp/g;

    invoke-direct {v0, v1}, Lp/g;-><init>(Lp/g;)V

    iput-object v0, p0, Lr4/pj1;->g:Lp/g;

    iget-object v0, p1, Lr4/nj1;->d:Lr4/x30;

    iput-object v0, p0, Lr4/pj1;->d:Lr4/x30;

    iget-object p1, p1, Lr4/nj1;->e:Lr4/c80;

    iput-object p1, p0, Lr4/pj1;->e:Lr4/c80;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/nj1;Lr4/oj1;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/pj1;-><init>(Lr4/nj1;)V

    return-void
.end method


# virtual methods
.method public final a()Lr4/n30;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->a:Lr4/n30;

    return-object v0
.end method

.method public final b()Lr4/k30;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->b:Lr4/k30;

    return-object v0
.end method

.method public final c()Lr4/a40;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->c:Lr4/a40;

    return-object v0
.end method

.method public final d()Lr4/x30;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->d:Lr4/x30;

    return-object v0
.end method

.method public final e()Lr4/c80;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->e:Lr4/c80;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lr4/t30;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->f:Lp/g;

    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/t30;

    return-object p1
.end method

.method public final g(Ljava/lang/String;)Lr4/q30;
    .locals 1

    iget-object v0, p0, Lr4/pj1;->g:Lp/g;

    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/q30;

    return-object p1
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lr4/pj1;->c:Lr4/a40;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lr4/pj1;->a:Lr4/n30;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lr4/pj1;->b:Lr4/k30;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lr4/pj1;->f:Lp/g;

    invoke-virtual {v1}, Lp/g;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lr4/pj1;->e:Lr4/c80;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lr4/pj1;->f:Lp/g;

    invoke-virtual {v1}, Lp/g;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lr4/pj1;->f:Lp/g;

    invoke-virtual {v2}, Lp/g;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lr4/pj1;->f:Lp/g;

    invoke-virtual {v2, v1}, Lp/g;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
