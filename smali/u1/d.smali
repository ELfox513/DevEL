.class public final Lu1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu1/d$b;,
        Lu1/d$e;,
        Lu1/d$f;,
        Lu1/d$h;,
        Lu1/d$c;,
        Lu1/d$g;,
        Lu1/d$d;
    }
.end annotation


# instance fields
.field public final a:Ls1/a;

.field public b:[Lt1/f;

.field public c:I

.field public d:Lu1/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls1/a;

    invoke-direct {v0}, Ls1/a;-><init>()V

    iput-object v0, p0, Lu1/d;->a:Ls1/a;

    new-instance v1, Lu1/d$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lu1/d$d;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->b(Ls1/a$b;)V

    new-instance v1, Lu1/d$g;

    invoke-direct {v1, p0, v2}, Lu1/d$g;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->g(Ls1/a$b;)V

    new-instance v1, Lu1/d$h;

    invoke-direct {v1, p0, v2}, Lu1/d$h;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->h(Ls1/a$b;)V

    new-instance v1, Lu1/d$c;

    invoke-direct {v1, p0, v2}, Lu1/d$c;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->d(Ls1/a$b;)V

    new-instance v1, Lu1/d$f;

    invoke-direct {v1, p0, v2}, Lu1/d$f;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->f(Ls1/a$b;)V

    new-instance v1, Lu1/d$e;

    invoke-direct {v1, p0, v2}, Lu1/d$e;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->e(Ls1/a$b;)V

    new-instance v1, Lu1/d$b;

    invoke-direct {v1, p0, v2}, Lu1/d$b;-><init>(Lu1/d;Lu1/d$a;)V

    invoke-virtual {v0, v1}, Ls1/a;->c(Ls1/a$b;)V

    return-void
.end method

.method public static synthetic a(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lu1/d;->e(ZI)V

    return-void
.end method

.method public static synthetic b(Lu1/d;)[Lt1/f;
    .locals 0

    iget-object p0, p0, Lu1/d;->b:[Lt1/f;

    return-object p0
.end method

.method public static synthetic c(Lu1/d;)I
    .locals 2

    iget v0, p0, Lu1/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lu1/d;->c:I

    return v0
.end method

.method public static synthetic d(Lu1/d;)Lu1/c;
    .locals 0

    iget-object p0, p0, Lu1/d;->d:Lu1/c;

    return-object p0
.end method

.method public static e(ZI)V
    .locals 2

    if-nez p0, :cond_1

    const p0, 0xffff

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lk1/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot merge new index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " into a non-jumbo instruction!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lk1/i;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public f(Lu1/c;[S)[S
    .locals 3

    invoke-static {p2}, Lt1/f;->b([S)[Lt1/f;

    move-result-object p2

    array-length v0, p2

    iput-object p1, p0, Lu1/d;->d:Lu1/c;

    new-array p1, v0, [Lt1/f;

    iput-object p1, p0, Lu1/d;->b:[Lt1/f;

    const/4 p1, 0x0

    iput p1, p0, Lu1/d;->c:I

    iget-object v1, p0, Lu1/d;->a:Ls1/a;

    invoke-virtual {v1, p2}, Ls1/a;->i([Lt1/f;)V

    new-instance p2, Lt1/q;

    invoke-direct {p2, v0}, Lt1/q;-><init>(I)V

    iget-object v0, p0, Lu1/d;->b:[Lt1/f;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lt1/f;->c(Lt1/e;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lu1/d;->d:Lu1/c;

    invoke-virtual {p2}, Lt1/q;->m()[S

    move-result-object p1

    return-object p1
.end method
