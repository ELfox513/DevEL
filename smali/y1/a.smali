.class public final Ly1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ly1/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final p:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ly1/c;

.field public final d:Ly1/b;

.field public k:Ly1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Ly1/a;->p:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ly1/c;Ly1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Ly1/a;->a:Ljava/lang/String;

    iput-object p2, p0, Ly1/a;->b:Ly1/c;

    iput-object p3, p0, Ly1/a;->d:Ly1/b;

    const/4 p1, 0x0

    iput-object p1, p0, Ly1/a;->k:Ly1/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "parameterTypes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "returnType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c()V
    .locals 1

    sget-object v0, Ly1/a;->p:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static f(Ljava/lang/String;)Ly1/a;
    .locals 8

    sget-object v0, Ly1/a;->p:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ly1/a;->x(Ljava/lang/String;)[Ly1/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly1/c;->F(Ljava/lang/String;)Ly1/c;

    move-result-object v2

    new-instance v3, Ly1/b;

    invoke-direct {v3, v4}, Ly1/b;-><init>(I)V

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    invoke-virtual {v3, v1, v5}, Ly1/b;->I(ILy1/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ly1/a;

    invoke-direct {v0, p0, v2, v3}, Ly1/a;-><init>(Ljava/lang/String;Ly1/c;Ly1/b;)V

    return-object v0

    :cond_2
    move v6, v3

    :goto_2
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_3
    const/16 v7, 0x4c

    if-ne v5, v7, :cond_5

    const/16 v5, 0x3b

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad descriptor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    add-int/lit8 v5, v6, 0x1

    :goto_3
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Ly1/a;
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Ly1/a;->p:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ly1/a;->f(Ljava/lang/String;)Ly1/a;

    move-result-object p0

    invoke-static {p0}, Ly1/a;->z(Ly1/a;)Ly1/a;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ljava/lang/String;Ly1/c;ZZ)Ly1/a;
    .locals 0

    invoke-static {p0}, Ly1/a;->p(Ljava/lang/String;)Ly1/a;

    move-result-object p0

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ly1/c;->c(I)Ly1/c;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Ly1/a;->A(Ly1/c;)Ly1/a;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ly1/c;I)Ly1/a;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly1/c;->z()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly1/a;->p(Ljava/lang/String;)Ly1/a;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/String;)[Ly1/c;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "bad descriptor"

    const/16 v4, 0x28

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x29

    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    const/16 v6, 0x41

    if-lt v7, v6, :cond_1

    const/16 v6, 0x5a

    if-gt v7, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_4

    add-int/2addr v1, v2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    new-array p0, v5, [Ly1/c;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static z(Ly1/a;)Ly1/a;
    .locals 2

    sget-object v0, Ly1/a;->p:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ly1/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public A(Ly1/c;)Ly1/a;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly1/c;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly1/a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ly1/a;->d:Ly1/b;

    invoke-virtual {v1, p1}, Ly1/b;->K(Ly1/c;)Ly1/b;

    move-result-object p1

    invoke-virtual {p1}, Lb2/o;->setImmutable()V

    new-instance v1, Ly1/a;

    iget-object v2, p0, Ly1/a;->b:Ly1/c;

    invoke-direct {v1, v0, v2, p1}, Ly1/a;-><init>(Ljava/lang/String;Ly1/c;Ly1/b;)V

    invoke-static {v1}, Ly1/a;->z(Ly1/a;)Ly1/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ly1/a;

    invoke-virtual {p0, p1}, Ly1/a;->d(Ly1/a;)I

    move-result p1

    return p1
.end method

.method public d(Ly1/a;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Ly1/a;->b:Ly1/c;

    iget-object v2, p1, Ly1/a;->b:Ly1/c;

    invoke-virtual {v1, v2}, Ly1/c;->h(Ly1/c;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Ly1/a;->d:Ly1/b;

    invoke-virtual {v1}, Lb2/f;->size()I

    move-result v1

    iget-object v2, p1, Ly1/a;->d:Ly1/b;

    invoke-virtual {v2}, Lb2/f;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p0, Ly1/a;->d:Ly1/b;

    invoke-virtual {v5, v4}, Ly1/b;->A(I)Ly1/c;

    move-result-object v5

    iget-object v6, p1, Ly1/a;->d:Ly1/b;

    invoke-virtual {v6, v4}, Ly1/b;->A(I)Ly1/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Ly1/c;->h(Ly1/c;)I

    move-result v5

    if-eqz v5, :cond_2

    return v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ge v1, v2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    if-le v1, v2, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ly1/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Ly1/a;->a:Ljava/lang/String;

    check-cast p1, Ly1/a;

    iget-object p1, p1, Ly1/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly1/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ly1/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ly1/b;
    .locals 6

    iget-object v0, p0, Ly1/a;->k:Ly1/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Ly1/a;->d:Ly1/b;

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ly1/b;

    invoke-direct {v1, v0}, Ly1/b;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Ly1/a;->d:Ly1/b;

    invoke-virtual {v4, v2}, Ly1/b;->A(I)Ly1/c;

    move-result-object v4

    invoke-virtual {v4}, Ly1/c;->L()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v4, Ly1/c;->y:Ly1/c;

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v1, v2, v4}, Ly1/b;->I(ILy1/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ly1/a;->d:Ly1/b;

    :goto_1
    iput-object v1, p0, Ly1/a;->k:Ly1/b;

    :cond_3
    iget-object v0, p0, Ly1/a;->k:Ly1/b;

    return-object v0
.end method

.method public l()Ly1/b;
    .locals 1

    iget-object v0, p0, Ly1/a;->d:Ly1/b;

    return-object v0
.end method

.method public n()Ly1/c;
    .locals 1

    iget-object v0, p0, Ly1/a;->b:Ly1/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly1/a;->a:Ljava/lang/String;

    return-object v0
.end method
