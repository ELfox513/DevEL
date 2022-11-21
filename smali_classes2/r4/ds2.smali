.class public final Lr4/ds2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/i83;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr4/ds2;
    .locals 1

    invoke-static {}, Lr4/cs2;->a()Lr4/ds2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lr4/a03;->a()Lr4/xz2;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lr4/xz2;->x(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lr4/o83;->b(Ljava/util/concurrent/ExecutorService;)Lr4/i83;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
