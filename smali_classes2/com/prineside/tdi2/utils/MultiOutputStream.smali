.class public Lcom/prineside/tdi2/utils/MultiOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:[Ljava/io/OutputStream;


# direct methods
.method public varargs constructor <init>([Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/utils/MultiOutputStream;->a:[Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStream;->a:[Ljava/io/OutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStream;->a:[Ljava/io/OutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStream;->a:[Ljava/io/OutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStream;->a:[Ljava/io/OutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStream;->a:[Ljava/io/OutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
