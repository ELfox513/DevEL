.class public abstract Lz4/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lz4/u;->a:I

    const v0, 0x7fffffff

    iput v0, p0, Lz4/u;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz4/u;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lz4/v;)V
    .locals 0

    invoke-direct {p0}, Lz4/u;-><init>()V

    return-void
.end method

.method public static a([BIIZ)Lz4/u;
    .locals 6

    new-instance p1, Lz4/w;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lz4/w;-><init>([BIIZLz4/v;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lz4/u;->c(I)I
    :try_end_0
    .catch Lz4/r0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c(I)I
.end method
