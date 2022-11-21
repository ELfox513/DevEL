.class public final Lz4/l2;
.super Lz4/r2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz4/r2;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lz4/i2;


# direct methods
.method public constructor <init>(Lz4/i2;)V
    .locals 1

    iput-object p1, p0, Lz4/l2;->b:Lz4/i2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz4/r2;-><init>(Lz4/i2;Lz4/j2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lz4/i2;Lz4/j2;)V
    .locals 0

    invoke-direct {p0, p1}, Lz4/l2;-><init>(Lz4/i2;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lz4/k2;

    iget-object v1, p0, Lz4/l2;->b:Lz4/i2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz4/k2;-><init>(Lz4/i2;Lz4/j2;)V

    return-object v0
.end method
