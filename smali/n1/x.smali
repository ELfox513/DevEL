.class public Ln1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/x$a;
    }
.end annotation


# instance fields
.field public final a:Ln1/q;

.field public final b:Ln1/i;

.field public c:Ln1/j;

.field public final d:Ln1/n;

.field public final e:Ln1/x$a;

.field public final f:Lcom/android/dx/dex/DexOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ln1/q;Ln1/j;Lcom/android/dx/dex/DexOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iput-object p1, p0, Ln1/x;->a:Ln1/q;

    invoke-virtual {p2}, Ln1/j;->g()Ln1/i;

    move-result-object p1

    iput-object p1, p0, Ln1/x;->b:Ln1/i;

    iput-object p2, p0, Ln1/x;->c:Ln1/j;

    invoke-virtual {p2}, Ln1/j;->h()Ln1/n;

    move-result-object p1

    iput-object p1, p0, Ln1/x;->d:Ln1/n;

    new-instance p1, Ln1/x$a;

    invoke-direct {p1, p0}, Ln1/x$a;-><init>(Ln1/x;)V

    iput-object p1, p0, Ln1/x;->e:Ln1/x$a;

    iput-object p3, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    invoke-virtual {p2}, Ln1/j;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ln1/x;->k(Ln1/j;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dexOptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "machine == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Ln1/x;)Ln1/q;
    .locals 0

    iget-object p0, p0, Ln1/x;->a:Ln1/q;

    return-object p0
.end method

.method public static synthetic b()Ln1/w;
    .locals 1

    invoke-static {}, Ln1/x;->p()Ln1/w;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ln1/x;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln1/x;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Ly1/c;Ly1/c;)Ly1/c;
    .locals 0

    invoke-static {p0, p1}, Ln1/x;->q(Ly1/c;Ly1/c;)Ly1/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ln1/x;)Ln1/n;
    .locals 0

    iget-object p0, p0, Ln1/x;->d:Ln1/n;

    return-object p0
.end method

.method public static synthetic f(Ln1/x;ILx1/z;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln1/x;->m(ILx1/z;)V

    return-void
.end method

.method public static synthetic g(Ln1/x;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ln1/x;->n(I)V

    return-void
.end method

.method public static synthetic h(Ln1/x;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ln1/x;->l(I)V

    return-void
.end method

.method public static synthetic i(Ln1/x;Lx1/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln1/x;->j(Lx1/a;)V

    return-void
.end method

.method public static p()Ln1/w;
    .locals 2

    new-instance v0, Ln1/w;

    const-string v1, "stack mismatch: illegal top-of-stack for opcode"

    invoke-direct {v0, v1}, Ln1/w;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static q(Ly1/c;Ly1/c;)Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->C:Ly1/c;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ly1/c;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly1/c;->j()Ly1/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Ly1/c;->K:Ly1/c;

    if-ne p0, v0, :cond_2

    invoke-virtual {p1}, Ly1/c;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ly1/c;->x()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    sget-object v0, Ly1/c;->u:Ly1/c;

    if-ne p0, v0, :cond_3

    sget-object v0, Ly1/c;->X:Ly1/c;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Ly1/c;->j()Ly1/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final j(Lx1/a;)V
    .locals 3

    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lx1/a;->j()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "invalid constant type %s requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final k(Ln1/j;)V
    .locals 4

    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ln1/j;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "static"

    goto :goto_0

    :cond_0
    const-string v3, "default"

    :goto_0
    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget v2, v2, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Ln1/j;->c()Lx1/e0;

    move-result-object v2

    invoke-virtual {v2}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Ln1/j;->d()Lx1/a0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "defining a %s interface method requires --min-sdk-version >= %d (currently %d) for interface methods: %s.%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->s(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final l(I)V
    .locals 3

    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object v1, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "invalid opcode %02x - invokedynamic requires --min-sdk-version >= %d (currently %d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m(ILx1/z;)V
    .locals 8

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget-boolean v2, v0, Lcom/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    const/16 v3, 0xb8

    if-ne p1, v3, :cond_2

    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    and-int/2addr v2, v0

    :cond_2
    if-ne p1, v3, :cond_3

    const-string p1, "static"

    goto :goto_0

    :cond_3
    const-string p1, "default"

    :goto_0
    const/4 v0, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eqz v2, :cond_4

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {p2}, Lx1/x;->n()Lx1/e0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {p2}, Lx1/x;->u()Lx1/a0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget p1, p1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (experimental at current API level %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->s(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {p2}, Lx1/x;->n()Lx1/e0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {p2}, Lx1/x;->u()Lx1/a0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget p1, p1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "invoking a %s interface method %s.%s strictly requires --min-sdk-version >= %d (blocked at current API level %d)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->o(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final n(I)V
    .locals 2

    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget v1, v1, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "invoking a signature-polymorphic requires --min-sdk-version >= %d (currently %d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported signature polymorphic invocation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ln1/h;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/x;->o(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ln1/x;->c:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->c()Lx1/e0;

    move-result-object v1

    invoke-virtual {v1}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ln1/x;->c:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->d()Lx1/a0;

    move-result-object v1

    invoke-virtual {v1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "ERROR in %s.%s: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ln1/w;

    invoke-direct {v0, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Ln1/e;Ln1/l;)V
    .locals 3

    invoke-virtual {p1}, Ln1/e;->c()I

    move-result v0

    iget-object v1, p0, Ln1/x;->e:Ln1/x$a;

    invoke-virtual {v1, p2}, Ln1/x$a;->k(Ln1/l;)V

    :try_start_0
    invoke-virtual {p1}, Ln1/e;->d()I

    move-result p1

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Ln1/x;->b:Ln1/i;

    iget-object v2, p0, Ln1/x;->e:Ln1/x$a;

    invoke-virtual {v1, p1, v2}, Ln1/i;->d(ILn1/i$c;)I

    move-result v1

    iget-object v2, p0, Ln1/x;->e:Ln1/x$a;

    invoke-virtual {v2, p1}, Ln1/x$a;->f(I)V
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p2, p1}, Ln1/l;->b(Ll1/d;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Ln1/x;->c:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->c()Lx1/e0;

    move-result-object v1

    invoke-virtual {v1}, Lx1/e0;->toHuman()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ln1/x;->c:Ln1/j;

    invoke-virtual {v1}, Ln1/j;->d()Lx1/a0;

    move-result-object v1

    invoke-virtual {v1}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "WARNING in %s.%s: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ln1/x;->f:Lcom/android/dx/dex/DexOptions;

    iget-object v0, v0, Lcom/android/dx/dex/DexOptions;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
