.class public final Lw1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/d;
.implements Lb2/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly1/d;",
        "Lb2/r;",
        "Ljava/lang/Comparable<",
        "Lw1/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Lw1/q;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lw1/q$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ly1/d;

.field public final d:Lw1/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lw1/q;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lw1/q$a;

    invoke-direct {v0}, Lw1/q$a;-><init>()V

    sput-object v0, Lw1/q;->p:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(ILy1/d;Lw1/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lw1/q;->a:I

    iput-object p2, p0, Lw1/q;->b:Ly1/d;

    iput-object p3, p0, Lw1/q;->d:Lw1/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILy1/d;Lw1/k;Lw1/q$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw1/q;-><init>(ILy1/d;Lw1/k;)V

    return-void
.end method

.method public static D(ILy1/d;Lw1/k;)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lw1/k;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p2, p0

    return p2
.end method

.method public static E(ILy1/d;Lw1/k;)Lw1/q;
    .locals 1

    sget-object v0, Lw1/q;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw1/q$b;

    invoke-virtual {v0, p0, p1, p2}, Lw1/q$b;->d(ILy1/d;Lw1/k;)V

    sget-object p0, Lw1/q;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/q;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lw1/q$b;->e()Lw1/q;

    move-result-object p1

    invoke-virtual {p0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw1/q;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static J(ILy1/d;)Lw1/q;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lw1/q;->E(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p0

    return-object p0
.end method

.method public static K(ILy1/d;Lw1/k;)Lw1/q;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2}, Lw1/q;->E(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "local  == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L(ILy1/d;Lw1/k;)Lw1/q;
    .locals 0

    invoke-static {p0, p1, p2}, Lw1/q;->E(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p0

    return-object p0
.end method

.method public static O(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lw1/q;ILy1/d;Lw1/k;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lw1/q;->n(ILy1/d;Lw1/k;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(ILy1/d;Lw1/k;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lw1/q;->D(ILy1/d;Lw1/k;)I

    move-result p0

    return p0
.end method

.method public static h()V
    .locals 1

    sget-object v0, Lw1/q;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Lw1/q;->a:I

    invoke-virtual {p0}, Lw1/q;->x()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lw1/q;->a:I

    return v0
.end method

.method public C()Ly1/d;
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    return-object v0
.end method

.method public F(Lw1/q;Z)Lw1/q;
    .locals 4

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget v1, p0, Lw1/q;->a:I

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lw1/q;->z()Lw1/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lw1/q;->d:Lw1/k;

    if-ne v1, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz p2, :cond_5

    if-nez v2, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lw1/q;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object v3

    if-eq p2, v3, :cond_6

    return-object v0

    :cond_6
    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-virtual {p1}, Lw1/q;->C()Ly1/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p2, p0, Lw1/q;->b:Ly1/d;

    :cond_7
    iget-object p1, p0, Lw1/q;->b:Ly1/d;

    if-ne p2, p1, :cond_8

    if-eqz v2, :cond_8

    return-object p0

    :cond_8
    iget p1, p0, Lw1/q;->a:I

    if-nez v1, :cond_9

    invoke-static {p1, p2}, Lw1/q;->J(ILy1/d;)Lw1/q;

    move-result-object p1

    goto :goto_3

    :cond_9
    invoke-static {p1, p2, v1}, Lw1/q;->K(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_a
    :goto_4
    return-object v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v0}, Ly1/d;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->K()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 2

    invoke-virtual {p0}, Lw1/q;->B()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public M(Lw1/q;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v1}, Ly1/d;->getType()Ly1/c;

    move-result-object v1

    iget-object v2, p1, Lw1/q;->b:Ly1/d;

    invoke-interface {v2}, Ly1/d;->getType()Ly1/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly1/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    iget-object p1, p1, Lw1/q;->d:Lw1/k;

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lw1/q;->a:I

    invoke-static {v0}, Lw1/q;->O(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lw1/q;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lw1/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v1}, Ly1/d;->getType()Ly1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw1/q;->b:Ly1/d;

    if-eq v1, v2, :cond_3

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lw1/q;->b:Ly1/d;

    instance-of v2, v1, Lx1/d0;

    if-eqz v2, :cond_1

    check-cast v1, Lx1/d0;

    invoke-virtual {v1}, Lx1/d0;->C()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lw1/q;->b:Ly1/d;

    instance-of v1, p1, Lx1/a;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lw1/q;->b:Ly1/d;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Q(Lw1/k;)Lw1/q;
    .locals 2

    iget-object v0, p0, Lw1/q;->d:Lw1/k;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lw1/q;->a:I

    iget-object v1, p0, Lw1/q;->b:Ly1/d;

    invoke-static {v0, v1, p1}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public R(I)Lw1/q;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lw1/q;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lw1/q;->S(I)Lw1/q;

    move-result-object p1

    return-object p1
.end method

.method public S(I)Lw1/q;
    .locals 2

    iget v0, p0, Lw1/q;->a:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    invoke-static {p1, v0, v1}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    return-object p1
.end method

.method public T()Lw1/q;
    .locals 3

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    instance-of v1, v0, Ly1/c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ly1/c;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ly1/d;->getType()Ly1/c;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ly1/c;->O()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ly1/c;->B()Ly1/c;

    move-result-object v1

    :cond_1
    if-ne v1, v0, :cond_2

    return-object p0

    :cond_2
    iget v0, p0, Lw1/q;->a:I

    iget-object v2, p0, Lw1/q;->d:Lw1/k;

    invoke-static {v0, v1, v2}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object v0

    return-object v0
.end method

.method public U(Ly1/d;)Lw1/q;
    .locals 2

    iget v0, p0, Lw1/q;->a:I

    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    invoke-static {v0, p1, v1}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lw1/q;

    invoke-virtual {p0, p1}, Lw1/q;->j(Lw1/q;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lw1/q;

    if-nez v0, :cond_2

    instance-of v0, p1, Lw1/q$b;

    if-eqz v0, :cond_1

    check-cast p1, Lw1/q$b;

    invoke-static {p1}, Lw1/q$b;->a(Lw1/q$b;)I

    move-result v0

    invoke-static {p1}, Lw1/q$b;->b(Lw1/q$b;)Ly1/d;

    move-result-object v1

    invoke-static {p1}, Lw1/q$b;->c(Lw1/q$b;)Lw1/k;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lw1/q;->n(ILy1/d;Lw1/k;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    check-cast p1, Lw1/q;

    iget v0, p1, Lw1/q;->a:I

    iget-object v1, p1, Lw1/q;->b:Ly1/d;

    iget-object p1, p1, Lw1/q;->d:Lw1/k;

    invoke-virtual {p0, v0, v1, p1}, Lw1/q;->n(ILy1/d;Lw1/k;)Z

    move-result p1

    return p1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v0}, Ly1/d;->f()I

    move-result v0

    return v0
.end method

.method public getType()Ly1/c;
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v0}, Ly1/d;->getType()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lw1/q;->a:I

    iget-object v1, p0, Lw1/q;->b:Ly1/d;

    iget-object v2, p0, Lw1/q;->d:Lw1/k;

    invoke-static {v0, v1, v2}, Lw1/q;->D(ILy1/d;Lw1/k;)I

    move-result v0

    return v0
.end method

.method public j(Lw1/q;)I
    .locals 5

    iget v0, p0, Lw1/q;->a:I

    iget v1, p1, Lw1/q;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v1}, Ly1/d;->getType()Ly1/c;

    move-result-object v1

    iget-object v4, p1, Lw1/q;->b:Ly1/d;

    invoke-interface {v4}, Ly1/d;->getType()Ly1/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ly1/c;->h(Ly1/c;)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lw1/q;->d:Lw1/k;

    if-nez v1, :cond_5

    iget-object p1, p1, Lw1/q;->d:Lw1/k;

    if-nez p1, :cond_4

    const/4 v2, 0x0

    :cond_4
    return v2

    :cond_5
    iget-object p1, p1, Lw1/q;->d:Lw1/k;

    if-nez p1, :cond_6

    return v3

    :cond_6
    invoke-virtual {v1, p1}, Lw1/k;->d(Lw1/k;)I

    move-result p1

    return p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n(ILy1/d;Lw1/k;)Z
    .locals 1

    iget v0, p0, Lw1/q;->a:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lw1/q;->b:Ly1/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lw1/q;->d:Lw1/k;

    if-eq p1, p3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v0}, Ly1/d;->p()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw1/q;->P(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw1/q;->P(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lw1/q;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lw1/q;->M(Lw1/q;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lw1/q;->a:I

    iget p1, p1, Lw1/q;->a:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public v()Ly1/d;
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v0}, Ly1/d;->v()Ly1/d;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lw1/q;->b:Ly1/d;

    invoke-interface {v0}, Ly1/d;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->n()I

    move-result v0

    return v0
.end method

.method public z()Lw1/k;
    .locals 1

    iget-object v0, p0, Lw1/q;->d:Lw1/k;

    return-object v0
.end method
