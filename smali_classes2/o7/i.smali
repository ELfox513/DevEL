.class public abstract Lo7/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/i$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lo7/j;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lo7/i;->b:I

    const v0, 0x7fffffff

    iput v0, p0, Lo7/i;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo7/i;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lo7/i$a;)V
    .locals 0

    invoke-direct {p0}, Lo7/i;-><init>()V

    return-void
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static c(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static f([B)Lo7/i;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo7/i;->g([BII)Lo7/i;

    move-result-object p0

    return-object p0
.end method

.method public static g([BII)Lo7/i;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lo7/i;->h([BIIZ)Lo7/i;

    move-result-object p0

    return-object p0
.end method

.method public static h([BIIZ)Lo7/i;
    .locals 7

    new-instance v6, Lo7/i$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lo7/i$b;-><init>([BIIZLo7/i$a;)V

    :try_start_0
    invoke-virtual {v6, p2}, Lo7/i$b;->j(I)I
    :try_end_0
    .catch Lo7/c0; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract A()I
.end method

.method public abstract B()J
.end method

.method public abstract C(I)Z
.end method

.method public abstract a(I)V
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
.end method

.method public abstract i(I)V
.end method

.method public abstract j(I)I
.end method

.method public abstract k()Z
.end method

.method public abstract l()Lo7/h;
.end method

.method public abstract m()D
.end method

.method public abstract n()I
.end method

.method public abstract o()I
.end method

.method public abstract p()J
.end method

.method public abstract q()F
.end method

.method public abstract r()I
.end method

.method public abstract s()J
.end method

.method public abstract t()I
.end method

.method public abstract u()J
.end method

.method public abstract v()I
.end method

.method public abstract w()J
.end method

.method public abstract x()Ljava/lang/String;
.end method

.method public abstract y()Ljava/lang/String;
.end method

.method public abstract z()I
.end method
