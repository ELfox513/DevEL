.class public final Lu1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lu1/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lk1/f;

.field public final b:Lu1/c;

.field public final c:Lk1/d;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/e$a;

    invoke-direct {v0}, Lu1/e$a;-><init>()V

    sput-object v0, Lu1/e;->e:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lk1/f;Lu1/c;Lk1/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lu1/e;->d:I

    iput-object p1, p0, Lu1/e;->a:Lk1/f;

    iput-object p2, p0, Lu1/e;->b:Lu1/c;

    iput-object p3, p0, Lu1/e;->c:Lk1/d;

    return-void
.end method

.method public static synthetic a(Lu1/e;)I
    .locals 0

    iget p0, p0, Lu1/e;->d:I

    return p0
.end method


# virtual methods
.method public b()Lk1/d;
    .locals 1

    iget-object v0, p0, Lu1/e;->c:Lk1/d;

    return-object v0
.end method

.method public c()Lk1/f;
    .locals 1

    iget-object v0, p0, Lu1/e;->a:Lk1/f;

    return-object v0
.end method

.method public d()Lu1/c;
    .locals 1

    iget-object v0, p0, Lu1/e;->b:Lu1/c;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v0}, Lk1/d;->j()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lu1/e;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g([Lu1/e;)Z
    .locals 8

    iget-object v0, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v0}, Lk1/d;->i()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v0}, Lk1/d;->i()I

    move-result v0

    iget-object v4, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v4}, Lk1/d;->j()I

    move-result v4

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v0}, Lk1/d;->i()I

    move-result v0

    aget-object v0, p1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, v0, Lu1/e;->d:I

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    :goto_0
    iget-object v4, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v4}, Lk1/d;->d()[S

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    aget-short v7, v4, v6

    aget-object v7, p1, v7

    if-nez v7, :cond_3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v7, v7, Lu1/e;->d:I

    if-ne v7, v1, :cond_4

    return v2

    :cond_4
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    iput v0, p0, Lu1/e;->d:I

    return v3

    :cond_6
    new-instance p1, Lk1/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class with type index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu1/e;->c:Lk1/d;

    invoke-virtual {v1}, Lk1/d;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extends itself"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk1/g;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
