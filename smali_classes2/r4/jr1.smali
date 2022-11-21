.class public final Lr4/jr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/sr1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr4/jr1;
    .locals 1

    invoke-static {}, Lr4/ir1;->a()Lr4/jr1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lr4/sr1;

    const/16 v1, 0xd

    const/16 v2, 0xe

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lr4/sr1;-><init>(III)V

    return-object v0
.end method
