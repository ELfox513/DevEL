.class public abstract Lr4/dr3;
.super Lr4/br3;
.source "SourceFile"


# instance fields
.field public v:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    const-string p1, "mvhd"

    invoke-direct {p0, p1}, Lr4/br3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 1

    iget-boolean v0, p0, Lr4/br3;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr4/br3;->f()V

    :cond_0
    iget v0, p0, Lr4/dr3;->v:I

    return v0
.end method

.method public final h(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lr4/da4;->c(B)I

    move-result v0

    iput v0, p0, Lr4/dr3;->v:I

    invoke-static {p1}, Lr4/da4;->b(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v0, 0x4

    return-wide v0
.end method
