.class public abstract Lj2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lj2/g;
    .locals 4

    new-instance v0, Lj2/b;

    sget-object v1, Lj2/g$a;->d:Lj2/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lj2/b;-><init>(Lj2/g$a;J)V

    return-object v0
.end method

.method public static d(J)Lj2/g;
    .locals 2

    new-instance v0, Lj2/b;

    sget-object v1, Lj2/g$a;->a:Lj2/g$a;

    invoke-direct {v0, v1, p0, p1}, Lj2/b;-><init>(Lj2/g$a;J)V

    return-object v0
.end method

.method public static e()Lj2/g;
    .locals 4

    new-instance v0, Lj2/b;

    sget-object v1, Lj2/g$a;->b:Lj2/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lj2/b;-><init>(Lj2/g$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lj2/g$a;
.end method
