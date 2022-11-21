.class public final Lr4/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/wi;


# instance fields
.field public final a:[Lr4/wi;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/wi;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/sd;

.field public k:Lr4/vi;

.field public p:Lr4/td;

.field public q:I

.field public r:Lr4/zi;


# direct methods
.method public varargs constructor <init>([Lr4/wi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/aj;->a:[Lr4/wi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lr4/aj;->b:Ljava/util/ArrayList;

    new-instance p1, Lr4/sd;

    invoke-direct {p1}, Lr4/sd;-><init>()V

    iput-object p1, p0, Lr4/aj;->d:Lr4/sd;

    const/4 p1, -0x1

    iput p1, p0, Lr4/aj;->q:I

    return-void
.end method

.method public static synthetic f(Lr4/aj;ILr4/td;Ljava/lang/Object;)V
    .locals 3

    iget-object p3, p0, Lr4/aj;->r:Lr4/zi;

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_0

    iget-object v2, p0, Lr4/aj;->d:Lr4/sd;

    invoke-virtual {p2, v1, v2, p3}, Lr4/td;->g(ILr4/sd;Z)Lr4/sd;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget p3, p0, Lr4/aj;->q:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p3, v1, :cond_2

    iput v2, p0, Lr4/aj;->q:I

    :cond_1
    move-object p3, v0

    goto :goto_1

    :cond_2
    if-eq p3, v2, :cond_1

    new-instance p3, Lr4/zi;

    invoke-direct {p3, v2}, Lr4/zi;-><init>(I)V

    :goto_1
    iput-object p3, p0, Lr4/aj;->r:Lr4/zi;

    :cond_3
    iget-object p3, p0, Lr4/aj;->r:Lr4/zi;

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lr4/aj;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lr4/aj;->a:[Lr4/wi;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_5

    iput-object p2, p0, Lr4/aj;->p:Lr4/td;

    :cond_5
    iget-object p1, p0, Lr4/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lr4/aj;->k:Lr4/vi;

    iget-object p0, p0, Lr4/aj;->p:Lr4/td;

    invoke-interface {p1, p0, v0}, Lr4/vi;->f(Lr4/td;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lr4/aj;->r:Lr4/zi;

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/aj;->a:[Lr4/wi;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lr4/wi;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b(Lr4/ui;)V
    .locals 3

    check-cast p1, Lr4/xi;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lr4/aj;->a:[Lr4/wi;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v2, p1, Lr4/xi;->a:[Lr4/ui;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lr4/wi;->b(Lr4/ui;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lr4/yc;ZLr4/vi;)V
    .locals 2

    iput-object p3, p0, Lr4/aj;->k:Lr4/vi;

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lr4/aj;->a:[Lr4/wi;

    array-length v1, v0

    if-ge p3, v1, :cond_0

    aget-object v0, v0, p3

    new-instance v1, Lr4/yi;

    invoke-direct {v1, p0, p3}, Lr4/yi;-><init>(Lr4/aj;I)V

    invoke-interface {v0, p1, p2, v1}, Lr4/wi;->c(Lr4/yc;ZLr4/vi;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(ILr4/jk;)Lr4/ui;
    .locals 4

    iget-object v0, p0, Lr4/aj;->a:[Lr4/wi;

    array-length v0, v0

    new-array v1, v0, [Lr4/ui;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lr4/aj;->a:[Lr4/wi;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lr4/wi;->d(ILr4/jk;)Lr4/ui;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lr4/xi;

    invoke-direct {p1, v1}, Lr4/xi;-><init>([Lr4/ui;)V

    return-object p1
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lr4/aj;->a:[Lr4/wi;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lr4/wi;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
