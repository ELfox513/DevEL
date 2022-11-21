.class public abstract Lr4/jx2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lr4/ix2;
    .locals 2

    new-instance v0, Lr4/lx2;

    invoke-direct {v0}, Lr4/lx2;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/lx2;->b(Z)Lr4/ix2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/ix2;->c(Z)Lr4/ix2;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method
