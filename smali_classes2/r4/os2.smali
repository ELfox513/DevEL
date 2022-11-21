.class public final Lr4/os2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Ljava/util/concurrent/ThreadFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr4/os2;
    .locals 1

    invoke-static {}, Lr4/ns2;->a()Lr4/os2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lr4/yr2;

    invoke-direct {v0}, Lr4/yr2;-><init>()V

    return-object v0
.end method
