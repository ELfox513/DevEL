.class public final Lr4/na3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/c93;


# instance fields
.field public final a:Lr4/aa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/aa3<",
            "Lr4/c93;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lr4/aa3;Lr4/ma3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/aa3<",
            "Lr4/c93;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/na3;->a:Lr4/aa3;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lr4/na3;->a:Lr4/aa3;

    invoke-virtual {v1}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v1

    invoke-virtual {v1}, Lr4/x93;->b()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/na3;->a:Lr4/aa3;

    invoke-virtual {v1}, Lr4/aa3;->a()Lr4/x93;

    move-result-object v1

    invoke-virtual {v1}, Lr4/x93;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/c93;

    invoke-interface {v1, p1, p2}, Lr4/c93;->a([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lr4/wi3;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
