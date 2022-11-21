.class public final Lz4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz4/x;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lz4/q;->b:[B

    invoke-static {p1}, Lz4/x;->I([B)Lz4/x;

    move-result-object p1

    iput-object p1, p0, Lz4/q;->a:Lz4/x;

    return-void
.end method

.method public synthetic constructor <init>(ILz4/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lz4/q;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lz4/i;
    .locals 2

    iget-object v0, p0, Lz4/q;->a:Lz4/x;

    invoke-virtual {v0}, Lz4/x;->Y()V

    new-instance v0, Lz4/s;

    iget-object v1, p0, Lz4/q;->b:[B

    invoke-direct {v0, v1}, Lz4/s;-><init>([B)V

    return-object v0
.end method

.method public final b()Lz4/x;
    .locals 1

    iget-object v0, p0, Lz4/q;->a:Lz4/x;

    return-object v0
.end method
