.class public abstract Lz5/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz5/c0$b;,
        Lz5/c0$c;,
        Lz5/c0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lz5/c0$a;Lz5/c0$c;Lz5/c0$b;)Lz5/c0;
    .locals 1

    new-instance v0, Lz5/w;

    invoke-direct {v0, p0, p1, p2}, Lz5/w;-><init>(Lz5/c0$a;Lz5/c0$c;Lz5/c0$b;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lz5/c0$a;
.end method

.method public abstract c()Lz5/c0$b;
.end method

.method public abstract d()Lz5/c0$c;
.end method
