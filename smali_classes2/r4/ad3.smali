.class public final Lr4/ad3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u93;


# instance fields
.field public final a:Lr4/aa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/aa3<",
            "Lr4/u93;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B


# direct methods
.method public synthetic constructor <init>(Lr4/aa3;Lr4/yc3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/aa3<",
            "Lr4/u93;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [B

    const/4 v0, 0x0

    aput-byte v0, p2, v0

    iput-object p2, p0, Lr4/ad3;->b:[B

    iput-object p1, p0, Lr4/ad3;->a:Lr4/aa3;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 5

    iget-object v0, p0, Lr4/ad3;->a:Lr4/aa3;

    invoke-virtual {v0}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v0

    invoke-virtual {v0}, Lr4/x93;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    new-array v0, v3, [[B

    iget-object v4, p0, Lr4/ad3;->a:Lr4/aa3;

    invoke-virtual {v4}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v4

    invoke-virtual {v4}, Lr4/x93;->b()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lr4/ad3;->a:Lr4/aa3;

    invoke-virtual {v4}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v4

    invoke-virtual {v4}, Lr4/x93;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/u93;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lr4/ad3;->b:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lr4/wi3;->a([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lr4/u93;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lr4/wi3;->a([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v3, [[B

    iget-object v3, p0, Lr4/ad3;->a:Lr4/aa3;

    invoke-virtual {v3}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v3

    invoke-virtual {v3}, Lr4/x93;->b()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lr4/ad3;->a:Lr4/aa3;

    invoke-virtual {v2}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v2

    invoke-virtual {v2}, Lr4/x93;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/u93;

    invoke-interface {v2, p1}, Lr4/u93;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lr4/wi3;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
