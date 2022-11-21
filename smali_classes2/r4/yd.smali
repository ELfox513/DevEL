.class public interface abstract Lr4/yd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lr4/yd;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()I
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract d()V
.end method

.method public abstract e()I
.end method

.method public abstract f()Z
.end method

.method public abstract g()Ljava/nio/ByteBuffer;
.end method

.method public abstract h()V
.end method

.method public abstract i(III)Z
.end method

.method public abstract j()V
.end method
