.class public final Lr4/fj3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/tj3;

.field public final b:Lr4/tj3;


# direct methods
.method public constructor <init>([B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lr4/tj3;->a([BII)Lr4/tj3;

    move-result-object p1

    iput-object p1, p0, Lr4/fj3;->a:Lr4/tj3;

    array-length p1, p2

    invoke-static {p2, v1, p1}, Lr4/tj3;->a([BII)Lr4/tj3;

    move-result-object p1

    iput-object p1, p0, Lr4/fj3;->b:Lr4/tj3;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lr4/fj3;->a:Lr4/tj3;

    invoke-virtual {v0}, Lr4/tj3;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lr4/fj3;->b:Lr4/tj3;

    invoke-virtual {v0}, Lr4/tj3;->b()[B

    move-result-object v0

    return-object v0
.end method
