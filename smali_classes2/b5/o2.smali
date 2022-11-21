.class public final Lb5/o2;
.super Lb5/k1;
.source "SourceFile"


# instance fields
.field public final a:Lg5/d6;


# direct methods
.method public constructor <init>(Lg5/d6;)V
    .locals 0

    invoke-direct {p0}, Lb5/k1;-><init>()V

    iput-object p1, p0, Lb5/o2;->a:Lg5/d6;

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    iget-object v0, p0, Lb5/o2;->a:Lg5/d6;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final e1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lb5/o2;->a:Lg5/d6;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lg5/d6;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
