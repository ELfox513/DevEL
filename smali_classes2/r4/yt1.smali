.class public final Lr4/yt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/xt1;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(JLandroid/content/Context;Lr4/qt1;Lr4/bu0;Ljava/lang/String;)Lr4/xt1;
    .locals 8

    new-instance v7, Lr4/xt1;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lr4/xt1;-><init>(JLandroid/content/Context;Lr4/qt1;Lr4/bu0;Ljava/lang/String;)V

    return-object v7
.end method
