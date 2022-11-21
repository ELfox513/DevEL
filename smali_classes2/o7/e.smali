.class public abstract Lo7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/g1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo7/e$a;)V
    .locals 0

    invoke-direct {p0}, Lo7/e;-><init>()V

    return-void
.end method

.method public static Q(Ljava/nio/ByteBuffer;Z)Lo7/e;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lo7/e$b;

    invoke-direct {v0, p0, p1}, Lo7/e$b;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
